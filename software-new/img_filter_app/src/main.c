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
    u16 NumOfPlanes;
} ImageShape;

typedef struct FilterParams {
    ImageShape Img;
    u8         Radius;
    u16        Ctrl;       /* bit0=MODE, bit1=BYPASS */
    u16        CoeffScale;
    s16       *Coeffs;     /* pointer to coefficient array (NUM_COEFFS entries) */
} FilterParams;

/* ---------------------------------------------------------------
 * LoG kernel (sigma=1, radius=4), Q1.15 format
 * --------------------------------------------------------------- */
static const s16 LogCoeffs[NUM_COEFFS] = {
    /*  Row 0 */
       405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 1 */
       405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 2 */
       405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 3 */
      405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 4 */
      405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 5 */
      405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 6 */
     405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 7 */
        405,    405,    405,   405,   405,   405,    405,    405,    405,
    /*  Row 8 */
    405,    405,    405,   405,   405,   405,    405,    405,    405,
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

static void FilterImageSW    (u8 *DataBuffer, u16 *ResultBuffer, FilterParams Params);
static int  ImageFilterHW    (u8 *DataBuffer, u16 *ResultBuffer, FilterParams Params);

static int  CheckData        (u16 *ResultBuffer, u16 *ReferentBuffer, FilterParams Params);

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
    u16 *ReferentBuffer;
    u16 *ResultBuffer;

    FilterParams Params;

    u32 InSize;
    u32 OutSize;

    u32 SwTimeStart, SwTimeEnd, SwTimeUs;
    u32 HwTimeStart, HwTimeEnd, HwTimeUs;

    xil_printf("\r\n--- Entering main() ---\r\n");

    /* Define processing parameters */
    Params.Img.Width      = IMG_WIDTH;
    Params.Img.Height     = IMG_HEIGHT;
    Params.Img.NumOfPlanes= 1;
    Params.Radius         = FILTER_RADIUS;
    Params.Ctrl           = CTRL_MODE_Q9_7;   /* bit0=MODE Q9.7, bit1=BYPASS off */
    Params.CoeffScale     = COEFF_SCALE_1_0;
    Params.Coeffs         = (s16*)LogCoeffs;

    InSize  = Params.Img.Width * Params.Img.Height * Params.Img.NumOfPlanes;
    OutSize = OUT_WIDTH * OUT_HEIGHT * Params.Img.NumOfPlanes * sizeof(u16);

    /* Buffer allocation */
    DataBuffer = (u8*) malloc(InSize);
    if (DataBuffer == NULL) {
        xil_printf("ERROR: Cannot allocate Data buffer\r\n");
        return XST_FAILURE;
    }
    xil_printf("\r\n Data buffer address: %x \r\n", DataBuffer);

    ResultBuffer = (u16*) malloc(OutSize);
    if (ResultBuffer == NULL) {
        xil_printf("ERROR: Cannot allocate Result buffer\r\n");
        return XST_FAILURE;
    }
    xil_printf("\r\n Result buffer address: %x \r\n", ResultBuffer);

    ReferentBuffer = (u16*) malloc(OutSize);
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
    FilterImageSW(DataBuffer, ReferentBuffer, Params);
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

    /* Timing summary */
    xil_printf("=== Timing Summary ===\r\n");
    xil_printf("  SW time : %u us\r\n", SwTimeUs);
    xil_printf("  HW time : %u us\r\n", HwTimeUs);
    if (HwTimeUs > 0)
        xil_printf("  Speedup : %u x\r\n", SwTimeUs / HwTimeUs);

    // Use mrd in debug console to save ResultBuffer:
    //    mrd -size b -bin -file "path/to/result.bin"  <ResultBuffer_addr>  <OutSize>

    /* Check data – called after mrd so the result binary is already saved */
    Status = CheckData(ResultBuffer, ReferentBuffer, Params);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Data check failed\r\n");
        /* Do NOT return here – free buffers first, then report failure */
        free(DataBuffer);
        free(ResultBuffer);
        free(ReferentBuffer);
        return XST_FAILURE;
    }
    xil_printf("Data check OK\r\n\n");

    free(DataBuffer);
    free(ResultBuffer);
    free(ReferentBuffer);

    xil_printf("\r\n--- Exiting main() ---\r\n");

    return XST_SUCCESS;
}

/* ==============================================================
 * FilterImageSW
 *
 * Software reference filter. Supports bypass and filter modes, single
 * or multi-plane images, u8 uint output (mode=0) and Q9.7 s16 (mode=1).
 * ResultBuffer is u16* — negative Q9.7 values are stored as their raw
 * 16-bit two's-complement bit pattern, avoiding sign-extension issues
 * when comparing against the hardware DMA output (also u16).
 *
 * Coefficient ordering matches hardware filter_alu.vhd:
 *   Coeffs[kr * 9 + kc] multiplies pixel at (row + kr - R, col + kc - R)
 * ============================================================== */
