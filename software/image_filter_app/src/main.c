#include "xparameters.h"

#include <xil_io.h>
#include <xil_printf.h>
#include <xstatus.h>
#include <stdlib.h>

#include "xaxidma.h"
#include "xinterrupt_wrap.h"
#include "xtmrctr.h"

#include <xil_cache.h>
#include "xil_util.h"

/* ---------------------------------------------------------------
 * AXI4-Lite register offsets
 * ADDR_LSB=2 → byte address = word address * 4
 * WA_CTRL=0        → 0x00
 * WA_RADIUS=1      → 0x04
 * WA_IMG_W=2       → 0x08
 * WA_IMG_H=3       → 0x0C
 * WA_COEFF_SCALE=4 → 0x10
 * WA_COEFF_BASE=8  → 0x20, stride=4
 * WA_COEFF_LAST=88 → 0x20 + 80*4 = 0x160
 * --------------------------------------------------------------- */
#define REG_CTRL_ADDR         0x00
#define REG_RADIUS_ADDR       0x04
#define REG_IMG_W_ADDR        0x08
#define REG_IMG_H_ADDR        0x0C
#define REG_COEFF_SCALE_ADDR  0x10
#define REG_COEFF_BASE_ADDR   0x20   /* stride=4 per coefficient */

#define CTRL_MODE_Q9_7        0x0001
#define COEFF_SCALE_1_0       4096

#define FILTER_RADIUS         4
#define FILTER_SIDE           (2*FILTER_RADIUS + 1)
#define NUM_COEFFS            (FILTER_SIDE*FILTER_SIDE)

#define IMG_WIDTH             512
#define IMG_HEIGHT            512
#define OUT_WIDTH             (IMG_WIDTH  - 2*FILTER_RADIUS)
#define OUT_HEIGHT            (IMG_HEIGHT - 2*FILTER_RADIUS)

#define DMA_TRANSFER_TIMEOUT  100000

#define TMR_COUNTER_0         0
#define TMR_FREQ_HZ           100000000ULL

/* ---------------------------------------------------------------
 * Structs
 * --------------------------------------------------------------- */
typedef struct ImageShape {
    u16 Width;
    u16 Height;
} ImageShape;

typedef struct FilterParams {
    ImageShape Img;
    u8         Radius;
    u16        Mode;
    u16        CoeffScale;
} FilterParams;

/* ---------------------------------------------------------------
 * LoG kernel (sigma=1, radius=4), Q1.15 format
 * --------------------------------------------------------------- */
static const s16 LogCoeffs[NUM_COEFFS] = {
    /*  Row 0 */
       0,   0,   1,   1,   1,   1,   1,   0,   0,
    /*  Row 1 */
       0,   1,   3,   4,   4,   4,   3,   1,   0,
    /*  Row 2 */
       1,   3,   5,   3,   0,   3,   5,   3,   1,
    /*  Row 3 */
       1,   4,   3, -10, -21, -10,   3,   4,   1,
    /*  Row 4 */
       1,   4,   0, -21, -40, -21,   0,   4,   1,
    /*  Row 5 */
       1,   4,   3, -10, -21, -10,   3,   4,   1,
    /*  Row 6 */
       1,   3,   5,   3,   0,   3,   5,   3,   1,
    /*  Row 7 */
       0,   1,   3,   4,   4,   4,   3,   1,   0,
    /*  Row 8 */
       0,   0,   1,   1,   1,   1,   1,   0,   0
};

/* ---------------------------------------------------------------
 * Function prototypes
 * --------------------------------------------------------------- */
static int  DmaConfigure     (XAxiDma_Config *AxiDmaConfigPtr, XAxiDma *AxiDmaPtr);
static int  DmaStartTransfers(XAxiDma *AxiDmaPtr,
                               u8 *TxBuffer, u32 TxSize,
                               u8 *RxBuffer, u32 RxSize);
static int  DmaWaitTransfers (volatile u32 *TxFlag, volatile u32 *RxFlag, u32 Timeout);

static int  AccConfigure     (UINTPTR BaseAddress, FilterParams Params);

