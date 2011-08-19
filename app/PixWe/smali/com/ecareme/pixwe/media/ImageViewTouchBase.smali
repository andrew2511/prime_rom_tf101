.class abstract Lcom/ecareme/pixwe/media/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mLastXTouchPos:I

.field protected mLastYTouchPos:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 216
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/ecareme/pixwe/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 217
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/ecareme/pixwe/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 222
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->init()V

    .line 223
    return-void
.end method

.method private getProperBaseMatrix(Lcom/ecareme/pixwe/media/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v9, 0x4000

    .line 245
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 246
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 248
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 249
    .local v5, w:F
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 250
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 254
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 255
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 256
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 258
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 259
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 261
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 226
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, old:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/ecareme/pixwe/media/RotateBitmap;->setRotation(I)V

    .line 124
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mRecycler:Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mRecycler:Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 174
    iget-object v8, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 213
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 180
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 182
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 184
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 185
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 187
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 189
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 191
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 192
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 200
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 202
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 203
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 211
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 212
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 193
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 194
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 195
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 204
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 205
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 206
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 207
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 131
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 269
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 270
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 231
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 280
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 281
    const/high16 v3, 0x3f80

    .line 287
    :goto_0
    return v3

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 285
    .local v1, fw:F
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 286
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .local v2, max:F
    move v3, v2

    .line 287
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomTo(F)V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 79
    sub-int v1, p4, p2

    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisWidth:I

    .line 80
    sub-int v1, p5, p3

    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mThisHeight:I

    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 82
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getProperBaseMatrix(Lcom/ecareme/pixwe/media/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 88
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 90
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 379
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 380
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 375
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 111
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 138
    new-instance v0, Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/ecareme/pixwe/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/ecareme/pixwe/media/RotateBitmap;Z)V

    .line 139
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/ecareme/pixwe/media/RotateBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 144
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 145
    new-instance v1, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase$1;-><init>(Lcom/ecareme/pixwe/media/ImageViewTouchBase;Lcom/ecareme/pixwe/media/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getProperBaseMatrix(Lcom/ecareme/pixwe/media/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 155
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 161
    :goto_1
    if-eqz p2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 165
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mRecycler:Lcom/ecareme/pixwe/media/ImageViewTouchBase$Recycler;

    .line 72
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 330
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomIn(F)V

    .line 331
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 338
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 346
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 348
    .local v1, cy:F
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 349
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 334
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomOut(F)V

    .line 335
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 353
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 371
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 358
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 361
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 362
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 364
    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 369
    :goto_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 370
    invoke-virtual {p0, v6, v6}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 323
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 324
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 326
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomTo(FFF)V

    .line 327
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 291
    iget v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 292
    iget p1, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mMaxZoom:F

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 296
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 298
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 299
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 300
    invoke-virtual {p0, v3, v3}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->center(ZZ)V

    .line 301
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 305
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 306
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 308
    .local v3, startTime:J
    iget-object v9, p0, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ecareme/pixwe/media/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ecareme/pixwe/media/ImageViewTouchBase$2;-><init>(Lcom/ecareme/pixwe/media/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method
