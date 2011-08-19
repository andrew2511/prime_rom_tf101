.class public Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.super Lcom/newspaperdirect/pressreader/android/BaseZoomView;
.source "SinglePageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;,
        Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;,
        Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;,
        Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;,
        Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;
    }
.end annotation


# static fields
.field private static final MAX_AVAILABLE_ZOOM:F = 5.0f

.field private static final SCROLL_ANIMATION_DURATION:I = 0x96

.field private static final ZOOM_ANIMATION_DURATION:I = 0x1f4

.field private static final ZOOM_CLOSE_THRESHOLD:F = 0.3f

.field private static final ZOOM_TRANSITION_THRESHOLD:F = 0.3f


# instance fields
.field private canUsePaintOnDraw:Z

.field private mArticlesPicture:Landroid/graphics/Picture;

.field private mCurrentScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOriginalPosition:Landroid/graphics/RectF;

.field private mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewBg:Landroid/graphics/Bitmap;

.field private mPreviewFg:Landroid/graphics/Bitmap;

.field private mPreviewScale:F

.field private mRawX:F

.field private mRawY:F

.field private mX:F

.field private mY:F

.field private mZoomBg:Landroid/graphics/Bitmap;

.field private mZoomScale:F

.field private rescaling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    .line 43
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    .line 44
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->initGestures()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    .line 43
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    .line 44
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 76
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->initGestures()V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    return-void
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    return-void
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    return-void
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    return-void
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    return v0
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    return v0
.end method