static void ImageFilterSW    (u8 *DataBuffer, s16 *ResultBuffer, FilterParams Params);
static int  ImageFilterHW    (u8 *DataBuffer, s16 *ResultBuffer, FilterParams Params);

static int  CheckData        (s16 *ResultBuffer, s16 *ReferentBuffer, FilterParams Params);

static void TxIntrHandler    (void *Callback);
static void RxIntrHandler    (void *Callback);

/* ---------------------------------------------------------------
 * Globals
 * --------------------------------------------------------------- */
static XAxiDma  AxiDma;
static XTmrCtr  AxiTimer;

volatile u32 TxDone;
volatile u32 RxDone;

/* ==============================================================
 * main
 * ============================================================== */
int main(void)
{
    int Status;

    u8  *DataBuffer;
    s16 *ReferentBuffer;
    s16 *ResultBuffer;

    FilterParams Params;

    u32 InSize;
    u32 OutSize;

    u32 SwTimeStart, SwTimeEnd, SwTimeUs;
    u32 HwTimeStart, HwTimeEnd, HwTimeUs;

    xil_printf("\r\n--- Entering main() ---\r\n");

    /* Define processing parameters */
    Params.Img.Width  = IMG_WIDTH;
    Params.Img.Height = IMG_HEIGHT;
    Params.Radius     = FILTER_RADIUS;
    Params.Mode       = CTRL_MODE_Q9_7;
    Params.CoeffScale = COEFF_SCALE_1_0;

    InSize  = Params.Img.Width * Params.Img.Height;
    OutSize = OUT_WIDTH * OUT_HEIGHT * sizeof(s16);

    /* Buffer allocation */
    DataBuffer = (u8*) malloc(InSize);
    if (DataBuffer == NULL) {
        xil_printf("ERROR: Cannot allocate Data buffer\r\n");
        return XST_FAILURE;
    }
    xil_printf("\r\n Data buffer address: %x \r\n", DataBuffer);

    ResultBuffer = (s16*) malloc(OutSize);
    if (ResultBuffer == NULL) {
        xil_printf("ERROR: Cannot allocate Result buffer\r\n");
        return XST_FAILURE;
    }
    xil_printf("\r\n Result buffer address: %x \r\n", ResultBuffer);

    ReferentBuffer = (s16*) malloc(OutSize);
    if (ReferentBuffer == NULL) {
        xil_printf("ERROR: Cannot allocate Referent buffer\r\n");
        return XST_FAILURE;
    }
    xil_printf("\r\n Referent buffer address: %x \r\n\n", ReferentBuffer);

    /* Fill input with ramp test pattern */
    for (u32 i = 0; i < InSize; i++)
        DataBuffer[i] = (u8)(i & 0xFF);

    /* Initialise AXI Timer */
    Status = XTmrCtr_Initialize(&AxiTimer, XPAR_XTMRCTR_0_BASEADDR);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Timer init failed\r\n");
        return XST_FAILURE;
    }
    XTmrCtr_SetOptions(&AxiTimer, TMR_COUNTER_0, XTC_AUTO_RELOAD_OPTION);
    XTmrCtr_SetResetValue(&AxiTimer, TMR_COUNTER_0, 0);
    XTmrCtr_Start(&AxiTimer, TMR_COUNTER_0);

    // Use mwr in debug console to load image into DataBuffer:
    //    mwr -size b -bin -file "path/to/image.bin"  <DataBuffer_addr>  <InSize>

    xil_printf("INFO: Filter = LoG 9x9, Radius = %d, Mode = Q9.7, Image = %dx%d\r\n",
               Params.Radius, Params.Img.Width, Params.Img.Height);

    xil_printf("\r\nStart processing\r\n");

    /* Configure accelerator */
    Status = AccConfigure(XPAR_ACC_IMAGE_FILTER_0_BASEADDR, Params);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Accelerator configuration failed\r\n");
        return XST_FAILURE;
    }

    /* Software processing - generate referent data */
    SwTimeStart = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    ImageFilterSW(DataBuffer, ReferentBuffer, Params);
    SwTimeEnd = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    SwTimeUs  = (u32)((u64)(SwTimeEnd - SwTimeStart) * 1000000ULL / TMR_FREQ_HZ);
    xil_printf("  Referent data generated  SW time = %u us\r\n", SwTimeUs);

    /* Hardware processing */
    xil_printf("  Hardware processing started\r\n");
    HwTimeStart = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    Status = ImageFilterHW(DataBuffer, ResultBuffer, Params);
    HwTimeEnd = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    HwTimeUs  = (u32)((u64)(HwTimeEnd - HwTimeStart) * 1000000ULL / TMR_FREQ_HZ);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Hardware processing failed\r\n");
        return XST_FAILURE;
    }
    xil_printf("  Hardware processing completed  HW time = %u us\r\n", HwTimeUs);

    /* Check data */
    Status = CheckData(ResultBuffer, ReferentBuffer, Params);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Data check failed\r\n");
        return XST_FAILURE;
    }
    xil_printf("Data check OK\r\n\n");

    /* Timing summary */
    xil_printf("=== Timing Summary ===\r\n");
    xil_printf("  SW time : %u us\r\n", SwTimeUs);
    xil_printf("  HW time : %u us\r\n", HwTimeUs);
    if (HwTimeUs > 0)
        xil_printf("  Speedup : %u x\r\n", SwTimeUs / HwTimeUs);

    // Use mrd in debug console to save ResultBuffer:
    //    mrd -size b -bin -file "path/to/result.bin"  <ResultBuffer_addr>  <OutSize>

    free(DataBuffer);
    free(ResultBuffer);
    free(ReferentBuffer);

    xil_printf("\r\n--- Exiting main() ---\r\n");

    return XST_SUCCESS;
}

