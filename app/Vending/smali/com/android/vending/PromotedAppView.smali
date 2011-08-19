.class public Lcom/android/vending/PromotedAppView;
.super Landroid/view/View;
.source "PromotedAppView.java"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBadgeBitmap:Landroid/graphics/Bitmap;

.field private mBadgeBitmapDrawMatrix:Landroid/graphics/Matrix;

.field private mBadgeHeight:I

.field private mBadgeWidth:I

.field private mBitmapDstRect:Landroid/graphics/RectF;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapSrcRect:Landroid/graphics/RectF;

.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private mFrameBlackOffset:I

.field private mFrameOffset:I

.field private mReflectionBitmapShader:Landroid/graphics/Shader;

.field private mReflectionComposedShader:Landroid/graphics/Shader;

.field private mReflectionHeight:I

.field private mReflectionMatrix:Landroid/graphics/Matrix;

.field private mReflectionPaint:Landroid/graphics/Paint;

.field private mReflectionShader:Landroid/graphics/Shader;

.field private mReflectionYOffset:I

.field private mReflectionYTop:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedAppView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedAppView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private calculateDimensions()V
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mViewWidth:I

    .line 217
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mViewWidth:I

    iget v1, p0, Lcom/android/vending/PromotedAppView;->mFrameOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    .line 218
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    .line 220
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mFrame:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/vending/PromotedAppView;->mFrameBlackOffset:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mFrameBlackOffset:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    iget v4, p0, Lcom/android/vending/PromotedAppView;->mFrameBlackOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    iget v5, p0, Lcom/android/vending/PromotedAppView;->mFrameBlackOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/vending/PromotedAppView;->mFrameOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionYOffset:I

    .line 224
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    iget v1, p0, Lcom/android/vending/PromotedAppView;->mReflectionHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionYTop:I

    .line 225
    return-void
.end method

.method public static convertAppIconToPromoBadge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 145
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 146
    .local v7, height:I
    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v4, v7, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 148
    .local v8, iconBitmap:Landroid/graphics/Bitmap;
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v0, v8

    move v4, v9

    move v5, v9

    move v6, v3

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 152
    return-object v8
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapSrcRect:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapDstRect:Landroid/graphics/RectF;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 94
    .local v8, resources:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f090008

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionMatrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    const/high16 v6, -0x6000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionShader:Landroid/graphics/Shader;

    .line 102
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmapDrawMatrix:Landroid/graphics/Matrix;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 106
    const v0, 0x7f020067

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v9, scale:F
    const/high16 v0, 0x4140

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionHeight:I

    .line 111
    const/high16 v0, 0x4000

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mFrameOffset:I

    .line 112
    const/high16 v0, 0x40c0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedAppView;->mFrameBlackOffset:I

    .line 113
    return-void
.end method


# virtual methods
.method public getFrameLocation()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppView;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 236
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 237
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mFrameOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 238
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mFrameOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 239
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    .line 173
    iget-object v6, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 174
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 211
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mViewWidth:I

    if-eq v0, v2, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/vending/PromotedAppView;->calculateDimensions()V

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 183
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/vending/PromotedAppView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBitmapDstRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 192
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmapDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mBitmapSrcRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/vending/PromotedAppView;->mBitmapDstRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 194
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmapDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionBitmapShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmapDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 201
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mReflectionHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 202
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/vending/PromotedAppView;->mReflectionYTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 203
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mReflectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 204
    iget-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mReflectionComposedShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 207
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionYOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    const/high16 v0, -0x4080

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 209
    iget v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionYTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/vending/PromotedAppView;->mReflectionPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 164
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 165
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/PromotedAppView;->setMeasuredDimension(II)V

    .line 166
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-static {p1}, Lcom/android/vending/PromotedAppView;->convertAppIconToPromoBadge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/vending/PromotedAppView;->mBadgeBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionBitmapShader:Landroid/graphics/Shader;

    .line 131
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lcom/android/vending/PromotedAppView;->mReflectionBitmapShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/vending/PromotedAppView;->mReflectionShader:Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppView;->mReflectionComposedShader:Landroid/graphics/Shader;

    .line 133
    return-void
.end method
