.class public abstract Lcom/android/vending/velvet/CarouselView;
.super Lcom/android/vending/velvet/ArcView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/velvet/CarouselView$ImageLoader;,
        Lcom/android/vending/velvet/CarouselView$Thumbnail;,
        Lcom/android/vending/velvet/CarouselView$Dimension;,
        Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    }
.end annotation


# instance fields
.field private final mAutoAdvanceHandler:Landroid/os/Handler;

.field private final mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private mBaseActivity:Lcom/android/vending/BaseActivity;

.field private final mBitmapSrcRectangle:Landroid/graphics/Rect;

.field private final mCenterPoint:Landroid/graphics/Point;

.field protected mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

.field protected mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

.field private mCurrAutoAdvanceInterval:I

.field protected mCurrIndexAtCenter:F

.field private final mDeceleration:F

.field private final mDistanceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/velvet/CarouselView$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mDistanceScrolledSinceLastDown:F

.field private mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

.field private mFrontedAsset:Lcom/android/vending/model/Asset;

.field protected mFrontedPriceOrStateView:Landroid/widget/TextView;

.field protected mFrontedPromoDescTextView:Landroid/widget/TextView;

.field protected mFrontedRatingBar:Landroid/widget/RatingBar;

.field protected mFrontedSnippetView:Landroid/view/View;

.field protected mFrontedTitleTextView:Landroid/widget/TextView;

.field private mFrontedViewsVisibility:I

.field private mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

.field private mImagesToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexOfFirstLoadingAsset:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOrigIndexAtCenter:F

.field private mPlaceholderBitmap:Landroid/graphics/Bitmap;

.field private mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

.field protected final mScrollThreshold:I

.field private final mThumbnailPaint:Landroid/graphics/Paint;

.field protected mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

.field protected final mTileSize:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mZOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/velvet/CarouselView$Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/ArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 422
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mScrollThreshold:I

    .line 423
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    const/high16 v2, 0x42f0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 426
    .local v0, ppi:F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    .line 431
    iput v3, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    .line 432
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 436
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    .line 437
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 440
    new-instance v1, Lcom/android/vending/velvet/CarouselView$1;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$1;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mDistanceComparator:Ljava/util/Comparator;

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    .line 455
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    .line 457
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 460
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    .line 461
    new-instance v1, Lcom/android/vending/velvet/CarouselView$2;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$2;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 483
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    .line 484
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->scheduleAutoAdvance()V

    .line 485
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/velvet/CarouselView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->hasInteractiveContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/vending/velvet/CarouselView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/vending/velvet/CarouselView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->scheduleAutoAdvance()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->createAndRunFadeInSequencer()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/velvet/CarouselView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/velvet/CarouselView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/vending/velvet/CarouselView;FJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/velvet/CarouselView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/vending/velvet/CarouselView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mOrigIndexAtCenter:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->updateFrontedViews()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/vending/velvet/CarouselView;Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    return-object p1
.end method

.method private cancelScrolling()V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1518
    const v0, 0x9c40

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    .line 1519
    return-void
.end method

