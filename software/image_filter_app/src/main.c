#include "xparameters.h"
#include <xil_io.h>
#include <xil_printf.h>
#include <xstatus.h>
#include <stdlib.h>
#include <math.h>

#include "xaxidma.h"
#include "xinterrupt_wrap.h"
#include "xtmrctr.h"
#include <xil_cache.h>
#include "xil_util.h"

#ifndef M_PI
  #define M_PI 3.14159265358979323846
#endif

#define OUTPUT_MODE_UINT8   0
#define OUTPUT_MODE_Q9_7    1
#define ACTIVE_MODE         OUTPUT_MODE_UINT8  /* uint8 → direct 8-bit RGB output */

/* --- Filter types --- */
#define FILTER_TYPE_BOX           0
#define FILTER_TYPE_GAUSSIAN      1
#define FILTER_TYPE_LOG           2
#define FILTER_TYPE_SOBEL_X       3
#define FILTER_TYPE_SOBEL_Y       4
#define FILTER_TYPE_SHARPEN_BOX   5  /* unsharp mask: identity + box-blur-based edge   */
#define FILTER_TYPE_SHARPEN_GAUSS 6  /* unsharp mask: identity + Gaussian-based edge   */
#define FILTER_TYPE_LAPLACIAN     7

#define ACTIVE_FILTER           FILTER_TYPE_BOX   /* <-- Select your filter */
#define FILTER_RADIUS           1                  /* <-- 1(3x3) 2(5x5) 3(7x7) 4(9x9) */

/* Number of colour planes.
 *   1 → grayscale  (DataBuffer = W×H bytes)
 *   3 → RGB        (DataBuffer = W×H×3 bytes, planar: R plane then G then B)
 * Each plane is sent as a SEPARATE DMA transaction so the hardware goes
 * AccIdle → AccProcessing → AccIdle cleanly for every plane.
 * The BRAM line buffer is therefore never contaminated across planes. */
#define IMG_PLANES              3  /* <-- 1 = grayscale, 3 = RGB */

/* CoeffScale: set manually to match the active filter.
 *   Standard filters (box, gaussian, LoG, sobel, laplacian) → 4096
 *   Sharpening filters (sharpen_box, sharpen_gauss)         → 8192
 *   (sharpening coefficients are pre-scaled ×0.5 to avoid s16 overflow) */
#define COEFF_SCALE_VAL  4096   /* <-- change to 8192 for SHARPEN_BOX / SHARPEN_GAUSS */

/* --- Bypass --- */
#define BYPASS_ENABLE           0   /* 0 = normal filter | 1 = bypass BRAM+ALU */

/* --- AXI4-Lite register map (Table 5.2) --- */
#define REG_CTRL_ADDR         0x00
#define REG_RADIUS_ADDR       0x04
#define REG_IMG_W_ADDR        0x08
#define REG_IMG_H_ADDR        0x0C
#define REG_COEFF_SCALE_ADDR  0x10
#define REG_COEFF_BASE_ADDR   0x20

#define CTRL_MODE_UINT8       0x0000
#define CTRL_MODE_Q9_7        0x0001
#define CTRL_BYPASS           0x0002
#define CTRL_BORD_CROP        0x0000
#define CTRL_BORD_REPLICATE   0x0008
#define CTRL_BORD_CONST(v)    (0x000C | (((u16)(v) & 0xFF) << 4))

#if (FILTER_RADIUS < 1) || (FILTER_RADIUS > 4)
  #error "FILTER_RADIUS must be 1, 2, 3, or 4"
#endif

#define MAX_NUM_COEFFS        81

/* Image dimensions – landscape 768×512 parrots image */
#define IMG_WIDTH           768   /* <-- columns */
#define IMG_HEIGHT          512   /* <-- rows    */

/* Output dimensions */
#if BYPASS_ENABLE
  #define OUT_WIDTH   IMG_WIDTH
  #define OUT_HEIGHT  IMG_HEIGHT
#else
  #define OUT_WIDTH   (IMG_WIDTH  - 2*FILTER_RADIUS)
  #define OUT_HEIGHT  (IMG_HEIGHT - 2*FILTER_RADIUS)
