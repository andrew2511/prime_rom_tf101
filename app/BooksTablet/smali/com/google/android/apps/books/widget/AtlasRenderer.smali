.class public Lcom/google/android/apps/books/widget/AtlasRenderer;
.super Ljava/lang/Object;
.source "AtlasRenderer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AtlasRenderer"


# instance fields
.field private mAntiAliasPaint:Landroid/graphics/Paint;

.field private mAtlasCoverRect:Landroid/graphics/Rect;

.field private mAtlasSampleFrontRect:Landroid/graphics/Rect;

.field private mAtlasSampleSpineRect:Landroid/graphics/Rect;

.field private mAtlasSpineBackEdge:Landroid/graphics/Rect;

.field private mBasisBitmap:Landroid/graphics/Bitmap;

.field private mBasisRect:Landroid/graphics/Rect;

.field private mDimPaint:Landroid/graphics/Paint;

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mSampleBackgroundPaint:Landroid/graphics/Paint;

.field private mSampleTextPaint:Landroid/graphics/Paint;

.field private mSampleTextString:Ljava/lang/String;

.field private mShadowRect:Landroid/graphics/Rect;

.field private mSliverBackEdge:Landroid/graphics/Rect;

.field private mSliverRect:Landroid/graphics/Rect;

.field private mSpineRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 10
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x6

    const/4 v8, -0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    .line 36
    iput p3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sub-int/2addr v2, v5

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasCoverRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    const/16 v2, 0x19

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sub-int/2addr v3, v5

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleSpineRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x7

    invoke-direct {v0, v9, v6, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sub-int/2addr v3, v5

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSpineRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSpineBackEdge:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v3, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mShadowRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/widget/AtlasRenderer;->buildDimMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f0d0011

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextString:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/AtlasRenderer;->renderBasisBitmap(Landroid/content/res/Resources;)V

    .line 73
    return-void
.end method

.method private static buildDimMatrix()Landroid/graphics/ColorMatrix;
    .locals 5

    .prologue
    const v4, 0x3e99999a

    .line 137
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 138
    .local v0, desat:Landroid/graphics/ColorMatrix;
    const v3, 0x3e4ccccd

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 140
    const v2, 0x3e99999a

    .line 141
    .local v2, fractionLight:F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 142
    .local v1, dim:Landroid/graphics/ColorMatrix;
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 145
    return-object v0
.end method

.method private renderBasisBitmap(Landroid/content/res/Resources;)V
    .locals 10
    .parameter "res"

    .prologue
    const/4 v9, 0x0

    .line 76
    iget v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    .line 77
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .local v0, bitmapOptionsARGB:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 81
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    const v5, 0x7f020006

    invoke-static {p1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 86
    .local v4, shadowBitmap:Landroid/graphics/Bitmap;
    const v5, 0x7f02004a

    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 90
    .local v2, pageEdgeBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mShadowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    mul-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    mul-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    iget v7, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    .local v3, pageEdgeRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "cover"
    .parameter "spine"
    .parameter "dimmed"
    .parameter "sample"

    .prologue
    const/4 v7, 0x0

    .line 99
    iget v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mWidth:I

    iget v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, atlas:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mDimPaint:Landroid/graphics/Paint;

    move-object v2, v4

    .line 106
    .local v2, paint:Landroid/graphics/Paint;
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mBasisRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v7, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v7, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    if-nez p2, :cond_2

    .line 113
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 114
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 115
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSpineRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSliverBackEdge:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSpineBackEdge:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    :goto_1
    if-eqz p4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleSpineRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasSampleFrontRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    sub-int v3, v4, v5

    .line 129
    .local v3, sampleTextVerticalOrigin:I
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextString:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAtlasCoverRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    iget-object v7, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mSampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    .end local v3           #sampleTextVerticalOrigin:I
    :cond_0
    return-object v0

    .line 103
    .end local v2           #paint:Landroid/graphics/Paint;
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/books/widget/AtlasRenderer;->mAntiAliasPaint:Landroid/graphics/Paint;

    move-object v2, v4

    goto :goto_0

    .line 118
    .restart local v2       #paint:Landroid/graphics/Paint;
    :cond_2
    const-string v4, "AtlasRenderer"

    const-string v5, "AtlasRenderer.render(): Non-null spine not yet implemented"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