.method static synthetic access$17(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$18(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$19(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    return v0
.end method

.method static synthetic access$20(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->rescaling:Z

    return-void
.end method

.method static synthetic access$21(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->initGestures()V

    return-void
.end method

.method static synthetic access$22(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->recycleBitmaps()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->close()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    return v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)F
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    return v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->scroll(FF)V

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Z
    .locals 1
    .parameter

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->adjustPosition()Z

    move-result v0

    return v0
.end method

.method private adjustPosition()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 326
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getAdjustmentX()F

    move-result v1

    .line 327
    .local v1, dx:F
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getAdjustmentY()F

    move-result v2

    .line 328
    .local v2, dy:F
    float-to-int v3, v1

    if-nez v3, :cond_0

    float-to-int v3, v2

    if-nez v3, :cond_0

    .line 329
    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    .line 330
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 331
    const/4 v3, 0x0

    .line 345
    :goto_0
    return v3

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 334
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;

    invoke-direct {v0, p0, v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ScrollAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 335
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 336
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 337
    new-instance v3, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$5;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$5;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->startAnimation(Landroid/view/animation/Animation;)V

    move v3, v5

    .line 345
    goto :goto_0
.end method

.method private close()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnZoomClosingListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnZoomClosingListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;

    invoke-interface {v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosingListener;->onZoomClosing()V

    .line 443
    :cond_0
    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    .line 444
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->recyclePageCells()V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    .line 446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->rescaling:Z

    .line 447
    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setBackgroundColor(I)V

    .line 448
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    .line 449
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    .line 450
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOriginalPosition:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOriginalPosition:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    sub-float/2addr v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FFF)V

    .line 451
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 452
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 453
    new-instance v1, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 469
    return-void
.end method

.method private getAdjustmentX()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v0

    .line 350
    .local v0, w:I
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    neg-float v1, v1

    .line 352
    :goto_0
    return v1

    .line 351
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    int-to-float v1, v0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v2

    iget v2, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v5

    .line 352
    goto :goto_0
.end method

.method private getAdjustmentY()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v0

    .line 357
    .local v0, h:I
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    neg-float v1, v1

    .line 359
    :goto_0
    return v1

    .line 358
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    int-to-float v1, v0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v2

    iget v2, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v5

    .line 359
    goto :goto_0
.end method

.method private getValueByRawValue(FFF)F
    .locals 2
    .parameter "rawValue"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 397
    mul-float v0, p3, p1

    add-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private initGestures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 401
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 402
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$6;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 438
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;

    invoke-direct {v0, p0, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$TouchEventListener;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    return-void
.end method

.method private recycleBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->recyclePageCells()V

    .line 306
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    .line 307
    return-void
.end method

.method private recyclePageCells()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->recycle()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    .line 314
    :cond_0
    return-void
.end method

.method private scroll(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v3

    .line 365
    .local v3, w:I
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v2

    .line 366
    .local v2, h:I
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v4

    iget v4, v4, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float v1, v4, v5

    .line 367
    .local v1, bmw:F
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v4

    iget v4, v4, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float v0, v4, v5

    .line 368
    .local v0, bmh:F
    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    const/4 p1, 0x0

    .line 369
    :cond_0
    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    const/4 p2, 0x0

    .line 370
    :cond_1
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    .line 371
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    .line 372
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->updateX()V

    .line 373
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->updateY()V

    .line 374
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const v5, 0x3e99999a

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->updateCells()V

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 376
    return-void
.end method

.method private updateCells()V
    .locals 3

    .prologue
    .line 317
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    invoke-direct {p0, v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->updateCells(FFF)V

    .line 318
    return-void
.end method

.method private updateCells(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "s"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, p2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, p3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->updateBitmaps(Landroid/graphics/RectF;F)V

    goto :goto_0
.end method

.method private updateX()V
    .locals 5

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v0

    .line 380
    .local v0, w:I
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    int-to-float v2, v0

    div-int/lit8 v3, v0, 0x3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getValueByRawValue(FFF)F

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 382
    int-to-float v1, v0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v2

    iget v2, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 383
    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-int/lit8 v4, v0, 0x3

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getValueByRawValue(FFF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 382
    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    goto :goto_0

    .line 384
    :cond_1
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    goto :goto_0
.end method

.method private updateY()V
    .locals 5

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v0

    .line 389
    .local v0, h:I
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    int-to-float v2, v0

    div-int/lit8 v3, v0, 0x3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getValueByRawValue(FFF)F

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 391
    int-to-float v1, v0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v2

    iget v2, v2, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 392
    int-to-float v2, v0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v3

    iget v3, v3, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-int/lit8 v4, v0, 0x3

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getValueByRawValue(FFF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 391
    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    goto :goto_0

    .line 393
    :cond_1
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    goto :goto_0
.end method


# virtual methods
.method protected addHightlights(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 11
    .parameter "page"

    .prologue
    .line 119
    iget-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mHightlightArticles:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 120
    new-instance v7, Landroid/graphics/Picture;

    invoke-direct {v7}, Landroid/graphics/Picture;-><init>()V

    iput-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    .line 121
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .local v2, paint:Landroid/graphics/Paint;
    const v7, -0x7fa37f43

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v8

    iget v8, v8, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v9

    iget v9, v9, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 124
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getArticles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 136
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    invoke-virtual {v7}, Landroid/graphics/Picture;->endRecording()V

    .line 139
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 124
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #paint:Landroid/graphics/Paint;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    .line 125
    .local v0, article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getTitle()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v6

    .line 126
    .local v6, title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->getRects()Ljava/util/List;

    move-result-object v5

    .line 128
    .local v5, rects:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 129
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    .line 130
    .local v4, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/16 v10, 0x14

    if-ge v9, v10, :cond_2

    const/4 v9, 0x3

    :goto_2
    int-to-float v3, v9

    .line 131
    .local v3, rad:F
    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v9, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 130
    .end local v3           #rad:F
    :cond_2
    const/16 v9, 0x8

    goto :goto_2

    .line 138
    .end local v0           #article:Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v4           #rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .end local v5           #rects:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;>;"
    .end local v6           #title:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 277
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    .line 278
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 279
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 281
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 282
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    .line 283
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    .line 284
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setVisibility(I)V

    .line 285
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 198
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    const v15, 0x3e99999a

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->rescaling:Z

    move v14, v0

    if-eqz v14, :cond_7

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-nez v14, :cond_2

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    .local v9, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move v15, v0

    div-float v12, v14, v15

    .line 202
    .local v12, scale:F
    invoke-virtual {v9, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    move v14, v0

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object v10, v14

    .line 206
    .local v10, paint:Landroid/graphics/Paint;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 214
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 259
    .end local v9           #matrix:Landroid/graphics/Matrix;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->rescaling:Z

    move v14, v0

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    move v14, v0

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mArticlesPicture:Landroid/graphics/Picture;

    move-object v14, v0

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 204
    .end local v10           #paint:Landroid/graphics/Paint;
    .restart local v9       #matrix:Landroid/graphics/Matrix;
    :cond_5
    const/4 v14, 0x0

    move-object v10, v14

    goto/16 :goto_1

    .line 207
    .restart local v10       #paint:Landroid/graphics/Paint;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-eqz v14, :cond_3

    .line 208
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v8, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    move v15, v0

    div-float v11, v14, v15

    .line 210
    .local v11, s:F
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v8, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v8

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 217
    .end local v8           #m:Landroid/graphics/Matrix;
    .end local v9           #matrix:Landroid/graphics/Matrix;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v11           #s:F
    .end local v12           #scale:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->canUsePaintOnDraw:Z

    move v14, v0

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object v10, v14

    .line 219
    .restart local v10       #paint:Landroid/graphics/Paint;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-eqz v14, :cond_8

    .line 220
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 221
    .restart local v9       #matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move v15, v0

    div-float v12, v14, v15

    .line 222
    .restart local v12       #scale:F
    invoke-virtual {v9, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 226
    .end local v9           #matrix:Landroid/graphics/Matrix;
    .end local v12           #scale:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    move v15, v0

    div-float v12, v14, v15

    .line 227
    .restart local v12       #scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 228
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 229
    .restart local v9       #matrix:Landroid/graphics/Matrix;
    invoke-virtual {v9, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomBg:Landroid/graphics/Bitmap;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 233
    .end local v9           #matrix:Landroid/graphics/Matrix;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-object v14, v0

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    invoke-direct/range {v15 .. v19}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->getVisiblePageCells(Landroid/graphics/RectF;F)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    .line 235
    .local v6, cell:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 236
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_c

    .line 237
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 238
    .restart local v9       #matrix:Landroid/graphics/Matrix;
    invoke-virtual {v9, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v15, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v16, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move-object v0, v9

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 240
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 217
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #cell:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    .end local v9           #matrix:Landroid/graphics/Matrix;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #scale:F
    :cond_b
    const/4 v14, 0x0

    move-object v10, v14

    goto/16 :goto_3

    .line 242
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #cell:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    .restart local v10       #paint:Landroid/graphics/Paint;
    .restart local v12       #scale:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    move-object v15, v0

    if-eqz v15, :cond_a

    .line 243
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 244
    .local v13, src:Landroid/graphics/Rect;
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v13, Landroid/graphics/Rect;->left:I

    .line 245
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v13, Landroid/graphics/Rect;->right:I

    .line 246
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v13, Landroid/graphics/Rect;->top:I

    .line 247
    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v13, Landroid/graphics/Rect;->bottom:I

    .line 248
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 249
    .local v7, dst:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v15, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->left:F

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v15, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->right:F

    .line 251
    iget v15, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->right:F

    .line 252
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->top:F

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->getRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->bottom:F

    .line 254
    iget v15, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v7, Landroid/graphics/RectF;->bottom:F

    .line 255
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v13

    move-object v3, v7

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->recycleBitmaps()V

    .line 290
    return-void
.end method

.method public setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 5
    .parameter "page"

    .prologue
    const/4 v4, 0x0

    .line 81
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 82
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->recycleBitmaps()V

    .line 83
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getZoomScales()[I

    move-result-object v2

    aget v2, v2, v4

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mZoomScale:F

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 85
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;

    invoke-direct {v2, p0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/os/Handler;)V

    .line 103
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->start()V

    .line 104
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadPurgeableBitmaps(Ljava/io/File;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, bitmaps:[Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 106
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewBg:Landroid/graphics/Bitmap;

    .line 107
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewFg:Landroid/graphics/Bitmap;

    .line 109
    :cond_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;-><init>(Landroid/content/Context;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    .line 110
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPageCells:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    new-instance v3, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$2;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->setOnBitmapLoadedListener(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->addHightlights(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 116
    return-void
.end method

.method public setCurrentPosition(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 151
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    .line 152
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    .line 153
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v1

    iget v1, v1, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    .line 154
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    const v1, 0x3e99999a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->close()V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setBackgroundColor(I)V

    .line 157
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->adjustPosition()Z

    goto :goto_0
.end method

.method public setHighlightArticles(Z)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 659
    invoke-super {p0, p1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setHighlightArticles(Z)V

    .line 660
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->addHightlights(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 662
    :cond_0
    return-void
.end method

.method public setOriginalPosition(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOriginalPosition:Landroid/graphics/RectF;

    .line 144
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawX:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    .line 145
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mRawY:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    .line 146
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v1

    iget v1, v1, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mPreviewScale:F

    .line 147
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->invalidate()V

    .line 656
    return-void
.end method

.method public setScale(FFF)V
    .locals 9
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 163
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    .line 164
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_0

    .line 192
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->rescaling:Z

    .line 166
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 167
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getWidth()I

    move-result v2

    .line 168
    .local v2, swidth:I
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getHeight()I

    move-result v1

    .line 169
    .local v1, sheight:I
    int-to-float v5, v2

    div-float/2addr v5, v8

    mul-float v6, p2, p1

    sub-float v3, v5, v6

    .line 170
    .local v3, xTo:F
    cmpl-float v5, v3, v7

    if-lez v5, :cond_3

    const/4 v3, 0x0

    .line 172
    :cond_1
    :goto_1
    int-to-float v5, v1

    div-float/2addr v5, v8

    mul-float v6, p3, p1

    sub-float v4, v5, v6

    .line 173
    .local v4, yTo:F
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    const/4 v4, 0x0

    .line 175
    :cond_2
    :goto_2
    invoke-direct {p0, v3, v4, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->updateCells(FFF)V

    .line 176
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mX:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mY:F

    sub-float v6, v4, v6

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentScale:F

    sub-float v7, p1, v7

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$ZoomAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FFF)V

    .line 177
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 179
    new-instance v5, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 171
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v4           #yTo:F
    :cond_3
    int-to-float v5, v2

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float v3, v5, v6

    goto :goto_1

    .line 174
    .restart local v4       #yTo:F
    :cond_4
    int-to-float v5, v1

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    int-to-float v5, v1

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-float v4, v5, v6

    goto :goto_2
.end method

.method public show()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$4;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    .line 271
    const-wide/16 v1, 0x80

    .line 266
    invoke-virtual {p0, v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setVisibility(I)V

    .line 273
    return-void
.end method