#endif

/* Pixel format */
#if BYPASS_ENABLE
  #define OUT_PIXEL_BYTES  sizeof(u8)
  #define MODE_STR         "bypass (uint8 out)"
  #if (ACTIVE_MODE == OUTPUT_MODE_UINT8)
    #define ACTIVE_CTRL    (CTRL_MODE_UINT8 | CTRL_BYPASS)
  #else
    #define ACTIVE_CTRL    (CTRL_MODE_Q9_7  | CTRL_BYPASS)
  #endif
#elif (ACTIVE_MODE == OUTPUT_MODE_UINT8)
  #define OUT_PIXEL_BYTES  sizeof(u8)
  #define MODE_STR         "uint8"
  #define ACTIVE_CTRL      CTRL_MODE_UINT8
#else
  #define OUT_PIXEL_BYTES  sizeof(u16)
  #define MODE_STR         "Q9.7"
  #define ACTIVE_CTRL      CTRL_MODE_Q9_7
#endif

#define OUT_BUFFER_BYTES  (OUT_WIDTH * OUT_HEIGHT * IMG_PLANES * OUT_PIXEL_BYTES)
/* 768×512 plane @ 100 MHz AXI ≈ 3.9 ms; 5 000 000 poll iterations >>10 ms */
#define DMA_TRANSFER_TIMEOUT  5000000
#define TMR_COUNTER_0         0
#define TMR_FREQ_HZ           100000000ULL

/* --- Structs --- */
typedef struct ImageShape {
    u16 Width;
    u16 Height;
    u16 NumOfPlanes;
} ImageShape;

typedef struct FilterParams {
    ImageShape Img;
    u8         Radius;
    u16        Ctrl;
    u16        CoeffScale;
    s16       *Coeffs;
} FilterParams;

/* --- Prototypes --- */
static int  DmaConfigure(XAxiDma_Config *AxiDmaConfigPtr, XAxiDma *AxiDmaPtr);
static int  DmaStartTransfers(XAxiDma *AxiDmaPtr, u8 *TxBuffer, u32 TxSize, u8 *RxBuffer, u32 RxSize);
static int  DmaWaitTransfers(volatile u32 *TxFlag, volatile u32 *RxFlag, u32 Timeout);
static int  AccConfigure(UINTPTR BaseAddress, FilterParams Params);
static void FilterImageSW(u8 *DataBuffer, u8 *ResultBuffer, FilterParams Params);
static int  ImageFilterHW(u8 *DataBuffer, u8 *ResultBuffer, FilterParams Params);
static int  CheckData(u8 *ResultBuffer, u8 *ReferentBuffer, FilterParams Params);
static void TxIntrHandler(void *Callback);
static void RxIntrHandler(void *Callback);

static XAxiDma  AxiDma;
static XTmrCtr  AxiTimer;
volatile u32 TxDone;
volatile u32 RxDone;

static s16 HW_Aligned_Coeffs[MAX_NUM_COEFFS];

static const char *FilterNameStr[] = {
    "Box Blur", "Gaussian", "LoG",
    "Sobel X", "Sobel Y",
    "Sharpen (Box)", "Sharpen (Gaussian)",
    "Laplacian"
};

/* ==============================================================
 * GenerateCoeffsMath
 *
 * Writes kernels in STANDARD orientation (row 0 = top of window).
 * Y-flip to match BRAM newest-first storage is handled entirely in
 * filter_alu.vhd via the (fdim-1-r)*9+c coefficient index.
 * ============================================================== */
