.class Lcom/android/gallery3d/ui/PhotoView$PositionController;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionController"
.end annotation


# instance fields
.field private mAnimationKind:I

.field private mAnimationStartTime:J

.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mFromScale:F

.field private mFromX:I

.field private mFromY:I

.field private mImageH:I

.field private mImageW:I

.field private mInScale:Z

.field private mPrevOffsetX:F

.field private mPrevOffsetY:F

.field private mScaleMax:F

.field private mScaleMin:F

.field private mToScale:F

.field private mToX:I

.field private mToY:I

.field private mUseViewSize:Z

.field private mViewH:I

.field private mViewW:I

.field private mViewer:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 2
    .parameter "viewer"

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mUseViewSize:Z

    .line 417
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    .line 420
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    .line 421
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView$PositionController;III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getMinimalScale(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    return v0
.end method

.method private getMinimalScale(III)F
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "rotation"

    .prologue
    .line 508
    const/high16 v0, 0x4080

    div-int/lit8 v1, p3, 0x5a

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method

.method private getTargetScale()F
    .locals 4

    .prologue
    .line 758
    iget-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 759
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 760
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    goto :goto_0
.end method

.method private getTargetX()I
    .locals 4

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 766
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    goto :goto_0
.end method

.method private getTargetY()I
    .locals 4

    .prologue
    .line 770
    iget-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 771
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 772
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    goto :goto_0
.end method

.method private linearInterpolate(F)V
    .locals 10
    .parameter "progress"

    .prologue
    const/high16 v9, 0x4000

    .line 682
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 683
    .local v2, fromX:F
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 684
    .local v4, toX:F
    sub-float v6, v4, v2

    mul-float/2addr v6, p1

    add-float v0, v2, v6

    .line 686
    .local v0, currentX:F
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 687
    .local v3, fromY:F
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 688
    .local v5, toY:F
    sub-float v6, v5, v3

    mul-float/2addr v6, p1

    add-float v1, v3, v6

    .line 690
    .local v1, currentY:F
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 691
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v7, v0

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 693
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v7, v1

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 695
    return-void
.end method

.method private startAnimation(IIFI)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "kind"

    .prologue
    .line 599
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    .line 603
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    .line 604
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    .line 606
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    .line 607
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    .line 608
    const v0, 0x3f19999a

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    mul-float/2addr v0, v1

    const v1, 0x3fb33333

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p3, v0, v1}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    .line 612
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 613
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    .line 616
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    .line 617
    iput p4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    .line 618
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->advanceAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method private startSnapbackIfNeeded()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move v0, v4

    .line 704
    :goto_0
    return v0

    .line 700
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mInScale:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    .line 701
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 702
    goto :goto_0

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSnapback()Z

    move-result v0

    goto :goto_0
.end method

.method private static translate(IIIF)I
    .locals 3
    .parameter "value"
    .parameter "size"
    .parameter "updateSize"
    .parameter "ratio"

    .prologue
    .line 514
    int-to-float v0, p0

    int-to-float v1, p2

    mul-float/2addr v1, p3

    int-to-float v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const-wide/16 v10, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v7, 0x3f80

    .line 623
    iget-wide v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    cmp-long v5, v5, v12

    if-nez v5, :cond_0

    move v5, v8

    .line 675
    :goto_0
    return v5

    .line 625
    :cond_0
    iget-wide v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    cmp-long v5, v5, v10

    if-nez v5, :cond_2

    .line 626
    iput-wide v12, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    .line 627
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    move v5, v8

    .line 629
    goto :goto_0

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSnapbackIfNeeded()Z

    move-result v5

    goto :goto_0

    .line 636
    :cond_2
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    if-nez v5, :cond_3

    .line 637
    const/4 v0, 0x0

    .line 649
    .local v0, animationTime:F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_7

    .line 650
    const/high16 v4, 0x3f80

    .line 656
    .local v4, progress:F
    :goto_2
    cmpl-float v5, v4, v7

    if-ltz v5, :cond_8

    .line 657
    const/high16 v4, 0x3f80

    .line 658
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    iput v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 659
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    iput v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 660
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    iput v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 661
    iput-wide v10, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    .line 674
    :goto_3
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/gallery3d/ui/PhotoView;->setPosition(IIF)V

    move v5, v9

    .line 675
    goto :goto_0

    .line 638
    .end local v0           #animationTime:F
    .end local v4           #progress:F
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    if-ne v5, v9, :cond_4

    .line 639
    const/high16 v0, 0x4248

    .restart local v0       #animationTime:F
    goto :goto_1

    .line 640
    .end local v0           #animationTime:F
    :cond_4
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 641
    const/high16 v0, 0x43c8

    .restart local v0       #animationTime:F
    goto :goto_1

    .line 642
    .end local v0           #animationTime:F
    :cond_5
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 643
    const/high16 v0, 0x4396

    .restart local v0       #animationTime:F
    goto :goto_1

    .line 645
    .end local v0           #animationTime:F
    :cond_6
    const/high16 v0, 0x4416

    .restart local v0       #animationTime:F
    goto :goto_1

    .line 652
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 653
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    sub-long v5, v2, v5

    long-to-float v5, v5

    div-float v4, v5, v0

    .restart local v4       #progress:F
    goto :goto_2

    .line 663
    .end local v2           #now:J
    :cond_8
    sub-float v1, v7, v4

    .line 664
    .local v1, f:F
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    if-nez v5, :cond_9

    .line 665
    sub-float v4, v7, v1

    .line 672
    :goto_4
    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->linearInterpolate(F)V

    goto :goto_3

    .line 666
    :cond_9
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationKind:I

    if-ne v5, v9, :cond_a

    .line 667
    mul-float v5, v1, v1

    sub-float v4, v7, v5

    goto :goto_4

    .line 670
    :cond_a
    mul-float v5, v1, v1

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    sub-float v4, v7, v5

    goto :goto_4
