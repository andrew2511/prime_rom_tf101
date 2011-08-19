.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 0.6666f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.4f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.4f

.field private static final P2:F = 0.60003996f

.field private static PHYSICAL_COEF:F = 0.0f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 1.0f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 588
    const-wide/high16 v0, 0x3fe8

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 596
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 597
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, x_min:F
    const/4 v2, 0x0

    .line 606
    .local v2, y_min:F
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    move v7, v2

    .end local v2           #y_min:F
    .local v7, y_min:F
    move v2, v1

    .end local v1           #x_min:F
    .local v2, x_min:F
    :goto_25
    const/16 v0, 0x64

    if-ge v3, v0, :cond_ce

    .line 607
    int-to-float v0, v3

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 609
    .local v0, alpha:F
    const/high16 v1, 0x3f80

    .local v1, x_max:F
    move v5, v1

    .end local v1           #x_max:F
    .local v5, x_max:F
    move v6, v2

    .line 612
    .end local v2           #x_min:F
    .local v6, x_min:F
    :goto_31
    sub-float v1, v5, v6

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v4, v6, v1

    .line 613
    .local v4, x:F
    const/high16 v1, 0x4040

    mul-float/2addr v1, v4

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 614
    .local v1, coef:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v4

    const v8, 0x3ecccccd

    mul-float/2addr v2, v8

    const v8, 0x3f199c38

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    mul-float/2addr v2, v1

    mul-float v8, v4, v4

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    .line 615
    .local v2, tx:F
    sub-float v8, v2, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_b8

    .line 619
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .end local v2           #tx:F
    const/high16 v5, 0x3f80

    sub-float/2addr v5, v4

    const/high16 v8, 0x3f80

    mul-float/2addr v5, v8

    add-float/2addr v5, v4

    mul-float/2addr v5, v1

    mul-float v8, v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 621
    .end local v4           #x:F
    .end local v5           #x_max:F
    const/high16 v2, 0x3f80

    .local v2, y_max:F
    move v5, v2

    .line 624
    .end local v2           #y_max:F
    .local v5, y_max:F
    :goto_73
    sub-float v1, v5, v7

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v4, v7, v1

    .line 625
    .local v4, y:F
    const/high16 v1, 0x4040

    mul-float/2addr v1, v4

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 626
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v4

    const/high16 v8, 0x3f80

    mul-float/2addr v2, v8

    add-float/2addr v2, v4

    mul-float/2addr v2, v1

    mul-float v8, v4, v4

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    .line 627
    .local v2, dy:F
    sub-float v8, v2, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_c4

    .line 631
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .end local v0           #alpha:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v4

    const v5, 0x3ecccccd

    mul-float/2addr v2, v5

    const v5, 0x3f199c38

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    mul-float/2addr v1, v2

    mul-float v2, v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 606
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v5           #y_max:F
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move v2, v6

    .end local v6           #x_min:F
    .local v2, x_min:F
    goto/16 :goto_25

    .line 616
    .local v0, alpha:F
    .restart local v1       #coef:F
    .local v2, tx:F
    .local v4, x:F
    .local v5, x_max:F
    .restart local v6       #x_min:F
    :cond_b8
    cmpl-float v1, v2, v0

    if-lez v1, :cond_c0

    .end local v1           #coef:F
    move v1, v4

    .end local v5           #x_max:F
    .local v1, x_max:F
    move v5, v1

    .end local v1           #x_max:F
    .restart local v5       #x_max:F
    goto/16 :goto_31

    .line 617
    :cond_c0
    move v1, v4

    .end local v6           #x_min:F
    .local v1, x_min:F
    move v6, v1

    .end local v1           #x_min:F
    .restart local v6       #x_min:F
    goto/16 :goto_31

    .line 628
    .local v1, coef:F
    .local v2, dy:F
    .local v4, y:F
    .local v5, y_max:F
    :cond_c4
    cmpl-float v2, v2, v0

    if-lez v2, :cond_cb

    .end local v2           #dy:F
    move v2, v4

    .end local v5           #y_max:F
    .local v2, y_max:F
    move v5, v2

    .end local v2           #y_max:F
    .restart local v5       #y_max:F
    goto :goto_73

    .line 629
    :cond_cb
    move v2, v4

    .end local v7           #y_min:F
    .local v2, y_min:F
    move v7, v2

    .end local v2           #y_min:F
    .restart local v7       #y_min:F
    goto :goto_73

    .line 633
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v4           #y:F
    .end local v5           #y_max:F
    .end local v6           #x_min:F
    .local v2, x_min:F
    :cond_ce
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v1, 0x64

    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .end local v2           #x_min:F
    const/16 v3, 0x64

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    .end local v3           #i:I
    aput v4, v0, v1

    .line 634
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 650
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 539
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 539
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .registers 16
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 668
    sub-int v2, p2, p1

    .line 669
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 670
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 671
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 672
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_37

    .line 673
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 674
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 675
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 676
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 677
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 678
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 680
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_37
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 803
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 804
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 805
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 806
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 808
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 809
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 810
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 811
    return-void