static void GenerateCoeffsMath(int type, int radius, s16* hw_coeffs)
{
    int K = 2 * radius + 1;

    /* σ = R/2: fits Gaussian inside the kernel for all supported radii */
    float sigma = (radius > 0) ? (radius / 2.0f) : 1.0f;

    /* ----------------------------------------------------------------
     * SHARPENING (separate path – avoids s16 overflow on centre coeff)
     *
     * Spec formula: W = (1+k)·δ − k·W_LP_norm   (k=1 → W = 2δ − W_LP)
     * Centre value ≈ 2 overflows Q15.
     * Fix: pre-scale all coefficients by 0.5 → CoeffScale must be 8192.
     * ---------------------------------------------------------------- */
    if (type == FILTER_TYPE_SHARPEN_BOX || type == FILTER_TYPE_SHARPEN_GAUSS) {
        float lp[81] = {0.0f};
        float lp_sum = 0.0f;

        if (type == FILTER_TYPE_SHARPEN_BOX) {
            for (int i = 0; i < K * K; i++) lp[i] = 1.0f;
            lp_sum = (float)(K * K);
        } else {
            for (int r = 0; r < K; r++) {
                for (int c = 0; c < K; c++) {
                    float dx = (float)(c - radius), dy = (float)(r - radius);
                    float g = expf(-(dx*dx + dy*dy) / (2.0f * sigma * sigma));
                    lp[r * K + c] = g;
                    lp_sum += g;
                }
            }
        }

        for (int i = 0; i < MAX_NUM_COEFFS; i++) hw_coeffs[i] = 0;
        for (int r = 0; r < K; r++) {
            for (int c = 0; c < K; c++) {
                float delta   = (r == radius && c == radius) ? 1.0f : 0.0f;
                float lp_norm = lp[r * K + c] / lp_sum;
                float w       = 2.0f * delta - lp_norm;     /* k = 1 */
                float hw_val  = roundf(w * 0.5f * 32768.0f); /* pre-scale 0.5 */
                hw_coeffs[r * 9 + c] = (s16)fmaxf(-32768.0f, fminf(32767.0f, hw_val));
            }
        }
        return;
    }

    /* ----------------------------------------------------------------
     * ALL OTHER FILTER TYPES
     * ---------------------------------------------------------------- */
    float f_math[81] = {0.0f};
    float sum_all = 0.0f;
    float sum_pos = 0.0f;

    for (int r = 0; r < K; r++) {
        for (int c = 0; c < K; c++) {
            float dx = (float)(c - radius);
            float dy = (float)(r - radius);
            float dist_sq = dx*dx + dy*dy;
            float val = 0.0f;

            switch (type) {
                case FILTER_TYPE_BOX:
                    val = 1.0f;
                    break;
                case FILTER_TYPE_GAUSSIAN:
                    val = expf(-dist_sq / (2.0f * sigma * sigma));
                    break;
                case FILTER_TYPE_LOG:
                    val = ((dist_sq / (sigma * sigma)) - 2.0f)
                          * expf(-dist_sq / (2.0f * sigma * sigma));
                    break;
                case FILTER_TYPE_SOBEL_X:
                    val = (dist_sq == 0.0f) ? 0.0f : dx / dist_sq;
                    break;
                case FILTER_TYPE_SOBEL_Y:
                    val = (dist_sq == 0.0f) ? 0.0f : dy / dist_sq;
                    break;
                case FILTER_TYPE_LAPLACIAN:
                    /* Full K×K discrete Laplacian:
                     *   centre = -(K²-1)  all others = +1
                     * Uses every pixel in the window (not just 4-connectivity).
                     * Zero-sum: -(K²-1) + (K²-1)×1 = 0  ✓
                     * For K=3: centre=-8, others=+1  (8-connectivity Laplacian)
                     * For K=7: centre=-48, others=+1
                     * For K=9: centre=-80, others=+1                           */
                    val = (dx == 0.0f && dy == 0.0f) ? -(float)(K*K - 1) : 1.0f;
                    break;
            }
            f_math[r * K + c] = val;
            sum_all += val;
        }
    }

    /* Force zero-sum for edge detectors */
    if (type == FILTER_TYPE_LOG || type == FILTER_TYPE_LAPLACIAN ||
        type == FILTER_TYPE_SOBEL_X || type == FILTER_TYPE_SOBEL_Y) {
        float mean = sum_all / (float)(K * K);
        sum_all = 0.0f;
        for (int i = 0; i < K * K; i++) {
            f_math[i] -= mean;
            if (f_math[i] > 0.0f) sum_pos += f_math[i];
            sum_all += f_math[i];
        }
    } else {
        for (int i = 0; i < K * K; i++) {
            if (f_math[i] > 0.0f) sum_pos += f_math[i];
        }
    }

    /* Normalise to Q15 */
    float norm_factor = 1.0f;
    float target_sum  = 32768.0f;
    if (type == FILTER_TYPE_BOX || type == FILTER_TYPE_GAUSSIAN) {
        if (sum_all != 0.0f) norm_factor = target_sum / sum_all;
    } else {
        if (sum_pos != 0.0f) norm_factor = target_sum / sum_pos;
    }

    for (int i = 0; i < MAX_NUM_COEFFS; i++) hw_coeffs[i] = 0;
    for (int r = 0; r < K; r++) {
        for (int c = 0; c < K; c++) {
            float val = f_math[r * K + c] * norm_factor;
            if (val >  32767.0f) val =  32767.0f;
            if (val < -32768.0f) val = -32768.0f;
            hw_coeffs[r * 9 + c] = (val >= 0.0f) ? (s16)(val + 0.5f) : (s16)(val - 0.5f);
        }
    }
}