static void FilterImageSW(u8 *DataBuffer, u16 *ResultBuffer, FilterParams Params)
{
    int R      = Params.Radius;
    int K      = 2 * R + 1;
    int W      = Params.Img.Width;
    int H      = Params.Img.Height;
    int mode   = Params.Ctrl & 0x01;
    int bypass = (Params.Ctrl & 0x02) != 0;
    int i_out  = 0;

    for (int plane = 0; plane < Params.Img.NumOfPlanes; plane++) {
        int plane_offset = plane * W * H;

        for (int row = R; row < H - R; row++) {
            for (int col = R; col < W - R; col++) {

                if (bypass) {
                    if (mode == 0) {
                        ResultBuffer[i_out++] = (u16)DataBuffer[plane_offset + row * W + col];
                    } else {
                        ResultBuffer[i_out++] = ((u16)DataBuffer[plane_offset + row * W + col]) << 7;
                    }
                    continue;
                }

                s64 total_sum = 0;

                for (int kr = 0; kr < K; kr++) {
                    for (int kc = 0; kc < K; kc++) {
                        int img_r = row + kr - R;
                        int img_c = col + kc - R;
                        s32 pixel = (s32)DataBuffer[plane_offset + img_r * W + img_c];
                        s32 coeff = (s32)Params.Coeffs[kr * 9 + kc];
                        total_sum += (pixel * coeff);
                    }
                }

                s64 scaled = total_sum * (s64)((u32)Params.CoeffScale);

                if (mode == 0) {
                    /* uint8 output: Q1.15 * UQ4.12 → shift 27 */
                    s64 integer_part = scaled >> 27;
                    if (integer_part < 0)        ResultBuffer[i_out] = 0;
                    else if (integer_part > 255)  ResultBuffer[i_out] = 255;
                    else                          ResultBuffer[i_out] = (u16)integer_part;
                } else {
                    /* Q9.7 signed 16-bit output: shift 20 */
                    s64 integer_part = scaled >> 20;
                    if (integer_part > 32767)
                        ResultBuffer[i_out] = 32767;
                    else if (integer_part < -32768)
                        ResultBuffer[i_out] = (u16)-32768;
                    else
                        ResultBuffer[i_out] = (u16)(integer_part & 0xFFFF);
                }
                i_out++;
            }
        }
    }
}

/* ==============================================================
 * ImageFilterHW
 * ============================================================== */
static int ImageFilterHW(u8 *DataBuffer, u16 *ResultBuffer, FilterParams Params)
{
    int Status;
    u32 InSize  = Params.Img.Width * Params.Img.Height * Params.Img.NumOfPlanes;
    u32 OutSize = (u32)(Params.Img.Width  - 2*Params.Radius) *
                  (u32)(Params.Img.Height - 2*Params.Radius) *
                  Params.Img.NumOfPlanes * sizeof(u16);

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
 *
 * Compares HW output (ResultBuffer) against SW reference (ReferentBuffer).
 * Both buffers are u16* so signed Q9.7 values are compared as raw bit
 * patterns, avoiding sign-extension false mismatches.
 * Prints up to 15 mismatches per plane with row/col coords, then total.
 * ============================================================== */
static int CheckData(u16 *ResultBuffer, u16 *ReferentBuffer, FilterParams Params)
{
    u32 outW = Params.Img.Width  - 2 * Params.Radius;
    u32 outH = Params.Img.Height - 2 * Params.Radius;

    int errors = 0;
    u32 TotalElements = outW * outH * Params.Img.NumOfPlanes;

    /* Invalidate D-cache so we read the freshest DMA-written values */
    Xil_DCacheInvalidateRange((UINTPTR)ResultBuffer, TotalElements * sizeof(u16));

    for (u32 plane = 0; plane < Params.Img.NumOfPlanes; plane++) {
        u32 offset = plane * outW * outH;
        for (u32 row = 0; row < outH; row++) {
            for (u32 col = 0; col < outW; col++) {
                u32 i = offset + row * outW + col;
                if (ResultBuffer[i] != ReferentBuffer[i]) {
                    if (errors < 15) {
                        /* Cast to s16 only for printing so signed values display correctly */
                        xil_printf("  MISMATCH [Plane %u] (%u,%u): HW=%d SW=%d\r\n",
                                   plane, row, col,
                                   (int)(s16)ResultBuffer[i],
                                   (int)(s16)ReferentBuffer[i]);
                    }
                    errors++;
                }
            }
        }
    }

    if (errors > 0) {
        xil_printf("  Total mismatches: %d / %u\r\n", errors, TotalElements);
        return XST_FAILURE;
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

    Xil_Out32(BaseAddress + REG_CTRL_ADDR, (u32)Params.Ctrl);
    u32 reg_ctrl_val = Xil_In32(BaseAddress + REG_CTRL_ADDR);
    if ((reg_ctrl_val & 0xFFFF) != Params.Ctrl) {
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
        Xil_Out32(BaseAddress + Offset, (u32)(u16)Params.Coeffs[i]);
        u32 reg_coeff_val = Xil_In32(BaseAddress + Offset);
        if ((s16)(reg_coeff_val & 0xFFFF) != Params.Coeffs[i]) {
            xil_printf("    ERROR: Configuration failed (coeff[%d])\r\n", i);
            return XST_FAILURE;
        }
    }

    xil_printf("    Accelerator configured: ctrl=0x%04X radius=%d img=%dx%d scale=%d\r\n",
               Params.Ctrl, Params.Radius,
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