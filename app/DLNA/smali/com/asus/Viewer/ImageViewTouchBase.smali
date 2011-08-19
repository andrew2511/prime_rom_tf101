.class public Lcom/asus/Viewer/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/Viewer/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmapDisplayed:Landroid/graphics/Bitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

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

    .line 201
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    iput-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 60
    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisHeight:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 202
    invoke-direct {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->init()V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    iput-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 60
    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisHeight:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 207
    invoke-direct {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->init()V

    .line 208
    return-void
.end method

.method private getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x4040

    const/high16 v9, 0x4000

    .line 230
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 231
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 233
    .local v3, viewHeight:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 234
    .local v5, w:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 235
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 239
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 240
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 241
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 243
    .local v2, scale:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 244
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 246
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 249
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
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

    .line 157
    iget-object v8, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 198
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 163
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 167
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 169
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 170
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 172
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 174
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 176
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 177
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 185
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 187
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 188
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 196
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->postTranslate(FF)V

    .line 197
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 178
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 179
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 180
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 189
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 190
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 191
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 192
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 115
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 256
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 257
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 216
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 267
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 268
    const/high16 v3, 0x3f80

    .line 279
    :goto_0
    return v3

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 272
    .local v1, fw:F
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 273
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 275
    .local v2, max:F
    const/high16 v3, 0x4040

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 276
    const/high16 v2, 0x4040

    .line 277
    :cond_1
    const/high16 v3, 0x40c0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 278
    const/high16 v2, 0x40c0

    :cond_2
    move v3, v2

    .line 279
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
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    sub-int v1, p4, p2

    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisWidth:I

    .line 81
    sub-int v1, p5, p3

    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mThisHeight:I

    .line 82
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 83
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/asus/Viewer/ImageViewTouchBase;->postTranslate(FF)V

    .line 405
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 406
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 396
    return-void
.end method

.method protected postTranslateCenter(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/asus/Viewer/ImageViewTouchBase;->postTranslate(FF)V

    .line 400
    invoke-virtual {p0, v0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->center(ZZ)V

    .line 401
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 125
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 126
    new-instance v1, Lcom/asus/Viewer/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/Viewer/ImageViewTouchBase$1;-><init>(Lcom/asus/Viewer/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V

    iput-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :goto_1
    if-eqz p2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 148
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected zoomByFactor(FFF)V
    .locals 5
    .parameter "factor"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    .line 286
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpl-float v1, p1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    iget v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_3

    .line 292
    iget v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 293
    .local v0, deltaScale:F
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 297
    .end local v0           #deltaScale:F
    :goto_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 302
    invoke-virtual {p0, v4, v4}, Lcom/asus/Viewer/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 351
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomIn(F)V

    .line 352
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 359
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 367
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 369
    .local v1, cy:F
    iget-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 370
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 355
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomOut(F)V

    .line 356
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 374
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 392
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 379
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 382
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 383
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 385
    invoke-virtual {p0, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 390
    :goto_1
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 391
    invoke-virtual {p0, v6, v6}, Lcom/asus/Viewer/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

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

    .line 337
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 338
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 340
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomTo(FFF)V

    .line 341
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 305
    iget v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 306
    iget p1, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mMaxZoom:F

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 309
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 311
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 312
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 313
    invoke-virtual {p0, v3, v3}, Lcom/asus/Viewer/ImageViewTouchBase;->center(ZZ)V

    .line 314
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 319
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 320
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 322
    .local v3, startTime:J
    iget-object v9, p0, Lcom/asus/Viewer/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/asus/Viewer/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/asus/Viewer/ImageViewTouchBase$2;-><init>(Lcom/asus/Viewer/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/high16 v3, 0x4000

    .line 344
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 345
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/asus/Viewer/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 346
    .local v1, cy:F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/asus/Viewer/ImageViewTouchBase;->panBy(FF)V

    .line 347
    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->zoomTo(FFF)V

    .line 348
    return-void
.end method