/* ==============================================================
 * main
 * ============================================================== */
int main(void)
{
    int Status;
    u8  *DataBuffer;
    u8  *ReferentBuffer;
    u8  *ResultBuffer;
    FilterParams Params;
    u32 InSize;

    u32 SwTimeStart, SwTimeEnd, SwTimeUs;
    u32 HwTimeStart, HwTimeEnd, HwTimeUs;

    xil_printf("\r\n--- Entering main() ---\r\n");

    Params.Img.Width       = IMG_WIDTH;
    Params.Img.Height      = IMG_HEIGHT;
    Params.Img.NumOfPlanes = IMG_PLANES;
    Params.Radius          = FILTER_RADIUS;
    Params.Ctrl            = ACTIVE_CTRL;
    Params.CoeffScale      = COEFF_SCALE_VAL;

    GenerateCoeffsMath(ACTIVE_FILTER, FILTER_RADIUS, HW_Aligned_Coeffs);
    Params.Coeffs = HW_Aligned_Coeffs;

    /* --- Filter info printout --- */
    int K = 2 * FILTER_RADIUS + 1;
    int is_bypass = (Params.Ctrl & CTRL_BYPASS) != 0;

    xil_printf("\r\n--- Filter: %s, Radius=%d (%dx%d), Mode=%s%s ---\r\n",
               FilterNameStr[ACTIVE_FILTER], FILTER_RADIUS, K, K, MODE_STR,
               is_bypass ? " [BYPASS: BRAM+ALU skipped]" : "");
    xil_printf("--- Output image: %dx%d (input %dx%d minus 2*%d border) ---\r\n",
               OUT_WIDTH, OUT_HEIGHT, IMG_WIDTH, IMG_HEIGHT, FILTER_RADIUS);

    if (!is_bypass) {
        int matrix_sum = 0;
        for (int r = 0; r < K; r++) {
            xil_printf("  ");
            for (int c = 0; c < K; c++) {
                int val = (int)Params.Coeffs[r * 9 + c];
                xil_printf("%7d ", val);
                matrix_sum += val;
            }
            xil_printf("\r\n");
        }
        xil_printf("  Total Matrix Sum: %d (should be ~0 for edge detectors)\r\n",
                   matrix_sum);
        xil_printf("  CoeffScale: %u  (out >> 27 = final result)\r\n",
                   (unsigned)Params.CoeffScale);
    } else {
        xil_printf("  [Bypass mode: coefficients not used by hardware]\r\n");
    }
    xil_printf("------------------------------------------------------\r\n\n");

    InSize = (u32)Params.Img.Width * Params.Img.Height * Params.Img.NumOfPlanes;

    /* --- Buffer allocation --- */
    DataBuffer = (u8*)malloc(InSize);
    if (!DataBuffer) { xil_printf("ERROR: malloc DataBuffer\r\n"); return XST_FAILURE; }

    ResultBuffer = (u8*)malloc(OUT_BUFFER_BYTES);
    if (!ResultBuffer) { free(DataBuffer); xil_printf("ERROR: malloc ResultBuffer\r\n"); return XST_FAILURE; }

    ReferentBuffer = (u8*)malloc(OUT_BUFFER_BYTES);
    if (!ReferentBuffer) { free(ResultBuffer); free(DataBuffer); xil_printf("ERROR: malloc ReferentBuffer\r\n"); return XST_FAILURE; }

    xil_printf("DataBuffer      address: 0x%08x  (size: %u bytes)\r\n",
               (unsigned)DataBuffer,     (unsigned)InSize);
    xil_printf("ResultBuffer    address: 0x%08x  (size: %u bytes)\r\n",
               (unsigned)ResultBuffer,   (unsigned)OUT_BUFFER_BYTES);
    xil_printf("ReferentBuffer  address: 0x%08x  (size: %u bytes)\r\n\n",
               (unsigned)ReferentBuffer, (unsigned)OUT_BUFFER_BYTES);

    /* --- XSCT console commands --- */
    xil_printf("NOTE: Load image via XSCT:\r\n");
    if (IMG_PLANES == 3) {
        xil_printf("  RGB planar binary (R plane, then G, then B – no header):\r\n");
        xil_printf("  mwr -bin -file parrots.bin 0x%08x %u\r\n\n",
                   (unsigned)DataBuffer, (unsigned)InSize);
    } else {
        xil_printf("  mwr -bin -file lena.bin 0x%08x %u\r\n\n",
                   (unsigned)DataBuffer, (unsigned)InSize);
    }

    xil_printf("NOTE: Output: %d x %d, %d plane(s), %s\r\n",
               OUT_WIDTH, OUT_HEIGHT, IMG_PLANES, MODE_STR);
    xil_printf("      Render with %d columns (NOT %d)\r\n", OUT_WIDTH, IMG_WIDTH);
    xil_printf("NOTE: Read results via XSCT after run:\r\n");
    xil_printf("  mrd -bin -size b -file result.bin   0x%08x %u\r\n",
               (unsigned)ResultBuffer, (unsigned)OUT_BUFFER_BYTES);
    xil_printf("  mrd -bin -size b -file sw_ref.bin   0x%08x %u\r\n\n",
               (unsigned)ReferentBuffer, (unsigned)OUT_BUFFER_BYTES);

    /* Fill with ramp for SW/HW comparison */
    for (u32 i = 0; i < InSize; i++) DataBuffer[i] = (u8)(i & 0xFF);

    Status = XTmrCtr_Initialize(&AxiTimer, XPAR_XTMRCTR_0_BASEADDR);
    if (Status != XST_SUCCESS) { xil_printf("ERROR: Timer init\r\n"); return XST_FAILURE; }
    XTmrCtr_SetOptions(&AxiTimer, TMR_COUNTER_0, XTC_AUTO_RELOAD_OPTION);
    XTmrCtr_SetResetValue(&AxiTimer, TMR_COUNTER_0, 0);
    XTmrCtr_Start(&AxiTimer, TMR_COUNTER_0);

    Status = AccConfigure(XPAR_ACC_IMAGE_FILTER_0_BASEADDR, Params);
    if (Status != XST_SUCCESS) { xil_printf("ERROR: AccConfigure\r\n"); return XST_FAILURE; }

    /* --- SW reference --- */
    SwTimeStart = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    FilterImageSW(DataBuffer, ReferentBuffer, Params);
    SwTimeEnd   = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    SwTimeUs    = (u32)((u64)(SwTimeEnd - SwTimeStart) * 1000000ULL / TMR_FREQ_HZ);

    HwTimeStart = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    Status = ImageFilterHW(DataBuffer, ResultBuffer, Params);
    HwTimeEnd   = XTmrCtr_GetValue(&AxiTimer, TMR_COUNTER_0);
    HwTimeUs    = (u32)((u64)(HwTimeEnd - HwTimeStart) * 1000000ULL / TMR_FREQ_HZ);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: Hardware processing failed\r\n");
        free(ReferentBuffer); free(ResultBuffer); free(DataBuffer);
        return XST_FAILURE;
    }

    xil_printf("=== Timing Summary ===\r\n");
    xil_printf("  SW time : %u us\r\n", SwTimeUs);
    xil_printf("  HW time : %u us\r\n", HwTimeUs);
    if (HwTimeUs > 0) xil_printf("  Speedup : %u x\r\n", SwTimeUs / HwTimeUs);

    /* DMA timeout diagnostic.
     * For 768×512 RGB (3 planes, box R=1, uint8):
     *   HW ≈ 3 × (768×512 / 100MHz) ≈ 11.8 ms – well under 5 s.
     * DMA timeout always manifests as HW time ~230 ms (polling loop
     * runs to its iteration limit).  Flag anything over 2 s as hung. */
    if (HwTimeUs > 2000000) {
        xil_printf("WARNING: HW time >2 s – DMA timeout likely!\r\n");
        xil_printf("  Check: bitstream regenerated after VHDL changes?\r\n");
        u16 *rw = (u16*)ResultBuffer;
        xil_printf("  ResultBuffer[0..3] = %d %d %d %d\r\n",
                   (s16)rw[0], (s16)rw[1], (s16)rw[2], (s16)rw[3]);
    }

    Status = CheckData(ResultBuffer, ReferentBuffer, Params);
    if (Status == XST_SUCCESS) xil_printf("Data check OK\r\n\n");
    else                       xil_printf("ERROR: Data check failed\r\n");

    free(DataBuffer); free(ResultBuffer); free(ReferentBuffer);
    xil_printf("--- Exiting main() ---\r\n");
    return XST_SUCCESS;
}