/* ==============================================================
 * ImageFilterSW
 * ============================================================== */
static void ImageFilterSW(u8 *DataBuffer, s16 *ResultBuffer, FilterParams Params)
{
    int RowIndex, ColIndex, dr, dc;
    int R    = Params.Radius;
    int W    = Params.Img.Width;
    int H    = Params.Img.Height;
    int OutW = W - 2*R;

    for (RowIndex = R; RowIndex < H - R; RowIndex++) {
        for (ColIndex = R; ColIndex < W - R; ColIndex++) {

            s32 Acc = 0;
            int k   = 0;

            for (dr = -R; dr <= R; dr++) {
                for (dc = -R; dc <= R; dc++) {
                    u8  Pixel = DataBuffer[(RowIndex + dr) * W + (ColIndex + dc)];
                    s16 Coeff = LogCoeffs[k++];
                    Acc += (s32)Pixel * (s32)Coeff;
                }
            }

            /* (Acc * CoeffScale) >> 20 converts Q1.15 * UQ4.12 -> Q9.7 */
            s64 Scaled = (s64)Acc * (s32)Params.CoeffScale;
            s32 Result = (s32)(Scaled >> 20);

            if      (Result >  32767) Result =  32767;
            else if (Result < -32768) Result = -32768;

            ResultBuffer[(RowIndex - R) * OutW + (ColIndex - R)] = (s16)Result;
        }
    }

    return;
}

/* ==============================================================
 * ImageFilterHW
 * ============================================================== */
static int ImageFilterHW(u8 *DataBuffer, s16 *ResultBuffer, FilterParams Params)
{
    int Status;
    u32 InSize  = Params.Img.Width * Params.Img.Height;
    u32 OutSize = (u32)(Params.Img.Width  - 2*Params.Radius) *
                  (u32)(Params.Img.Height - 2*Params.Radius) * sizeof(s16);

    XAxiDma_Config *AxiDmaConfigPtr;

    AxiDmaConfigPtr = XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR);
    if (!AxiDmaConfigPtr) {
        xil_printf("  HW CONFIG ERROR: No config found for %d\r\n", XPAR_XAXIDMA_0_BASEADDR);
        return XST_FAILURE;
    }

    Status = DmaConfigure(AxiDmaConfigPtr, &AxiDma);
    if (Status != XST_SUCCESS) {
        xil_printf("  HW CONFIG ERROR: DMA configuration failed\r\n");
        return XST_FAILURE;
    }

    TxDone = 0;
    RxDone = 0;

    Status = DmaStartTransfers(&AxiDma,
                               DataBuffer,        InSize,
                               (u8*)ResultBuffer, OutSize);
    if (Status != XST_SUCCESS) {
        xil_printf("  HW CONFIG ERROR: Starting DMA transfers failed\r\n");
        return XST_FAILURE;
    }

    Status = DmaWaitTransfers(&TxDone, &RxDone, DMA_TRANSFER_TIMEOUT);
    if (Status != XST_SUCCESS) {
        xil_printf("  HW PROC ERROR: Completing DMA transfers failed\r\n");
        return XST_FAILURE;
    }

    /* Disable TX and RX interrupts */
    XDisconnectInterruptCntrl(AxiDmaConfigPtr->IntrId[0], AxiDmaConfigPtr->IntrParent);
    XDisconnectInterruptCntrl(AxiDmaConfigPtr->IntrId[1], AxiDmaConfigPtr->IntrParent);

    return XST_SUCCESS;
}

