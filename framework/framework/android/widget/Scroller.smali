.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f80

    .line 65
    const-wide/high16 v8, 0x3fe8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 66
    const/high16 v8, 0x4448

    sput v8, Landroid/widget/Scroller;->ALPHA:F

    .line 67
    const v8, 0x3ecccccd

    sput v8, Landroid/widget/Scroller;->START_TENSION:F

    .line 68
    sget v8, Landroid/widget/Scroller;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Landroid/widget/Scroller;->END_TENSION:F

    .line 70
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Landroid/widget/Scroller;->SPLINE:[F

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, x_min:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    if-gt v2, v13, :cond_78

    .line 78
    int-to-float v8, v2

    const/high16 v9, 0x42c8

    div-float v3, v8, v9

    .line 79
    .local v3, t:F
    const/high16 v6, 0x3f80

    .line 82
    .local v6, x_max:F
    :goto_37
    sub-float v8, v6, v7

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 83
    .local v5, x:F
    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 84
    .local v0, coef:F
    sub-float v8, v12, v5

    sget v9, Landroid/widget/Scroller;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Landroid/widget/Scroller;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 85
    .local v4, tx:F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_70

    .line 89
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 90
    .local v1, d:F
    sget-object v8, Landroid/widget/Scroller;->SPLINE:[F

    aput v1, v8, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 86
    .end local v1           #d:F
    :cond_70
    cmpl-float v8, v4, v3

    if-lez v8, :cond_76

    move v6, v5

    goto :goto_37

    .line 87
    :cond_76
    move v7, v5

    goto :goto_37

    .line 92
    .end local v0           #coef:F
    .end local v3           #t:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    :cond_78
    sget-object v8, Landroid/widget/Scroller;->SPLINE:[F

    aput v12, v8, v13

    .line 95
    const/high16 v8, 0x4100

    sput v8, Landroid/widget/Scroller;->sViscousFluidScale:F

    .line 97
    sput v12, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 98
    invoke-static {v12}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 119
    return-void

    .line 117
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 128
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 130
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 131
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 132
    return-void
.end method

.method private computeDeceleration(F)F
    .registers 4
    .parameter "friction"

    .prologue
    .line 146
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .registers 5
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 426
    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 427
    cmpg-float v1, p0, v3

    if-gez v1, :cond_17

    .line 428
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 434
    :goto_13
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 435
    return p0

    .line 430
    :cond_17
    const v0, 0x3ebc5ab2

    .line 431
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 432
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_13
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 447
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 449
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x42c8

    .line 251
    iget-boolean v9, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v9, :cond_9

    .line 252
    const/4 v9, 0x0

    .line 301
    :goto_8
    return v9

    .line 255
    :cond_9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v9, v11

    long-to-int v7, v9

    .line 257
    .local v7, timePassed:I
    iget v9, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v7, v9, :cond_c6

    .line 258
    iget v9, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v9, :pswitch_data_d2

    :cond_1a
    :goto_1a
    move v9, v14

    .line 301
    goto :goto_8

    .line 260
    :pswitch_1c
    int-to-float v9, v7

    iget v10, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v8, v9, v10

    .line 262
    .local v8, x:F
    iget-object v9, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v9, :cond_42

    .line 263
    invoke-static {v8}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v8

    .line 267
    :goto_29
    iget v9, p0, Landroid/widget/Scroller;->mStartX:I

    iget v10, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 268
    iget v9, p0, Landroid/widget/Scroller;->mStartY:I

    iget v10, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1a

    .line 265
    :cond_42
    iget-object v9, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_29

    .line 271
    .end local v8           #x:F
    :pswitch_49
    int-to-float v9, v7

    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 272
    .local v4, t:F
    mul-float v9, v13, v4

    float-to-int v3, v9

    .line 273
    .local v3, index:I
    int-to-float v9, v3

    div-float v5, v9, v13

    .line 274
    .local v5, t_inf:F
    add-int/lit8 v9, v3, 0x1

    int-to-float v9, v9

    div-float v6, v9, v13

    .line 275
    .local v6, t_sup:F
    sget-object v9, Landroid/widget/Scroller;->SPLINE:[F

    aget v0, v9, v3

    .line 276
    .local v0, d_inf:F
    sget-object v9, Landroid/widget/Scroller;->SPLINE:[F

    add-int/lit8 v10, v3, 0x1

    aget v1, v9, v10

    .line 277
    .local v1, d_sup:F
    sub-float v9, v4, v5

    sub-float v10, v6, v5

    div-float/2addr v9, v10

    sub-float v10, v1, v0

    mul-float/2addr v9, v10

    add-float v2, v0, v9

    .line 279
    .local v2, distanceCoef:F
    iget v9, p0, Landroid/widget/Scroller;->mStartX:I

    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v11, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 281
    iget v9, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v10, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 282
    iget v9, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v10, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 284
    iget v9, p0, Landroid/widget/Scroller;->mStartY:I

    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v11, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 286
    iget v9, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v10, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 287
    iget v9, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v10, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 289
    iget v9, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v9, v10, :cond_1a

    iget v9, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v9, v10, :cond_1a

    .line 290
    iput-boolean v14, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1a

    .line 297
    .end local v0           #d_inf:F
    .end local v1           #d_sup:F
    .end local v2           #distanceCoef:F
    .end local v3           #index:I
    .end local v4           #t:F
    .end local v5           #t_inf:F
    .end local v6           #t_sup:F
    :cond_c6
    iget v9, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 298
    iget v9, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 299
    iput-boolean v14, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1a

    .line 258
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_49
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 5
    .parameter "extend"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 461
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 462
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 463
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 464
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 34
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_84

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_84

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v12

    .line 374
    .local v12, oldVel:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    .line 375
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    .line 376
    .local v6, dy:F
    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 378
    .local v7, hyp:F
    div-float v10, v5, v7

    .line 379
    .local v10, ndx:F
    div-float v11, v6, v7

    .line 381
    .local v11, ndy:F
    mul-float v13, v10, v12

    .line 382
    .local v13, oldVelocityX:F
    mul-float v14, v11, v12

    .line 383
    .local v14, oldVelocityY:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_84

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_84

    .line 385
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 386
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 390
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v7           #hyp:F
    .end local v10           #ndx:F
    .end local v11           #ndy:F
    .end local v12           #oldVel:F
    .end local v13           #oldVelocityX:F
    .end local v14           #oldVelocityY:F
    :cond_84
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMode:I

    .line 391
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Scroller;->mFinished:Z

    .line 393
    mul-int v17, p3, p3

    mul-int v18, p4, p4

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 395
    .local v16, velocity:F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mVelocity:F

    .line 396
    sget v17, Landroid/widget/Scroller;->START_TENSION:F

    mul-float v17, v17, v16

    sget v18, Landroid/widget/Scroller;->ALPHA:F

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    .line 397
    .local v8, l:D
    const-wide v17, 0x408f400000000000L

    sget v19, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff0

    sub-double v19, v19, v21

    div-double v19, v8, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mDuration:I

    .line 398
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/Scroller;->mStartTime:J

    .line 399
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    .line 400
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    .line 402
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1c3

    const/high16 v17, 0x3f80

    move/from16 v3, v17

    .line 403
    .local v3, coeffX:F
    :goto_fd
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1ce

    const/high16 v17, 0x3f80

    move/from16 v4, v17

    .line 405
    .local v4, coeffY:F
    :goto_107
    sget v17, Landroid/widget/Scroller;->ALPHA:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sget v19, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sget v21, Landroid/widget/Scroller;->DECELERATION_RATE:F

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0

    sub-double v21, v21, v23

    div-double v19, v19, v21

    mul-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->exp(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v15, v0

    .line 408
    .local v15, totalDistance:I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 409
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 410
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 411
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 413
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 418
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 422
    return-void

    .line 402
    .end local v3           #coeffX:F
    .end local v4           #coeffY:F
    .end local v15           #totalDistance:I
    :cond_1c3
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v3, v17

    goto/16 :goto_fd

    .line 403
    .restart local v3       #coeffX:F
    :cond_1ce
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v4, v17

    goto/16 :goto_107
.end method

.method public final forceFinished(Z)V
    .registers 2
    .parameter "finished"

    .prologue
    .line 168
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 169
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 206
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 6
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 505
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public setFinalX(I)V
    .registers 4
    .parameter "newX"

    .prologue
    .line 483
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 484
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 486
    return-void
.end method

.method public setFinalY(I)V
    .registers 4
    .parameter "newY"

    .prologue
    .line 496
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 497
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 499
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .parameter "friction"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 143
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 319
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 320
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 8
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 336
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 337
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 338
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 339
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 340
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 341
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 342
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 343
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 344
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 345
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 346
    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 347
    return-void
.end method

.method public timePassed()I
    .registers 5

    .prologue
    .line 472
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