/* ==============================================================
 * FilterImageSW
 * ============================================================== */
static void FilterImageSW(u8 *DataBuffer, u8 *ResultBuffer, FilterParams Params)
{
    int   R      = Params.Radius;
    int   K      = 2 * R + 1;
    int   W      = Params.Img.Width;
    int   H      = Params.Img.Height;
    int   mode   = Params.Ctrl & 0x01;
    int   bypass = (Params.Ctrl & 0x02) != 0;
    u32   i_out  = 0;

    u8  *out_u8  = (u8  *)ResultBuffer;
    u16 *out_u16 = (u16 *)ResultBuffer;

    for (int plane = 0; plane < Params.Img.NumOfPlanes; plane++) {
        int plane_offset = plane * W * H;

        if (bypass) {
            /* Bypass: forward ALL W×H pixels (uint8, per spec Table 5.2) */
            for (int row = 0; row < H; row++) {
                for (int col = 0; col < W; col++) {
                    out_u8[i_out++] = DataBuffer[plane_offset + row * W + col];
                }
            }
            continue;
        }

        for (int row = R; row < H - R; row++) {
            for (int col = R; col < W - R; col++) {
                s64 total_sum = 0;
                for (int kr = 0; kr < K; kr++) {
                    for (int kc = 0; kc < K; kc++) {
                        int img_r = row + kr - R;
                        int img_c = col + kc - R;
                        s32 pixel = (s32)DataBuffer[plane_offset + img_r * W + img_c];
                        s32 coeff = (s32)Params.Coeffs[kr * 9 + kc];
                        total_sum += (s64)(pixel * coeff);
                    }
                }
                s64 scaled = total_sum * (s64)((u32)Params.CoeffScale);
                if (mode == 0) {
                    s64 v = scaled >> 27;
                    out_u8[i_out] = (v < 0) ? 0 : (v > 255) ? 255 : (u8)v;
                } else {
                    s64 v = scaled >> 20;
                    out_u16[i_out] = (v > 32767)  ? 32767
                                   : (v < -32768) ? (u16)(s16)(-32768)
                                   : (u16)(v & 0xFFFF);
                }
                i_out++;
            }
        }
    }
}