/* ==============================================================
 * CheckData
 * ============================================================== */
static int CheckData(s16 *ResultBuffer, s16 *ReferentBuffer, FilterParams Params)
{
    int RowIndex, ColIndex;
    int OutW = Params.Img.Width  - 2*Params.Radius;
    int OutH = Params.Img.Height - 2*Params.Radius;

    /* Invalidate RxBuffer to force read newest values from DDR */
    Xil_DCacheInvalidateRange((UINTPTR)ResultBuffer, OutW * OutH * sizeof(s16));

    for (RowIndex = 0; RowIndex < OutH; RowIndex++) {
        for (ColIndex = 0; ColIndex < OutW; ColIndex++) {
            int Idx = RowIndex * OutW + ColIndex;
            if (ResultBuffer[Idx] != ReferentBuffer[Idx]) {
                xil_printf("DATA CHECK ERROR: Row: %d Column: %d Received %d instead of %d\r\n",
                           RowIndex, ColIndex, ResultBuffer[Idx], ReferentBuffer[Idx]);
                return XST_FAILURE;
            }
        }
    }

    return XST_SUCCESS;
}

/* ==============================================================
 * AccConfigure
 * ADDR_LSB=2: byte address = word address * 4
 * Registers are 16-bit wide, upper 16 bits of each 32-bit slot ignored
 * ============================================================== */
static int AccConfigure(UINTPTR BaseAddress, FilterParams Params)
{
    int i;

    Xil_Out32(BaseAddress + REG_CTRL_ADDR, (u32)Params.Mode);
    u32 reg_ctrl_val = Xil_In32(BaseAddress + REG_CTRL_ADDR);
    if ((reg_ctrl_val & 0xFFFF) != Params.Mode) {
        xil_printf("    ERROR: Configuration failed (ctrl)\r\n");
        return XST_FAILURE;
    }

    Xil_Out32(BaseAddress + REG_RADIUS_ADDR, (u32)Params.Radius);
    u32 reg_radius_val = Xil_In32(BaseAddress + REG_RADIUS_ADDR);
    if ((reg_radius_val & 0xFFFF) != Params.Radius) {
        xil_printf("    ERROR: Configuration failed (radius)\r\n");
        return XST_FAILURE;
    }

    Xil_Out32(BaseAddress + REG_IMG_W_ADDR, (u32)Params.Img.Width);
    u32 reg_img_w_val = Xil_In32(BaseAddress + REG_IMG_W_ADDR);
    if ((reg_img_w_val & 0xFFFF) != Params.Img.Width) {
        xil_printf("    ERROR: Configuration failed (img_w)\r\n");
        return XST_FAILURE;
    }

    Xil_Out32(BaseAddress + REG_IMG_H_ADDR, (u32)Params.Img.Height);
    u32 reg_img_h_val = Xil_In32(BaseAddress + REG_IMG_H_ADDR);
    if ((reg_img_h_val & 0xFFFF) != Params.Img.Height) {
        xil_printf("    ERROR: Configuration failed (img_h)\r\n");
        return XST_FAILURE;
    }

    Xil_Out32(BaseAddress + REG_COEFF_SCALE_ADDR, (u32)Params.CoeffScale);
    u32 reg_coeff_scale_val = Xil_In32(BaseAddress + REG_COEFF_SCALE_ADDR);
    if ((reg_coeff_scale_val & 0xFFFF) != Params.CoeffScale) {
        xil_printf("    ERROR: Configuration failed (coeff_scale)\r\n");
        return XST_FAILURE;
    }

    for (i = 0; i < NUM_COEFFS; i++) {
        u32 Offset = REG_COEFF_BASE_ADDR + (u32)i * 4;
        Xil_Out32(BaseAddress + Offset, (u32)(u16)LogCoeffs[i]);
        u32 reg_coeff_val = Xil_In32(BaseAddress + Offset);
        if ((s16)(reg_coeff_val & 0xFFFF) != LogCoeffs[i]) {
            xil_printf("    ERROR: Configuration failed (coeff[%d])\r\n", i);
            return XST_FAILURE;
        }
    }

    xil_printf("    Accelerator configured: ctrl=0x%04X radius=%d img=%dx%d scale=%d\r\n",
               Params.Mode, Params.Radius,
               Params.Img.Width, Params.Img.Height,
               Params.CoeffScale);

    return XST_SUCCESS;
}