.end method

.method private static getDeceleration(I)F
    .registers 2
    .parameter "velocity"

    .prologue
    .line 660
    if-lez p0, :cond_5

    const/high16 v0, -0x3b06

    :goto_4
    return v0

    :cond_5
    const/high16 v0, 0x44fa

    goto :goto_4
.end method

.method private getSplineDeceleration(I)D
    .registers 5
    .parameter "velocity"

    .prologue
    .line 785
    const v0, 0x3ecccccd

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 10
    .parameter "velocity"

    .prologue
    .line 789
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 790
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 791
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    sget v5, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .registers 10
    .parameter "velocity"

    .prologue
    .line 796
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 797
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 798
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static initFromContext(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 638
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    .line 642
    return-void
.end method

.method private onEdgeReached()V
    .registers 6

    .prologue
    const/high16 v4, 0x4000

    .line 855
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 856
    .local v0, distance:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 858
    .local v1, sign:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_32

    .line 860
    neg-float v2, v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 861
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 864
    :cond_32
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 865
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 866
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_51

    move v3, v0

    :goto_3f
    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 867
    const/high16 v2, 0x447a

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 868
    return-void

    .line 866
    :cond_51
    neg-float v3, v0

    goto :goto_3f
.end method

.method private startAfterEdge(IIII)V
    .registers 21
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 820
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_1b

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_1b

    .line 821
    const-string v4, "OverScroller"

    const-string/jumbo v5, "startAfterEdge called from a valid position"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 840
    :goto_1a
    return-void

    .line 825
    :cond_1b
    move/from16 v0, p1

    move/from16 v1, p3

    if-le v0, v1, :cond_3c

    const/4 v4, 0x1

    move v13, v4

    .line 826
    .local v13, positive:Z
    :goto_23
    if-eqz v13, :cond_3f

    move/from16 v10, p3

    .line 827
    .local v10, edge:I
    :goto_27
    sub-int v12, p1, v10

    .line 828
    .local v12, overDistance:I
    mul-int v4, v12, p4

    if-ltz v4, :cond_42

    const/4 v4, 0x1

    move v11, v4

    .line 829
    .local v11, keepIncreasing:Z
    :goto_2f
    if-eqz v11, :cond_45

    .line 831
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v10

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_1a

    .line 825
    .end local v10           #edge:I
    .end local v11           #keepIncreasing:Z
    .end local v12           #overDistance:I
    .end local v13           #positive:Z
    :cond_3c
    const/4 v4, 0x0

    move v13, v4

    goto :goto_23

    .restart local v13       #positive:Z
    :cond_3f
    move/from16 v10, p2

    .line 826
    goto :goto_27

    .line 828
    .restart local v10       #edge:I
    .restart local v12       #overDistance:I
    :cond_42
    const/4 v4, 0x0

    move v11, v4

    goto :goto_2f

    .line 833
    .restart local v11       #keepIncreasing:Z
    :cond_45
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v14

    .line 834
    .local v14, totalDistance:D
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v14, v4

    if-lez v4, :cond_73

    .line 835
    if-eqz v13, :cond_6d

    move/from16 v7, p2

    :goto_5a
    if-eqz v13, :cond_70

    move/from16 v8, p1

    :goto_5e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move v9, v0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p4

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_1a

    :cond_6d
    move/from16 v7, p1

    goto :goto_5a

    :cond_70
    move/from16 v8, p3

    goto :goto_5e

    .line 837
    :cond_73
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v10

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1a
.end method

.method private startBounceAfterEdge(III)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 814
    if-nez p3, :cond_11

    sub-int v0, p1, p2

    :goto_4
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 815
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 816
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 817
    return-void

    :cond_11
    move v0, p3

    .line 814
    goto :goto_4
.end method

.method private startSpringback(III)V
    .registers 11
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 736
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 737
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 738
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 739
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 740
    sub-int v0, p1, p2

    .line 741
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 743
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 744
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 745
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 746
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 871
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v0, :pswitch_data_42

    .line 895
    :goto_6
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 896
    const/4 v0, 0x1

    :goto_a
    return v0

    .line 874
    :pswitch_b
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v1, :cond_2e

    .line 876
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 878
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 879
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 880
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 881
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_6

    :cond_2e
    move v0, v4

    .line 884
    goto :goto_a

    .line 888
    :pswitch_30
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 889
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v1, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_6

    :pswitch_40
    move v0, v4

    .line 892
    goto :goto_a

    .line 871
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_40
        :pswitch_30
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 7
    .parameter "extend"

    .prologue
    .line 710
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 711
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 712
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 713
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 714
    return-void
.end method

.method finish()V
    .registers 2

    .prologue
    .line 697
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 702
    return-void
.end method

.method fling(IIIII)V
    .registers 11
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/4 v4, 0x0

    .line 749
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 750
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 751
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 752
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 753
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 754
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 756
    if-gt p1, p4, :cond_1c

    if-ge p1, p3, :cond_20

    .line 757
    :cond_1c
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 782
    :cond_1f
    :goto_1f
    return-void

    .line 761
    :cond_20
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 762
    const-wide/16 v0, 0x0

    .line 764
    .local v0, totalDistance:D
    if-eqz p2, :cond_32

    .line 765
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 766
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 769
    :cond_32
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 770
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 773
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4e

    .line 774
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 775
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 778
    :cond_4e
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_1f

    .line 779
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 780
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_1f
.end method

.method notifyEdgeReached(III)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 844
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 845
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 846
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 849
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 851
    :cond_12
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 705
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 707
    return-void
.end method

.method setFriction(F)V
    .registers 2
    .parameter "friction"

    .prologue
    .line 645
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 646
    return-void
.end method

.method springback(III)Z
    .registers 8
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 717
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 719
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 720
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 722
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 723
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 725
    if-ge p1, p2, :cond_1d

    .line 726
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 731
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v0, :cond_23

    move v0, v3

    :goto_1c
    return v0

    .line 727
    :cond_1d
    if-le p1, p3, :cond_17

    .line 728
    invoke-direct {p0, p1, p3, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_17

    :cond_23
    move v0, v2

    .line 731
    goto :goto_1c
.end method

.method startScroll(III)V
    .registers 7
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 683
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 685
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 686
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 688
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 689
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 693
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 694
    return-void
.end method

.method update()Z
    .registers 22

    .prologue
    .line 905
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 906
    .local v15, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v2, v15, v18

    .line 908
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v2, v18

    if-lez v18, :cond_1e

    .line 909
    const/16 v18, 0x0

    .line 952
    :goto_1d
    return v18

    .line 912
    :cond_1e
    const-wide/16 v6, 0x0

    .line 913
    .local v6, distance:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_170

    .line 950
    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 952
    const/16 v18, 0x1

    goto :goto_1d

    .line 915
    :pswitch_43
    move-wide v0, v2

    long-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 916
    .local v11, t:F
    const/high16 v18, 0x42c8

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    .line 917
    .local v9, index:I
    const/high16 v8, 0x3f80

    .line 918
    .local v8, distanceCoef:F
    const/16 v17, 0x0

    .line 919
    .local v17, velocityCoef:F
    const/16 v18, 0x64

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_90

    .line 920
    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v13, v18, v19

    .line 921
    .local v13, t_inf:F
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v14, v18, v19

    .line 922
    .local v14, t_sup:F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v18, v9

    .line 923
    .local v4, d_inf:F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v19, v9, 0x1

    aget v5, v18, v19

    .line 924
    .local v5, d_sup:F
    sub-float v18, v5, v4

    sub-float v19, v14, v13

    div-float v17, v18, v19

    .line 925
    sub-float v18, v11, v13

    mul-float v18, v18, v17

    add-float v8, v4, v18

    .line 928
    .end local v4           #d_inf:F
    .end local v5           #d_sup:F
    .end local v13           #t_inf:F
    .end local v14           #t_sup:F
    :cond_90
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v6, v0

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x447a

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_29

    .line 934
    .end local v8           #distanceCoef:F
    .end local v9           #index:I
    .end local v11           #t:F
    .end local v17           #velocityCoef:F
    :pswitch_c7
    move-wide v0, v2

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a

    div-float v11, v18, v19

    .line 935
    .restart local v11       #t:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 936
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    mul-float v19, v19, v11

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v6, v0

    .line 937
    goto/16 :goto_29

    .line 941
    .end local v11           #t:F
    :pswitch_10d
    move-wide v0, v2

    long-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 942
    .restart local v11       #t:F
    mul-float v12, v11, v11

    .line 943
    .local v12, t2:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 944
    .local v10, sign:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x4040

    mul-float v19, v19, v12

    const/high16 v20, 0x4000

    mul-float v20, v20, v11

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v6, v0

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40c0

    mul-float v18, v18, v19

    move v0, v11

    neg-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v12

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_29

    .line 913
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_43
        :pswitch_10d
        :pswitch_c7
    .end packed-switch
.end method

.method updateScroll(F)V
    .registers 5
    .parameter "q"

    .prologue
    .line 653
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 654
    return-void
.end method