/* ==============================================================
 * AccConfigure
 * ============================================================== */
static int AccConfigure(UINTPTR BaseAddress, FilterParams Params)
{
    Xil_Out32(BaseAddress + REG_CTRL_ADDR,        (u32)Params.Ctrl);
    Xil_Out32(BaseAddress + REG_RADIUS_ADDR,      (u32)Params.Radius);
    Xil_Out32(BaseAddress + REG_IMG_W_ADDR,       (u32)Params.Img.Width);
    Xil_Out32(BaseAddress + REG_IMG_H_ADDR,       (u32)Params.Img.Height);
    Xil_Out32(BaseAddress + REG_COEFF_SCALE_ADDR, (u32)Params.CoeffScale);
    for (int i = 0; i < MAX_NUM_COEFFS; i++) {
        u32 Offset = REG_COEFF_BASE_ADDR + (u32)i * 4;
        Xil_Out32(BaseAddress + Offset, (u32)(u16)Params.Coeffs[i]);
    }
    return XST_SUCCESS;
}

/* ==============================================================
 * ImageFilterHW
 *
 * Each colour plane is processed as a SEPARATE DMA transaction.
 * This forces the hardware through AccIdle→AccProcessing→AccIdle
 * for every plane so the BRAM line buffer starts filling from
 * fresh data each time.  Sending all planes in one burst was the
 * root cause of the RGB corruption (BRAM tail from plane N
 * contaminated the first 2*R rows of plane N+1).
 * ============================================================== */