/* ==============================================================
 * DmaConfigure
 * ============================================================== */
static int DmaConfigure(XAxiDma_Config *AxiDmaConfigPtr, XAxiDma *AxiDmaPtr)
{
    int Status;

    Status = XAxiDma_CfgInitialize(AxiDmaPtr, AxiDmaConfigPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: DMA initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(AxiDmaPtr)) {
        xil_printf("    ERROR: DMA configured in SG mode\r\n");
        return XST_FAILURE;
    }

    Status = XSetupInterruptSystem(AxiDmaPtr, &TxIntrHandler,
                                   AxiDmaConfigPtr->IntrId[0],
                                   AxiDmaConfigPtr->IntrParent,
                                   XINTERRUPT_DEFAULT_PRIORITY);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Cannot configure DMA TX interrupt\r\n");
        return XST_FAILURE;
    }

    Status = XSetupInterruptSystem(AxiDmaPtr, &RxIntrHandler,
                                   AxiDmaConfigPtr->IntrId[1],
                                   AxiDmaConfigPtr->IntrParent,
                                   XINTERRUPT_DEFAULT_PRIORITY);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Cannot configure DMA RX interrupt\r\n");
        return XST_FAILURE;
    }

    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    return XST_SUCCESS;
}

/* ==============================================================
 * DmaStartTransfers
 * ============================================================== */
static int DmaStartTransfers(XAxiDma *AxiDmaPtr,
                              u8 *TxBuffer, u32 TxSize,
                              u8 *RxBuffer, u32 RxSize)
{
    int Status;

    Xil_DCacheFlushRange((UINTPTR)TxBuffer, TxSize);
    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RxSize);

    Status = XAxiDma_SimpleTransfer(AxiDmaPtr, (UINTPTR)RxBuffer,
                                    RxSize, XAXIDMA_DEVICE_TO_DMA);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Starting RX DMA failed %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)TxBuffer,
                                    TxSize, XAXIDMA_DMA_TO_DEVICE);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Starting TX DMA failed %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

/* ==============================================================
 * DmaWaitTransfers
 * ============================================================== */
static int DmaWaitTransfers(volatile u32 *TxFlag, volatile u32 *RxFlag, u32 Timeout)
{
    int Status;

    Status = Xil_WaitForEventSet(Timeout, 1, TxFlag);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Transmit failed %d\r\n", Status);
        return XST_FAILURE;
    }
    xil_printf("    Transmit done\r\n");

    Status = Xil_WaitForEventSet(Timeout, 1, RxFlag);
    if (Status != XST_SUCCESS) {
        xil_printf("    ERROR: Receive failed %d\r\n", Status);
        return XST_FAILURE;
    }
    xil_printf("    Receive done\r\n");

    return XST_SUCCESS;
}

/* ==============================================================
 * TxIntrHandler
 * ============================================================== */
static void TxIntrHandler(void *Callback)
{
    u32 IrqStatus;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK))
        TxDone = 1;

    return;
}

/* ==============================================================
 * RxIntrHandler
 * ============================================================== */
static void RxIntrHandler(void *Callback)
{
    u32 IrqStatus;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK))
        RxDone = 1;

    return;
}