.end method

.method public beginScale(FF)V
    .locals 3
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v2, 0x4000

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mInScale:Z

    .line 556
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetX:F

    .line 557
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v0, p2, v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetY:F

    .line 558
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mInScale:Z

    .line 577
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSnapbackIfNeeded()Z

    .line 578
    return-void
.end method

.method public resetToFullView()V
    .locals 4

    .prologue
    .line 504
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 505
    return-void
.end method

.method public scaleBy(FFF)V
    .locals 6
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x4000

    .line 565
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v2, p2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float v0, v2, v3

    .line 566
    .local v0, offsetX:F
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v2, p3, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float v1, v2, v3

    .line 568
    .local v1, offsetY:F
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getTargetX()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getTargetY()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getTargetScale()F

    move-result v4

    mul-float/2addr v4, p1

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 571
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetX:F

    .line 572
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mPrevOffsetY:F

    .line 573
    return-void
.end method

.method public scrollBy(FFI)V
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "type"

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getTargetX()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getTargetY()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 552
    return-void
.end method

.method public setImageSize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/high16 v4, 0x3f80

    .line 426
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 427
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mUseViewSize:Z

    .line 428
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    .line 429
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    .line 430
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 431
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 432
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 433
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    .line 434
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPosition(IIF)V

    .line 478
    :goto_0
    return-void

    .line 438
    :cond_1
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mUseViewSize:Z

    .line 440
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 443
    .local v1, ratio:F
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    invoke-static {v3, v4, p1, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 444
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    invoke-static {v3, v4, p2, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 445
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 447
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    invoke-static {v3, v4, p1, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    .line 448
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    invoke-static {v3, v4, p2, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    .line 449
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromScale:F

    .line 451
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    invoke-static {v3, v4, p1, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToX:I

    .line 452
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    invoke-static {v3, v4, p2, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->translate(IIIF)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToY:I

    .line 453
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mToScale:F

    .line 455
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    .line 456
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    .line 458
    invoke-direct {p0, p1, p2, v7}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->getMinimalScale(III)F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    .line 461
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v0

    .line 465
    .local v0, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$202(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 466
    if-eqz v0, :cond_2

    .line 467
    const/high16 v3, 0x4370

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 468
    .local v2, scale:F
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 469
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 470
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 471
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1602(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 472
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSnapback()Z

    .line 477
    .end local v0           #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    .end local v2           #scale:F
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPosition(IIF)V

    goto/16 :goto_0

    .line 474
    :cond_3
    iget-wide v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 475
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    goto :goto_1
.end method

.method public setViewSize(II)V
    .locals 6
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 519
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    if-nez v2, :cond_2

    :cond_0
    move v0, v5

    .line 521
    .local v0, needLayout:Z
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    .line 522
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    .line 524
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mUseViewSize:Z

    if-eqz v2, :cond_3

    .line 525
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    .line 526
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    .line 527
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 528
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 529
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 530
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->setPosition(IIF)V

    .line 542
    :cond_1
    :goto_1
    return-void

    .end local v0           #needLayout:Z
    :cond_2
    move v0, v4

    .line 519
    goto :goto_0

    .line 532
    .restart local v0       #needLayout:Z
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    move v1, v5

    .line 533
    .local v1, wasMinScale:Z
    :goto_2
    const/high16 v2, 0x4080

    int-to-float v3, p1

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    .line 535
    if-nez v0, :cond_4

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    if-eqz v1, :cond_1

    .line 536
    :cond_4
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 537
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 538
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 539
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewer:Lcom/android/gallery3d/ui/PhotoView;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->setPosition(IIF)V

    goto :goto_1

    .end local v1           #wasMinScale:Z
    :cond_5
    move v1, v4

    .line 532
    goto :goto_2
.end method

.method public startHorizontalSlide(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 594
    int-to-float v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->scrollBy(FFI)V

    .line 595
    return-void
.end method

.method public startSlideInAnimation(I)V
    .locals 4
    .parameter "fromX"

    .prologue
    const/high16 v3, 0x4000

    .line 585
    int-to-float v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    .line 586
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    .line 587
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromX:I

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 588
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mFromY:I

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 589
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 591
    return-void
.end method

.method public startSnapback()Z
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 708
    const/4 v2, 0x0

    .line 709
    .local v2, needAnimation:Z
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    .line 710
    .local v6, x:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    .line 711
    .local v7, y:I
    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 713
    .local v4, scale:F
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 714
    :cond_0
    const/4 v2, 0x1

    .line 715
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMin:F

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    invoke-static {v8, v9, v10}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v4

    .line 719
    :cond_1
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v8, v8

    mul-float v9, v11, v4

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 720
    .local v1, left:I
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    sub-int v3, v8, v1

    .line 721
    .local v3, right:I
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v8, v8

    mul-float v9, v11, v4

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 722
    .local v5, top:I
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    sub-int v0, v8, v5

    .line 724
    .local v0, bottom:I
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 725
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    if-ge v8, v1, :cond_5

    .line 726
    const/4 v2, 0x1

    .line 727
    move v6, v1

    .line 737
    :cond_2
    :goto_0
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    .line 738
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    if-ge v8, v5, :cond_7

    .line 739
    const/4 v2, 0x1

    .line 740
    move v7, v5

    .line 750
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 751
    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v4, v8}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 754
    :cond_4
    return v2

    .line 728
    :cond_5
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    if-le v8, v3, :cond_2

    .line 729
    const/4 v2, 0x1

    .line 730
    move v6, v3

    goto :goto_0

    .line 732
    :cond_6
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v9, v9, 0x2

    if-eq v8, v9, :cond_2

    .line 733
    const/4 v2, 0x1

    .line 734
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v6, v8, 0x2

    goto :goto_0

    .line 741
    :cond_7
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    if-le v8, v0, :cond_3

    .line 742
    const/4 v2, 0x1

    .line 743
    move v7, v0

    goto :goto_1

    .line 745
    :cond_8
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v9, v9, 0x2

    if-eq v8, v9, :cond_3

    .line 746
    const/4 v2, 0x1

    .line 747
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v7, v8, 0x2

    goto :goto_1
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 545
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mAnimationStartTime:J

    .line 546
    return-void
.end method

.method public up()V
    .locals 0

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSnapback()Z

    .line 582
    return-void
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x4000

    .line 481
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    cmpl-float v7, p3, v7

    if-lez v7, :cond_0

    iget p3, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mScaleMax:F

    .line 482
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    .line 483
    .local v2, scale:F
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentX:I

    int-to-float v8, v8

    add-float v5, v7, v8

    .line 484
    .local v5, tempX:F
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentScale:F

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mCurrentY:I

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 488
    .local v6, tempY:F
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    div-float v1, v7, p3

    .line 489
    .local v1, min:F
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, p3

    sub-float v0, v7, v8

    .line 490
    .local v0, max:F
    invoke-static {v5, v1, v0}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v7

    float-to-int v3, v7

    .line 492
    .local v3, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    div-float v1, v7, p3

    .line 493
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, p3

    sub-float v0, v7, v8

    .line 494
    invoke-static {v6, v1, v0}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v7

    float-to-int v4, v7

    .line 497
    .local v4, targetY:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewW:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageW:I

    div-int/lit8 v3, v7, 0x2

    .line 498
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mViewH:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView$PositionController;->mImageH:I

    div-int/lit8 v4, v7, 0x2

    .line 500
    :cond_2
    const/4 v7, 0x4

    invoke-direct {p0, v3, v4, p3, v7}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startAnimation(IIFI)V

    .line 501
    return-void
.end method