.method private computeThumbnailsDisplayState(II)V
    .locals 20
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 594
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v13, v16, v10

    .line 597
    .local v13, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_4

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    .line 622
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->getThumbnailCenterLocation(Lcom/android/vending/velvet/CarouselView$Thumbnail;II)Landroid/graphics/Point;

    move-result-object v14

    .line 624
    .local v14, thumbnailCenter:Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/CarouselView;->getAlpha(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F

    move-result v16

    move/from16 v0, v16

    move-object v1, v13

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mLocationBasedAlpha:F

    .line 627
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/CarouselView;->getScalingFactor(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F

    move-result v12

    .line 629
    .local v12, scalingFactor:F
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 630
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 631
    .local v11, needsLoading:Z
    if-nez v5, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 633
    const/4 v11, 0x1

    .line 635
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 636
    .local v7, bitmapWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 638
    .local v6, bitmapHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v9, v16, v17

    .line 639
    .local v9, hardScalingFactor:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-lez v16, :cond_1

    .line 641
    const/high16 v9, 0x3f80

    .line 644
    :cond_1
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 646
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 648
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 650
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 653
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    move-object v1, v13

    iput-boolean v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    .line 655
    if-eqz v11, :cond_2

    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_2
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 660
    move-object v0, v13

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    .line 594
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 600
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapHeight:I
    .end local v7           #bitmapWidth:I
    .end local v9           #hardScalingFactor:F
    .end local v11           #needsLoading:Z
    .end local v12           #scalingFactor:F
    .end local v14           #thumbnailCenter:Landroid/graphics/Point;
    :cond_4
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    sub-float v8, v16, v17

    .line 602
    .local v8, distToCenter:F
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_6

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v16, v8

    .line 605
    .local v15, wrapped:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v15

    if-gez v16, :cond_5

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v8

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 608
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 612
    .end local v15           #wrapped:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v8, v16

    .line 613
    .restart local v15       #wrapped:F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v8

    if-gez v16, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 616
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move v0, v8

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    goto/16 :goto_1

    .line 653
    .end local v8           #distToCenter:F
    .end local v15           #wrapped:F
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #bitmapHeight:I
    .restart local v7       #bitmapWidth:I
    .restart local v9       #hardScalingFactor:F
    .restart local v11       #needsLoading:Z
    .restart local v12       #scalingFactor:F
    .restart local v14       #thumbnailCenter:Landroid/graphics/Point;
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 664
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapHeight:I
    .end local v7           #bitmapWidth:I
    .end local v9           #hardScalingFactor:F
    .end local v11           #needsLoading:Z
    .end local v12           #scalingFactor:F
    .end local v13           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v14           #thumbnailCenter:Landroid/graphics/Point;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->queueImagesForLoading(Ljava/util/List;)V

    .line 667
    :cond_a
    return-void
.end method

.method private declared-synchronized createAndRunFadeInSequencer()V
    .locals 15

    .prologue
    .line 1227
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 1330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1231
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v11, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v9, v0, v6

    .line 1237
    .local v9, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v11, v11, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v11, :cond_0

    .line 1236
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1242
    .end local v9           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_2
    new-instance v5, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1244
    .local v5, fadeInSequencer:Lcom/android/vending/compat/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getBottom()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getTop()I

    move-result v12

    sub-int v1, v11, v12

    .line 1245
    .local v1, canvasHeight:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getLeft()I

    move-result v12

    sub-int v2, v11, v12

    .line 1248
    .local v2, canvasWidth:I
    invoke-direct {p0, v2, v1}, Lcom/android/vending/velvet/CarouselView;->computeThumbnailsDisplayState(II)V

    .line 1251
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v9, v0, v6

    .line 1252
    .restart local v9       #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v11, :cond_3

    .line 1253
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1251
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1256
    .end local v9           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_4
    new-instance v11, Lcom/android/vending/velvet/CarouselView$9;

    invoke-direct {v11, p0}, Lcom/android/vending/velvet/CarouselView$9;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {p0, v11}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 1262
    const/4 v4, 0x0

    .line 1263
    .local v4, distance:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v8, stages:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    :goto_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1267
    .local v10, toFadeIn:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_6

    aget-object v9, v0, v6

    .line 1268
    .restart local v9       #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v11, :cond_5

    iget v11, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v4

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3f1a36e2eb1c432dL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    .line 1270
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1273
    .end local v9           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1292
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 1303
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/android/vending/compat/animation/Animator;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v5, v11}, Lcom/android/vending/compat/animation/AnimatorSet;->playSequentially([Lcom/android/vending/compat/animation/Animator;)V

    .line 1305
    new-instance v11, Lcom/android/vending/velvet/CarouselView$11;

    invoke-direct {v11, p0}, Lcom/android/vending/velvet/CarouselView$11;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v5, v11}, Lcom/android/vending/compat/animation/AnimatorSet;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1328
    iput-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    .line 1329
    iget-object v11, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v11}, Lcom/android/vending/compat/animation/Animator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1227
    .end local v0           #arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1           #canvasHeight:I
    .end local v2           #canvasWidth:I
    .end local v4           #distance:I
    .end local v5           #fadeInSequencer:Lcom/android/vending/compat/animation/AnimatorSet;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #stages:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    .end local v10           #toFadeIn:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1277
    .restart local v0       #arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .restart local v1       #canvasHeight:I
    .restart local v2       #canvasWidth:I
    .restart local v4       #distance:I
    .restart local v5       #fadeInSequencer:Lcom/android/vending/compat/animation/AnimatorSet;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #stages:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/compat/animation/Animator;>;"
    .restart local v10       #toFadeIn:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/velvet/CarouselView$Thumbnail;>;"
    :cond_7
    const/4 v11, 0x2

    :try_start_2
    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v3

    .line 1278
    .local v3, currStage:Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v11, Lcom/android/vending/velvet/CarouselView$10;

    invoke-direct {v11, p0, v10}, Lcom/android/vending/velvet/CarouselView$10;-><init>(Lcom/android/vending/velvet/CarouselView;Ljava/util/Set;)V

    invoke-virtual {v3, v11}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1289
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1290
    add-int/lit8 v4, v4, 0x1

    .line 1291
    goto :goto_3

    .line 1277
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private declared-synchronized createAndRunScrollSequencer(FJ)V
    .locals 5
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 877
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    long-to-float v4, p2

    aput v4, v2, v3

    invoke-static {v2}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    .line 879
    .local v1, scrolling:Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v2, Lcom/android/vending/velvet/CarouselView$4;

    invoke-direct {v2, p0}, Lcom/android/vending/velvet/CarouselView$4;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 905
    new-instance v2, Lcom/android/vending/velvet/CarouselView$5;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/velvet/CarouselView$5;-><init>(Lcom/android/vending/velvet/CarouselView;F)V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 927
    new-instance v2, Lcom/android/vending/compat/animation/LinearInterpolator;

    invoke-direct {v2}, Lcom/android/vending/compat/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->setInterpolator(Lcom/android/vending/compat/animation/TimeInterpolator;)V

    .line 929
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 930
    .local v0, scrollSequencer:Lcom/android/vending/compat/animation/AnimatorSet;
    new-instance v2, Lcom/android/vending/velvet/CarouselView$6;

    invoke-direct {v2, p0}, Lcom/android/vending/velvet/CarouselView$6;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/AnimatorSet;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 943
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/vending/compat/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/AnimatorSet;->playSequentially([Lcom/android/vending/compat/animation/Animator;)V

    .line 945
    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    .line 946
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/AnimatorSet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    monitor-exit p0

    return-void

    .line 877
    .end local v0           #scrollSequencer:Lcom/android/vending/compat/animation/AnimatorSet;
    .end local v1           #scrolling:Lcom/android/vending/compat/animation/ValueAnimator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private drawThumbnail(Landroid/graphics/Canvas;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    .locals 9
    .parameter "canvas"
    .parameter "thumbnail"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 677
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f

    iget v6, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mLocationBasedAlpha:F

    mul-float/2addr v5, v6

    iget v6, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 680
    iget-object v4, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v4, v4, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 681
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 685
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 686
    .local v2, bitmapWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 687
    .local v1, bitmapHeight:I
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 688
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 690
    iget-object v4, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object v4, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v1, v4, :cond_1

    move v3, v8

    .line 692
    .local v3, isOriginalSize:Z
    :goto_0
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    move v5, v8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 693
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mBitmapSrcRectangle:Landroid/graphics/Rect;

    iget-object v5, p2, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnailPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 695
    return-void

    .end local v3           #isOriginalSize:Z
    :cond_1
    move v3, v7

    .line 690
    goto :goto_0

    .restart local v3       #isOriginalSize:Z
    :cond_2
    move v5, v7

    .line 692
    goto :goto_1
.end method

.method protected static getAlpha(III)F
    .locals 6
    .parameter "canvasDimension"
    .parameter "thumbnailDimension"
    .parameter "thumbnailCenterLocation"

    .prologue
    const/high16 v5, 0x3f00

    const v4, 0x3ee66666

    .line 1361
    div-int/lit8 v1, p0, 0x2

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1362
    .local v0, distanceFromCenter:I
    div-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    .line 1365
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    div-int/lit8 v3, p1, 0x4

    invoke-static {v1, v2, v3, v5, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v1

    .line 1374
    :goto_0
    return v1

    .line 1367
    :cond_0
    div-int/lit8 v1, p0, 0x4

    if-ge v0, v1, :cond_1

    .line 1370
    div-int/lit8 v1, p1, 0x4

    div-int/lit8 v2, p0, 0x4

    invoke-static {v1, v5, v2, v4, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v1

    goto :goto_0

    .line 1374
    :cond_1
    div-int/lit8 v1, p0, 0x4

    div-int/lit8 v2, p0, 0x2

    const v3, 0x3e4ccccd

    invoke-static {v1, v4, v2, v3, v0}, Lcom/android/vending/velvet/CarouselView;->interpolate(IFIFI)F

    move-result v1

    goto :goto_0
.end method

.method private hasInteractiveContent()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1526
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static interpolate(IFIFI)F
    .locals 2
    .parameter "key1"
    .parameter "value1"
    .parameter "key2"
    .parameter "value2"
    .parameter "key"

    .prologue
    .line 1344
    sub-int v0, p4, p0

    int-to-float v0, v0

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-int v1, p2, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter "asset"

    .prologue
    .line 862
    return-void
.end method

.method private scheduleAutoAdvance()V
    .locals 4

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/vending/velvet/CarouselView;->mCurrAutoAdvanceInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1523
    return-void
.end method

.method private setFrontedViewsVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1199
    iput p1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedViewsVisibility:I

    .line 1201
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    if-eqz v0, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1210
    :cond_2
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    :cond_3
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1214
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    :cond_4
    return-void
.end method

.method private sortByDistanceToCenter()V
    .locals 6

    .prologue
    .line 579
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 580
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 581
    .local v3, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v3           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mDistanceComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 584
    return-void
.end method

.method private updateFrontedViews()V
    .locals 3

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v0

    if-lez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1188
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedViewsVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getPromotionalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    :cond_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected clampToLoadedRange(FF)F
    .locals 9
    .parameter "index"
    .parameter "distance"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 984
    add-float v3, p1, p2

    .line 985
    .local v3, target:F
    invoke-virtual {p0, v3}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v4

    .line 986
    .local v4, targetClamped:F
    cmpg-float v5, p2, v7

    if-gez v5, :cond_2

    .line 990
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_0

    move v5, v3

    .line 1011
    :goto_0
    return v5

    .line 993
    :cond_0
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v6, v6

    sub-int/2addr v6, v8

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_1

    move v5, v7

    .line 995
    goto :goto_0

    :cond_1
    move v5, v4

    .line 997
    goto :goto_0

    .line 1003
    :cond_2
    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1004
    .local v2, startIndex:I
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v6, v6

    sub-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1005
    .local v0, endIndex:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_4

    .line 1006
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_3

    .line 1008
    sub-int v5, v1, v8

    int-to-float v5, v5

    goto :goto_0

    .line 1005
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1011
    goto :goto_0
.end method

.method protected clampToThumbnailArraySize(F)F
    .locals 1
    .parameter "index"

    .prologue
    .line 1021
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    .line 1024
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_1

    .line 1027
    :cond_1
    return p1
.end method

.method protected clampToThumbnailArraySize(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1037
    :goto_0
    if-gez p1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 1040
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v0, v0

    sub-int/2addr p1, v0

    goto :goto_1

    .line 1043
    :cond_1
    return p1
.end method

.method protected abstract drawBackground(Landroid/graphics/Canvas;II)V
.end method

.method protected getAlpha(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F
    .locals 2
    .parameter "thumbnail"
    .parameter "thumbnailCenter"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-static {p3, v0, v1}, Lcom/android/vending/velvet/CarouselView;->getAlpha(III)F

    move-result v0

    return v0
.end method

.method protected getDistanceAlongMotionPath(FF)F
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v0, v0, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method protected getHalfBitmapHeightInPixels()I
    .locals 5

    .prologue
    .line 1530
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v2, v2, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 1532
    .local v0, halfBitmapHeight:F
    iget v2, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v3, v3, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    iget-object v4, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v4, v4, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1536
    .local v1, hardScalingFactor:F
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1537
    mul-float/2addr v0, v1

    .line 1539
    float-to-int v2, v0

    return v2
.end method

.method protected getScalingFactor(Lcom/android/vending/velvet/CarouselView$Thumbnail;Landroid/graphics/Point;II)F
    .locals 4
    .parameter "thumbnail"
    .parameter "thumbnailCenter"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 1492
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    int-to-float v2, p3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1494
    .local v0, relativeDistanceFromCenter:F
    const/high16 v1, 0x3f00

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1495
    const/high16 v0, 0x3f00

    .line 1498
    :cond_0
    const/high16 v1, 0x3f80

    const v2, 0x3f4ccccd

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    return v1
.end method

.method protected getThumbnailCenterLocation(Lcom/android/vending/velvet/CarouselView$Thumbnail;II)Landroid/graphics/Point;
    .locals 9
    .parameter "thumbnail"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 1398
    int-to-float v5, p2

    const/high16 v6, 0x4000

    div-float v2, v5, v6

    .line 1399
    .local v2, midX:F
    invoke-virtual {p0, p3}, Lcom/android/vending/velvet/CarouselView;->getThumbnailMidY(I)F

    move-result v3

    .line 1402
    .local v3, midY:F
    iget v5, p0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v6, v6, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 1403
    .local v1, hardScalingFactor:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    .line 1405
    const/high16 v1, 0x3f80

    .line 1408
    :cond_0
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    iget v5, v5, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v5, v5

    mul-float v0, v5, v1

    .line 1411
    .local v0, coef:F
    iget v5, p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v0

    float-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v4, v5

    .line 1412
    .local v4, offsetX:F
    iget v5, p1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mDistToCenter:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1413
    neg-float v4, v4

    .line 1416
    :cond_1
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    add-float v6, v2, v4

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1417
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    float-to-int v6, v3

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1418
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mCenterPoint:Landroid/graphics/Point;

    return-object v5
.end method

.method protected abstract getThumbnailMidY(I)F
.end method

.method protected getVelocityAlongMotionPath(Landroid/view/VelocityTracker;)F
    .locals 1
    .parameter "velocityTracker"

    .prologue
    .line 1442
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public declared-synchronized initializeAndLoad(I[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
    .locals 4
    .parameter "totalAssetCount"
    .parameter "assetData"

    .prologue
    .line 1063
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v1, :cond_1

    .line 1064
    const-string v1, "Carousel already initialized"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :cond_0
    monitor-exit p0

    return-void

    .line 1069
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/vending/velvet/CarouselView$Thumbnail;

    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1070
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    new-instance v2, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    invoke-direct {v2}, Lcom/android/vending/velvet/CarouselView$Thumbnail;-><init>()V

    aput-object v2, v1, v0

    .line 1072
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mFadeInAlpha:F

    .line 1073
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1078
    invoke-virtual {p0, p2}, Lcom/android/vending/velvet/CarouselView;->load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V

    .line 1082
    iget v1, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    if-ge v1, p1, :cond_0

    .line 1083
    iget v0, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    :goto_1
    if-ge v0, p1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    new-instance v2, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-direct {v2}, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;-><init>()V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 1085
    iget-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/android/vending/velvet/CarouselView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1063
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected isOutsideLoadedRange(FF)Z
    .locals 8
    .parameter "index"
    .parameter "distance"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 961
    add-float v5, p1, p2

    invoke-virtual {p0, v5}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v0

    .line 962
    .local v0, clamped:F
    float-to-int v3, v0

    .line 963
    .local v3, onLeft:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(I)I

    move-result v4

    .line 964
    .local v4, onRight:I
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_0

    move v1, v7

    .line 965
    .local v1, emptyOnLeft:Z
    :goto_0
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v5, :cond_1

    move v2, v7

    .line 968
    .local v2, emptyOnRight:Z
    :goto_1
    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-nez v5, :cond_2

    move v5, v1

    .line 973
    :goto_2
    return v5

    .end local v1           #emptyOnLeft:Z
    .end local v2           #emptyOnRight:Z
    :cond_0
    move v1, v6

    .line 964
    goto :goto_0

    .restart local v1       #emptyOnLeft:Z
    :cond_1
    move v2, v6

    .line 965
    goto :goto_1

    .line 973
    .restart local v2       #emptyOnRight:Z
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method public declared-synchronized load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V
    .locals 12
    .parameter "assetData"

    .prologue
    const/high16 v11, 0x3f00

    .line 1100
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-nez v9, :cond_0

    .line 1101
    const-string v9, "Carousel array has not been initialized"

    invoke-static {v9}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :goto_0
    monitor-exit p0

    return-void

    .line 1106
    :cond_0
    :try_start_1
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    array-length v10, p1

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v10, v10

    if-le v9, v10, :cond_1

    .line 1107
    const-string v9, "Not enough space to host all the assets"

    invoke-static {v9}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1111
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1112
    .local v3, i:I
    :goto_1
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    array-length v10, p1

    add-int/2addr v9, v10

    if-ge v3, v9, :cond_2

    .line 1113
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v9, v9, v3

    iget v10, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    sub-int v10, v3, v10

    aget-object v10, p1, v10

    iput-object v10, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 1112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1116
    :cond_2
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    if-nez v9, :cond_7

    .line 1123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1124
    .local v2, frequency:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/velvet/CarouselView$Dimension;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1125
    .local v4, largestCount:I
    const/4 v5, 0x0

    .line 1126
    .local v5, mostCommonPair:Lcom/android/vending/velvet/CarouselView$Dimension;
    const/4 v3, 0x0

    :goto_2
    array-length v9, p1

    if-ge v3, v9, :cond_6

    .line 1127
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v9, v9, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1128
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 1126
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1131
    :cond_3
    new-instance v8, Lcom/android/vending/velvet/CarouselView$Dimension;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/vending/velvet/CarouselView$Dimension;-><init>(II)V

    .line 1132
    .local v8, size:Lcom/android/vending/velvet/CarouselView$Dimension;
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    move v1, v9

    .line 1133
    .local v1, countForCurrSize:I
    :goto_4
    if-le v1, v4, :cond_4

    .line 1134
    move-object v5, v8

    .line 1135
    move v4, v1

    .line 1137
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1132
    .end local v1           #countForCurrSize:I
    :cond_5
    const/4 v9, 0x1

    move v1, v9

    goto :goto_4

    .line 1139
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #size:Lcom/android/vending/velvet/CarouselView$Dimension;
    :cond_6
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    iget v10, v5, Lcom/android/vending/velvet/CarouselView$Dimension;->width:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v7, v9

    .line 1140
    .local v7, scaledCommonWidth:I
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mScreenScaleFactor:F

    iget v10, v5, Lcom/android/vending/velvet/CarouselView$Dimension;->height:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v6, v9

    .line 1141
    .local v6, scaledCommonHeight:I
    new-instance v9, Lcom/android/vending/velvet/CarouselView$Dimension;

    invoke-direct {v9, v7, v6}, Lcom/android/vending/velvet/CarouselView$Dimension;-><init>(II)V

    iput-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSize:Lcom/android/vending/velvet/CarouselView$Dimension;

    .line 1142
    iput-object v5, p0, Lcom/android/vending/velvet/CarouselView;->mCommonBitmapSizeUnscaled:Lcom/android/vending/velvet/CarouselView$Dimension;

    .line 1144
    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget-object v9, v9, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    iput-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedAsset:Lcom/android/vending/model/Asset;

    .line 1145
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->updateFrontedViews()V

    .line 1148
    new-instance v9, Lcom/android/vending/velvet/CarouselView$7;

    invoke-direct {v9, p0}, Lcom/android/vending/velvet/CarouselView$7;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {p0, v9}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 1155
    .end local v2           #frequency:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/velvet/CarouselView$Dimension;Ljava/lang/Integer;>;"
    .end local v4           #largestCount:I
    .end local v5           #mostCommonPair:Lcom/android/vending/velvet/CarouselView$Dimension;
    .end local v6           #scaledCommonHeight:I
    .end local v7           #scaledCommonWidth:I
    :cond_7
    iget v9, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    array-length v10, p1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1158
    new-instance v9, Lcom/android/vending/velvet/CarouselView$8;

    invoke-direct {v9, p0}, Lcom/android/vending/velvet/CarouselView$8;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {p0, v9}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getWidth()I

    move-result v2

    .line 525
    .local v2, canvasWidth:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->getHeight()I

    move-result v1

    .line 530
    .local v1, canvasHeight:I
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/vending/velvet/CarouselView;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 532
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 566
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 540
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 541
    .local v7, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v9, v7, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v9, v9, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v9, :cond_0

    .line 540
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    .end local v7           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/vending/velvet/CarouselView;->computeThumbnailsDisplayState(II)V

    .line 549
    invoke-direct {p0}, Lcom/android/vending/velvet/CarouselView;->sortByDistanceToCenter()V

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 552
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/vending/velvet/CarouselView;->setThumbnailClip(Landroid/graphics/Canvas;II)V

    .line 554
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_5

    .line 555
    iget-object v9, p0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 556
    .local v8, thumbnailToPaint:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v9, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-eqz v9, :cond_4

    .line 554
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 559
    :cond_4
    iget-object v9, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v2, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    .line 561
    .local v5, intersectsWithScreen:Z
    if-eqz v5, :cond_3

    .line 562
    invoke-direct {p0, p1, v8}, Lcom/android/vending/velvet/CarouselView;->drawThumbnail(Landroid/graphics/Canvas;Lcom/android/vending/velvet/CarouselView$Thumbnail;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 524
    .end local v0           #arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .end local v1           #canvasHeight:I
    .end local v2           #canvasWidth:I
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #intersectsWithScreen:Z
    .end local v6           #len$:I
    .end local v8           #thumbnailToPaint:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 565
    .restart local v0       #arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    .restart local v1       #canvasHeight:I
    .restart local v2       #canvasWidth:I
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/vending/velvet/ArcView;->onFinishInflate()V

    .line 498
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    .line 499
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedSnippetView:Landroid/view/View;

    new-instance v1, Lcom/android/vending/velvet/CarouselView$3;

    invoke-direct {v1, p0}, Lcom/android/vending/velvet/CarouselView$3;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_0
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    .line 510
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedRatingBar:Landroid/widget/RatingBar;

    .line 511
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPriceOrStateView:Landroid/widget/TextView;

    .line 512
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedPromoDescTextView:Landroid/widget/TextView;

    .line 516
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFrontedTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 519
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 520
    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "event"

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v24, :cond_0

    .line 700
    const/16 v24, 0x1

    .line 851
    :goto_0
    monitor-exit p0

    return v24

    .line 703
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->cancelScrolling()V

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 706
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 707
    .local v23, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 709
    .local v22, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 710
    const/16 v24, 0x1

    goto :goto_0

    .line 713
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 714
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 716
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->hasInteractiveContent()Z

    move-result v24

    if-nez v24, :cond_4

    .line 722
    const/16 v24, 0x1

    move v0, v5

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    .line 726
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 727
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 728
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 731
    :cond_4
    packed-switch v5, :pswitch_data_0

    .line 851
    :goto_1
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 733
    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    .line 734
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    .line 735
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mDistanceScrolledSinceLastDown:F

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 743
    :cond_5
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 699
    .end local v5           #action:I
    .end local v22           #x:F
    .end local v23           #y:F
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 748
    .restart local v5       #action:I
    .restart local v22       #x:F
    .restart local v23       #y:F
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v16, v24, v22

    .line 749
    .local v16, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v17, v24, v23

    .line 751
    .local v17, scrollY:F
    mul-float v24, v16, v16

    mul-float v25, v17, v17

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move v7, v0

    .line 753
    .local v7, distTravelledInPixels:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDistanceScrolledSinceLastDown:F

    move/from16 v24, v0

    add-float v24, v24, v7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mDistanceScrolledSinceLastDown:F

    .line 755
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionX:F

    .line 756
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mLastMotionY:F

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->getDistanceAlongMotionPath(FF)F

    move-result v8

    .line 760
    .local v8, distance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->isOutsideLoadedRange(FF)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/CarouselView;->clampToLoadedRange(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 767
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V

    goto/16 :goto_1

    .line 763
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    add-float v24, v24, v8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    goto :goto_2

    .line 772
    .end local v7           #distTravelledInPixels:F
    .end local v8           #distance:F
    .end local v16           #scrollX:F
    .end local v17           #scrollY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-virtual/range {v24 .. v25}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->getVelocityAlongMotionPath(Landroid/view/VelocityTracker;)F

    move-result v21

    .line 774
    .local v21, velocity:F
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 777
    .local v4, absVelocity:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v4, v24

    if-lez v24, :cond_a

    .line 779
    const/16 v24, 0x0

    cmpg-float v24, v21, v24

    if-gez v24, :cond_7

    const/16 v24, 0x1

    move/from16 v14, v24

    .line 781
    .local v14, isVelocityNegative:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mTileSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v21, v21, v24

    .line 782
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v9, v4, v24

    .line 785
    .local v9, duration:F
    mul-float v24, v4, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v25, v25, v9

    mul-float v25, v25, v9

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    sub-float v20, v24, v25

    .line 787
    .local v20, totalDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    if-eqz v14, :cond_8

    move/from16 v25, v20

    :goto_4
    add-float v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/CarouselView;->clampToThumbnailArraySize(F)F

    move-result v13

    .line 791
    .local v13, indexAtStop:F
    if-eqz v14, :cond_9

    .line 792
    move v0, v13

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    sub-float v19, v24, v13

    .line 793
    .local v19, toAdd:F
    add-float v20, v20, v19

    .line 794
    const/high16 v24, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v20

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v21, v0

    .line 800
    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v9, v4, v24

    .line 805
    const/high16 v24, 0x447a

    mul-float v24, v24, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide v10, v0

    .line 807
    .local v10, durationMs:J
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V

    .line 846
    .end local v13           #indexAtStop:F
    .end local v14           #isVelocityNegative:Z
    .end local v19           #toAdd:F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 847
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/velvet/CarouselView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 779
    .end local v9           #duration:F
    .end local v10           #durationMs:J
    .end local v20           #totalDistance:F
    :cond_7
    const/16 v24, 0x0

    move/from16 v14, v24

    goto/16 :goto_3

    .line 787
    .restart local v9       #duration:F
    .restart local v14       #isVelocityNegative:Z
    .restart local v20       #totalDistance:F
    :cond_8
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v25, v0

    goto :goto_4

    .line 796
    .restart local v13       #indexAtStop:F
    :cond_9
    move v0, v13

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    sub-float v19, v13, v24

    .line 797
    .restart local v19       #toAdd:F
    add-float v20, v20, v19

    .line 798
    const/high16 v24, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v20

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 810
    .end local v9           #duration:F
    .end local v13           #indexAtStop:F
    .end local v14           #isVelocityNegative:Z
    .end local v19           #toAdd:F
    .end local v20           #totalDistance:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDistanceScrolledSinceLastDown:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mScrollThreshold:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_d

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/velvet/CarouselView;->sortByDistanceToCenter()V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView;->mZOrder:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 814
    .local v18, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 818
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 822
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 824
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 827
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vending/velvet/CarouselView;->launchViewAssetInfoIntent(Lcom/android/vending/model/Asset;)V

    .line 829
    :cond_c
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 835
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move v6, v0

    .line 836
    .local v6, closestCenter:I
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_e

    const/16 v24, 0x1

    move/from16 v15, v24

    .line 837
    .local v15, movingDown:Z
    :goto_7
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 838
    .restart local v20       #totalDistance:F
    const/high16 v24, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v24, v24, v20

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move v4, v0

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/CarouselView;->mDeceleration:F

    move/from16 v24, v0

    div-float v9, v4, v24

    .line 840
    .restart local v9       #duration:F
    const/high16 v24, 0x447a

    mul-float v24, v24, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide v10, v0

    .line 842
    .restart local v10       #durationMs:J
    if-eqz v15, :cond_f

    move v0, v4

    neg-float v0, v0

    move/from16 v24, v0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/velvet/CarouselView;->createAndRunScrollSequencer(FJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 836
    .end local v9           #duration:F
    .end local v10           #durationMs:J
    .end local v15           #movingDown:Z
    .end local v20           #totalDistance:F
    :cond_e
    const/16 v24, 0x0

    move/from16 v15, v24

    goto :goto_7

    .restart local v9       #duration:F
    .restart local v10       #durationMs:J
    .restart local v15       #movingDown:Z
    .restart local v20       #totalDistance:F
    :cond_f
    move/from16 v24, v4

    .line 842
    goto :goto_8

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1047
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1048
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mIndexOfFirstLoadingAsset:I

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/velvet/CarouselView;->mCurrIndexAtCenter:F

    .line 1051
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mFadeInSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mScrollSequencer:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v0}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    .line 1057
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/vending/velvet/CarouselView;->setFrontedViewsVisibility(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/vending/velvet/CarouselView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    monitor-exit p0

    return-void

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBaseActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "baseActivity"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 490
    new-instance v0, Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-direct {v0, p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader;-><init>(Lcom/android/vending/velvet/CarouselView;)V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mImageLoader:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/CarouselView;->mImagesToLoad:Ljava/util/List;

    .line 492
    return-void
.end method

.method protected abstract setThumbnailClip(Landroid/graphics/Canvas;II)V
.end method

.method public declared-synchronized trimTrailing(I)V
    .locals 5
    .parameter "toTrim"

    .prologue
    .line 1178
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v2, v2

    sub-int v0, v2, p1

    .line 1179
    .local v0, newCount:I
    new-array v1, v0, [Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .line 1180
    .local v1, trimmed:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-object v2, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1181
    iput-object v1, p0, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    monitor-exit p0

    return-void

    .line 1178
    .end local v0           #newCount:I
    .end local v1           #trimmed:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