static int ImageFilterHW(u8 *DataBuffer, u8 *ResultBuffer, FilterParams Params)
{
    int Status;
    int is_bypass = (Params.Ctrl & CTRL_BYPASS) != 0;
    int mode      = Params.Ctrl & 0x01;

    /* Per-plane byte counts ----------------------------------------- */
    u32 in_plane  = (u32)Params.Img.Width * Params.Img.Height;          /* TX bytes */
    u32 out_w     = is_bypass ? (u32)Params.Img.Width
                              : (u32)(Params.Img.Width  - 2*Params.Radius);
    u32 out_h     = is_bypass ? (u32)Params.Img.Height
                              : (u32)(Params.Img.Height - 2*Params.Radius);
    u32 pix_bytes = (is_bypass || mode == 0) ? (u32)sizeof(u8)
                                             : (u32)sizeof(u16);
    u32 out_plane = out_w * out_h * pix_bytes;                           /* RX bytes */

    XAxiDma_Config *Cfg = XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR);
    if (!Cfg) return XST_FAILURE;

    for (int plane = 0; plane < Params.Img.NumOfPlanes; plane++) {
        u8 *in_ptr  = DataBuffer   + (u32)plane * in_plane;
        u8 *out_ptr = ResultBuffer + (u32)plane * out_plane;

        /* Fresh DMA init for every plane (restores interrupt state). */
        Status = DmaConfigure(Cfg, &AxiDma);
        if (Status != XST_SUCCESS) {
            xil_printf("ERROR: DmaConfigure failed (plane %d)\r\n", plane);
            return XST_FAILURE;
        }

        TxDone = 0; RxDone = 0;
        Status = DmaStartTransfers(&AxiDma, in_ptr, in_plane, out_ptr, out_plane);
        if (Status != XST_SUCCESS) {
            xil_printf("ERROR: DmaStartTransfers failed (plane %d)\r\n", plane);
            XDisconnectInterruptCntrl(Cfg->IntrId[0], Cfg->IntrParent);
            XDisconnectInterruptCntrl(Cfg->IntrId[1], Cfg->IntrParent);
            return XST_FAILURE;
        }

        Status = DmaWaitTransfers(&TxDone, &RxDone, DMA_TRANSFER_TIMEOUT);
        if (Status != XST_SUCCESS) {
            xil_printf("ERROR: DMA timeout (plane %d) – bitstream current?\r\n", plane);
            XDisconnectInterruptCntrl(Cfg->IntrId[0], Cfg->IntrParent);
            XDisconnectInterruptCntrl(Cfg->IntrId[1], Cfg->IntrParent);
            return XST_FAILURE;
        }

        xil_printf("  [HW] Plane %d done  (TX %u B  RX %u B)\r\n",
                   plane, in_plane, out_plane);

        XDisconnectInterruptCntrl(Cfg->IntrId[0], Cfg->IntrParent);
        XDisconnectInterruptCntrl(Cfg->IntrId[1], Cfg->IntrParent);
    }
    return XST_SUCCESS;
}

