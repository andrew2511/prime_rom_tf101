.class public Lcom/android/videoeditor/widgets/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;
    }
.end annotation


# static fields
.field private static final MIN_ZOOM_SCALE:F = 1.0f

.field private static final SCALE_RATE:F = 1.25f


# instance fields
.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmapDisplayed:Landroid/graphics/Bitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mEventListener:Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;

.field private final mMatrixValues:[F

.field private mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mStretch:Z

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mThisHeight:I

.field private mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMatrixValues:[F

    .line 66
    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisHeight:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mStretch:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 87
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMatrixValues:[F

    .line 66
    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisHeight:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mStretch:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 98
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMatrixValues:[F

    .line 66
    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisHeight:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mStretch:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 110
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    return-void
.end method

.method private center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 479
    iget-object v8, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 518
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 484
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 487
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 489
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 490
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 491
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 493
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 495
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 496
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 504
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 506
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 507
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 515
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 517
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 497
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 498
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 499
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 508
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 509
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 510
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 511
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method private correctedZoomScale(F)F
    .locals 2
    .parameter "scale"

    .prologue
    .line 343
    move v0, p1

    .line 344
    .local v0, result:F
    iget v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 345
    iget v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMaxZoom:F

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 347
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 292
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 293
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x4120

    const/high16 v9, 0x4000

    .line 265
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 266
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 268
    .local v3, viewHeight:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 269
    .local v5, w:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 270
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    iget-boolean v7, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mStretch:Z

    if-eqz v7, :cond_0

    .line 275
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 276
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 277
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 278
    .local v2, scale:F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 283
    .end local v1           #heightScale:F
    .end local v2           #scale:F
    .end local v6           #widthScale:F
    :goto_0
    return-void

    .line 281
    :cond_0
    sub-float v7, v4, v5

    div-float/2addr v7, v9

    sub-float v8, v3, v0

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 529
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private maxZoom()F
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 312
    const/high16 v2, 0x3f80

    .line 318
    :goto_0
    return v2

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 316
    .local v1, fw:F
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 318
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method public static maxZoom(IIII)F
    .locals 4
    .parameter "bitmapWidth"
    .parameter "bitmapHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 329
    int-to-float v2, p0

    int-to-float v3, p2

    div-float v1, v2, v3

    .line 330
    .local v1, fw:F
    int-to-float v2, p1

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 332
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    return v2
.end method

.method private panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 240
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mEventListener:Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mEventListener:Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;

    invoke-interface {v0, p1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;->onImageTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 256
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 120
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisWidth:I

    .line 121
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mThisHeight:I

    .line 122
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 123
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 125
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 129
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public postTranslateCenter(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 227
    invoke-direct {p0, v1, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->center(ZZ)V

    .line 228
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mEventListener:Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;

    .line 166
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mStretch:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 184
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 185
    new-instance v1, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase$1;-><init>(Lcom/android/videoeditor/widgets/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 207
    :goto_0
    return-void

    .line 193
    :cond_0
    if-eqz p1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    :goto_1
    if-eqz p2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 206
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 422
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomIn(F)V

    .line 423
    return-void
.end method

.method public zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 431
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 433
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 435
    .local v1, cy:F
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 436
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 438
    .end local v0           #cx:F
    .end local v1           #cy:F
    :cond_0
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 444
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomOut(F)V

    .line 445
    return-void
.end method

.method public zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 453
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 455
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 458
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 459
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 461
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 466
    :goto_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 467
    invoke-direct {p0, v6, v6}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->center(ZZ)V

    .line 469
    .end local v0           #cx:F
    .end local v1           #cy:F
    .end local v2           #tmp:Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 464
    .restart local v0       #cx:F
    .restart local v1       #cy:F
    .restart local v2       #tmp:Landroid/graphics/Matrix;
    :cond_1
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0
.end method

.method public zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 377
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 378
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 380
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(FFF)V

    .line 381
    return-void
.end method

.method public zoomTo(FFF)V
    .locals 5
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x1

    .line 361
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->correctedZoomScale(F)F

    move-result v0

    .line 363
    .local v0, correctedScale:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 364
    .local v2, oldScale:F
    div-float v1, v0, v2

    .line 366
    .local v1, deltaScale:F
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 367
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 368
    invoke-direct {p0, v4, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->center(ZZ)V

    .line 369
    return-void
.end method

.method public zoomToOffset(FFF)V
    .locals 5
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->correctedZoomScale(F)F

    move-result v0

    .line 409
    .local v0, correctedScale:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v2

    .line 410
    .local v2, oldScale:F
    div-float v1, v0, v2

    .line 412
    .local v1, deltaScale:F
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 413
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 415
    neg-float v3, p2

    neg-float v4, p3

    invoke-direct {p0, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->panBy(FF)V

    .line 416
    return-void
.end method

.method public zoomToPoint(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/high16 v3, 0x4000

    .line 391
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 392
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 394
    .local v1, cy:F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->panBy(FF)V

    .line 395
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(FFF)V

    .line 396
    return-void
.end method
