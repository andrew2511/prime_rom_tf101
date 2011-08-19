.class public Lcom/android/vending/PromotedCategoryView;
.super Landroid/view/View;
.source "PromotedCategoryView.java"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBadgeHeight:I

.field private mBadgeWidth:I

.field private mBitmapDrawMatrix:[Landroid/graphics/Matrix;

.field private mBitmapDstRect:Landroid/graphics/RectF;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapSrcRect:Landroid/graphics/RectF;

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBlackLeftOffset:I

.field private mFrameBlackMiddleOffset:I

.field private mFrameBlackRightPostOffset:I

.field private mFrameBlackRightPreOffset:I

.field private mFrameBlackYOffset:I

.field private mFrameBottomOffset:I

.field private mFrameLeft:Landroid/graphics/drawable/Drawable;

.field private mFrameMiddle:Landroid/graphics/drawable/Drawable;

.field private mFrameRight:Landroid/graphics/drawable/Drawable;

.field private mFrameSpacingOffset:I

.field private mNumBitmaps:I

.field private mReflectionBitmapShader:[Landroid/graphics/Shader;

.field private mReflectionComposedShader:[Landroid/graphics/Shader;

.field private mReflectionHeight:I

.field private mReflectionMatrix:[Landroid/graphics/Matrix;

.field private mReflectionPaint:[Landroid/graphics/Paint;

.field private mReflectionShader:[Landroid/graphics/Shader;

.field private mReflectionYOffset:I

.field private mReflectionYTop:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedCategoryView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedCategoryView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method private calculateDimensions()V
    .locals 6

    .prologue
    .line 237
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mNumBitmaps:I

    if-gtz v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/PromotedCategoryView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/vending/PromotedCategoryView;->mViewWidth:I

    .line 243
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mViewWidth:I

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mNumBitmaps:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    .line 244
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    int-to-float v2, v2

    const v3, 0x3f2aaaab

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    .line 247
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    add-int v0, v2, v3

    .line 248
    .local v0, baseFrameWidth:I
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackYOffset:I

    add-int v1, v2, v3

    .line 249
    .local v1, frameHeight:I
    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mFrameLeft:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackLeftOffset:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackYOffset:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mFrameMiddle:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackMiddleOffset:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackYOffset:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mFrameRight:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackRightPreOffset:I

    neg-int v3, v3

    iget v4, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackYOffset:I

    neg-int v4, v4

    iget v5, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackRightPostOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBottomOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionYOffset:I

    .line 257
    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionYTop:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/high16 v13, 0x40c0

    const/high16 v4, 0x3f80

    const/4 v12, 0x5

    const/4 v1, 0x0

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapSrcRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDstRect:Landroid/graphics/RectF;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 103
    .local v9, resources:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f090008

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-array v0, v12, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDrawMatrix:[Landroid/graphics/Matrix;

    .line 108
    new-array v0, v12, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionPaint:[Landroid/graphics/Paint;

    .line 109
    new-array v0, v12, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionMatrix:[Landroid/graphics/Matrix;

    .line 110
    new-array v0, v12, [Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionBitmapShader:[Landroid/graphics/Shader;

    .line 111
    new-array v0, v12, [Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionShader:[Landroid/graphics/Shader;

    .line 112
    new-array v0, v12, [Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionComposedShader:[Landroid/graphics/Shader;

    .line 114
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    if-ge v8, v12, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDrawMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v0, v8

    .line 116
    iget-object v11, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionShader:[Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v5, -0x100

    const/high16 v6, -0x6000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    aput-object v0, v11, v8

    .line 118
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionPaint:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v0, v8

    .line 119
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v0, v8

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 124
    const v0, 0x7f020065

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameLeft:Landroid/graphics/drawable/Drawable;

    .line 125
    const v0, 0x7f020066

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameMiddle:Landroid/graphics/drawable/Drawable;

    .line 126
    const v0, 0x7f020069

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameRight:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 131
    .local v10, scale:F
    const/high16 v0, 0x41f0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionHeight:I

    .line 132
    mul-float v0, v4, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    .line 133
    const/high16 v0, 0x4000

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBottomOffset:I

    .line 134
    mul-float v0, v13, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackYOffset:I

    .line 135
    mul-float v0, v13, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackLeftOffset:I

    .line 136
    mul-float v0, v4, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackMiddleOffset:I

    .line 137
    mul-float v0, v1, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackRightPreOffset:I

    .line 138
    const/high16 v0, 0x4080

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameBlackRightPostOffset:I

    .line 139
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v1, 0x0

    .line 186
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mNumBitmaps:I

    if-gtz v0, :cond_1

    .line 234
    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/PromotedCategoryView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mViewWidth:I

    if-eq v0, v2, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/android/vending/PromotedCategoryView;->calculateDimensions()V

    .line 193
    :cond_2
    iget-object v7, p0, Lcom/android/vending/PromotedCategoryView;->mFrameLeft:Landroid/graphics/drawable/Drawable;

    .line 194
    .local v7, d:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    int-to-float v9, v0

    .line 195
    .local v9, x:F
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mNumBitmaps:I

    if-ge v8, v0, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/vending/PromotedCategoryView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmaps:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 205
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 206
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDstRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDrawMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapSrcRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDstRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 209
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDrawMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 212
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionBitmapShader:[Landroid/graphics/Shader;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mBitmapDrawMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 216
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v8

    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 217
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v8

    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionYTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionShader:[Landroid/graphics/Shader;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 219
    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionComposedShader:[Landroid/graphics/Shader;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 220
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionYOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    const/high16 v0, -0x4080

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 222
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionYTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeHeight:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/vending/PromotedCategoryView;->mReflectionPaint:[Landroid/graphics/Paint;

    aget-object v5, v0, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mBadgeWidth:I

    iget v2, p0, Lcom/android/vending/PromotedCategoryView;->mFrameSpacingOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v9, v0

    .line 228
    iget v0, p0, Lcom/android/vending/PromotedCategoryView;->mNumBitmaps:I

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    if-ge v8, v0, :cond_3

    .line 229
    iget-object v7, p0, Lcom/android/vending/PromotedCategoryView;->mFrameMiddle:Landroid/graphics/drawable/Drawable;

    .line 195
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 231
    :cond_3
    iget-object v7, p0, Lcom/android/vending/PromotedCategoryView;->mFrameRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 177
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 178
    .local v0, heightSize:I
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/PromotedCategoryView;->setMeasuredDimension(II)V

    .line 179
    return-void
.end method