/* ==============================================================
 * CheckData
 * ============================================================== */
static int CheckData(u8 *ResultBuffer, u8 *ReferentBuffer, FilterParams Params)
{
    int is_bypass = (Params.Ctrl & CTRL_BYPASS) != 0;
    u32 outW = is_bypass ? Params.Img.Width  : Params.Img.Width  - 2*Params.Radius;
    u32 outH = is_bypass ? Params.Img.Height : Params.Img.Height - 2*Params.Radius;
    int mode = is_bypass ? 0 : (Params.Ctrl & 0x01);
    int errors = 0;
    u32 TotalElements = outW * outH * Params.Img.NumOfPlanes;
    u32 TotalBytes    = TotalElements * (mode == 0 ? sizeof(u8) : sizeof(u16));

    Xil_DCacheInvalidateRange((UINTPTR)ResultBuffer, TotalBytes);

    if (mode == 0) {
        for (u32 i = 0; i < TotalElements; i++) {
            if (ResultBuffer[i] != ReferentBuffer[i]) {
                if (errors < 15)
                    xil_printf("  MISMATCH[%u]: HW=%u SW=%u\r\n",
                               i, ResultBuffer[i], ReferentBuffer[i]);
                errors++;
            }
        }
    } else {
        u16 *HW = (u16*)ResultBuffer;
        u16 *SW = (u16*)ReferentBuffer;
        for (u32 i = 0; i < TotalElements; i++) {
            if (HW[i] != SW[i]) {
                if (errors < 15)
                    xil_printf("  MISMATCH[%u]: HW=%d SW=%d\r\n",
                               i, (int)(s16)HW[i], (int)(s16)SW[i]);
                errors++;
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
 * DMA helpers
 * ============================================================== */
static int DmaConfigure(XAxiDma_Config *AxiDmaConfigPtr, XAxiDma *AxiDmaPtr) {
    int Status = XAxiDma_CfgInitialize(AxiDmaPtr, AxiDmaConfigPtr);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    XSetupInterruptSystem(AxiDmaPtr, &TxIntrHandler,
                          AxiDmaConfigPtr->IntrId[0], AxiDmaConfigPtr->IntrParent,
                          XINTERRUPT_DEFAULT_PRIORITY);
    XSetupInterruptSystem(AxiDmaPtr, &RxIntrHandler,
                          AxiDmaConfigPtr->IntrId[1], AxiDmaConfigPtr->IntrParent,
                          XINTERRUPT_DEFAULT_PRIORITY);
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    return XST_SUCCESS;
}
static int DmaStartTransfers(XAxiDma *AxiDmaPtr, u8 *TxBuffer, u32 TxSize,
                              u8 *RxBuffer, u32 RxSize) {
    Xil_DCacheFlushRange((UINTPTR)TxBuffer, TxSize);
    Xil_DCacheFlushRange((UINTPTR)RxBuffer, RxSize);
    XAxiDma_SimpleTransfer(AxiDmaPtr, (UINTPTR)RxBuffer, RxSize, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&AxiDma,   (UINTPTR)TxBuffer, TxSize, XAXIDMA_DMA_TO_DEVICE);
    return XST_SUCCESS;
}
static int DmaWaitTransfers(volatile u32 *TxFlag, volatile u32 *RxFlag, u32 Timeout) {
    int Status;
    Status = Xil_WaitForEventSet(Timeout, 1, TxFlag);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = Xil_WaitForEventSet(Timeout, 1, RxFlag);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    return XST_SUCCESS;
}
static void TxIntrHandler(void *Callback) {
    u32 IrqStatus = XAxiDma_IntrGetIrq((XAxiDma*)Callback, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrAckIrq((XAxiDma*)Callback, IrqStatus, XAXIDMA_DMA_TO_DEVICE);
    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) TxDone = 1;
}
static void RxIntrHandler(void *Callback) {
    u32 IrqStatus = XAxiDma_IntrGetIrq((XAxiDma*)Callback, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq((XAxiDma*)Callback, IrqStatus, XAXIDMA_DEVICE_TO_DMA);
    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) RxDone = 1;
}