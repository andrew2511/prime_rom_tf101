.class public Lcom/android/launcher2/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field public static final MAX_OUTER_BLUR_RADIUS:I

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v2, 0x4140

    const/high16 v6, 0x40c0

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 50
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    .line 52
    .local v0, scale:F
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 53
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 64
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    const/16 v1, 0xb4

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 77
    .local v0, alphaClipTable:Landroid/graphics/MaskFilter;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 78
    return-void
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 20
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "thickness"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 132
    .local v13, glowShape:Landroid/graphics/Bitmap;
    packed-switch p5, :pswitch_data_0

    .line 143
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid blur thickness"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :pswitch_0
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 145
    .local v15, outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 146
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 147
    .local v16, outerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 148
    .local v19, thickOuterBlur:Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 154
    :goto_1
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 155
    .local v12, brightOutlineOffset:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v13, v5, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 158
    .local v11, brightOutline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    const/high16 v5, -0x100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    packed-switch p5, :pswitch_data_1

    .line 172
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid blur thickness"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v11           #brightOutline:Landroid/graphics/Bitmap;
    .end local v12           #brightOutlineOffset:[I
    .end local v15           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v16           #outerBlurOffset:[I
    .end local v19           #thickOuterBlur:Landroid/graphics/Bitmap;
    :pswitch_1
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 138
    .restart local v15       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 140
    .end local v15           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 141
    .restart local v15       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 151
    .restart local v16       #outerBlurOffset:[I
    .restart local v19       #thickOuterBlur:Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    .line 163
    .restart local v11       #brightOutline:Landroid/graphics/Bitmap;
    .restart local v12       #brightOutlineOffset:[I
    :pswitch_3
    sget-object v14, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 174
    .local v14, innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 175
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 176
    .local v18, thickInnerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 179
    .local v17, thickInnerBlur:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    const/4 v5, 0x0

    aget v5, v18, v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    neg-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    aget v5, v18, v5

    neg-int v5, v5

    int-to-float v8, v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v8, v5

    const/4 v5, 0x1

    aget v5, v18, v5

    neg-int v5, v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    const/4 v5, 0x0

    aget v5, v18, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    const/4 v5, 0x0

    aget v5, v16, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v16, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    const/4 v5, 0x0

    aget v5, v12, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p2

    move-object v1, v11

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    return-void

    .line 166
    .end local v14           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v17           #thickInnerBlur:Landroid/graphics/Bitmap;
    .end local v18           #thickInnerBlurOffset:[I
    :pswitch_4
    sget-object v14, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 167
    .restart local v14       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 169
    .end local v14           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    sget-object v14, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 170
    .restart local v14       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 161
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 210
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 211
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 220
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 221
    return-void
.end method

.method applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "bitmap"
    .parameter "canvas"
    .parameter "color"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 108
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, glow:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 112
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 215
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 216
    return-void
.end method

.method public highlightAlphaInterpolator(F)F
    .locals 5
    .parameter "r"

    .prologue
    .line 85
    const v0, 0x3f4ccccd

    .line 86
    .local v0, maxAlpha:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public viewAlphaInterpolator(F)F
    .locals 5
    .parameter "r"

    .prologue
    const v2, 0x3f733333

    .line 93
    const v0, 0x3f733333

    .line 94
    .local v0, pivot:F
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 95
    div-float v1, p1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 97
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0
.end method
