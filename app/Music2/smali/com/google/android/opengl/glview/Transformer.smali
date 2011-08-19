.class public Lcom/google/android/opengl/glview/Transformer;
.super Lcom/google/android/opengl/glview/GLView;
.source "Transformer.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_FRICTION_COEFFICIENT:F = 8.0f

.field private static final MAX_SIMULATION_STEPS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Transformer"

.field public static final mFrictionCoeff:F = 8.0f

.field private static final mMass:F = 5.0f

.field private static final mVelocityThreshold:F = 10.0f


# instance fields
.field private mAnimatingOffset:Z

.field private mBiasX:F

.field private mBiasY:F

.field private mBottomMargin:F

.field private mBounceBack:Z

.field private mChild:Lcom/google/android/opengl/glview/GLView;

.field private mFlingX:F

.field private mFlingY:F

.field private mLeftMargin:F

.field private mMaxOverScrollX:F

.field private mMaxOverScrollY:F

.field private mMinimumSizeH:F

.field private mMinimumSizeW:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOverscrolling:Z

.field private mRightMagin:F

.field private mTargetOffsetX:F

.field private mTargetOffsetY:F

.field private mTopMargin:F

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 3
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 18
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    .line 29
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 30
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    .line 31
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    .line 32
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    .line 33
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    .line 34
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    .line 35
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    .line 43
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 44
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->setMinimumSize(FF)V

    .line 51
    return-void
.end method

.method private clampAxis(FFFFFF)F
    .locals 4
    .parameter "childPose"
    .parameter "childW"
    .parameter "w"
    .parameter "oldOffsetPose"
    .parameter "delta"
    .parameter "margin"

    .prologue
    .line 226
    const/4 v2, 0x0

    add-float v3, p1, p2

    sub-float/2addr v3, p3

    add-float/2addr v3, p6

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 227
    .local v1, offsetMin:F
    move v0, p6

    .line 228
    .local v0, offsetMax:F
    sub-float v2, p4, p5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private clampVelocity(FF)F
    .locals 3
    .parameter "currentVelocity"
    .parameter "newVelocity"

    .prologue
    const/4 v2, 0x0

    .line 353
    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    move v1, p1

    .line 369
    :goto_0
    return v1

    .line 357
    :cond_0
    mul-float v1, p1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, p2

    .line 359
    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    .line 363
    .local v0, velocity:F
    cmpg-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpg-float v1, p2, v2

    if-gez v1, :cond_3

    .line 364
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    move v1, v0

    .line 369
    goto :goto_0

    .line 366
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method

.method private computeMinimumScroll(FFFF)F
    .locals 4
    .parameter "parentStart"
    .parameter "parentLength"
    .parameter "childStart"
    .parameter "childLength"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, delta:F
    add-float v2, p1, p2

    .line 171
    .local v2, parentEnd:F
    add-float v0, p3, p4

    .line 173
    .local v0, childEnd:F
    cmpg-float v3, p3, p1

    if-gez v3, :cond_2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    .line 174
    cmpl-float v3, p4, p2

    if-lez v3, :cond_1

    .line 176
    sub-float v1, v2, v0

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    sub-float v1, p1, p3

    goto :goto_0

    .line 181
    :cond_2
    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v3, p3, p1

    if-lez v3, :cond_0

    .line 182
    cmpl-float v3, p4, p2

    if-lez v3, :cond_3

    .line 184
    sub-float v1, p3, p1

    goto :goto_0

    .line 187
    :cond_3
    sub-float v1, v0, v2

    goto :goto_0
.end method

.method private doAnimationStep(F)V
    .locals 10
    .parameter "dt"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 373
    iget-object v6, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-nez v6, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    neg-float v4, v6

    .line 378
    .local v4, minOffsetX:F
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    neg-float v5, v6

    .line 379
    .local v5, minOffsetY:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move v6, v8

    :goto_1
    neg-float v6, v6

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    sub-float v2, v6, v7

    .line 381
    .local v2, maxOffsetX:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v6, v8

    :goto_2
    neg-float v6, v6

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    sub-float v3, v6, v7

    .line 384
    .local v3, maxOffsetY:F
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/glview/Transformer;->clampVelocity(FF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 385
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/glview/Transformer;->clampVelocity(FF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 388
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    .line 389
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    .line 392
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    .line 393
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    .line 395
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v6, v6, v4

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v6, v6, v2

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v6, v6, v5

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_5

    .line 397
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 398
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 399
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 405
    :goto_3
    iget-boolean v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    if-eqz v6, :cond_a

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, doneOverScrollingX:Z
    const/4 v1, 0x0

    .line 408
    .local v1, doneOverScrollingY:Z
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_6

    .line 409
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-static {p1, v6, v4}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 416
    :goto_4
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_8

    .line 417
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-static {p1, v6, v5}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 424
    :goto_5
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 425
    iput-boolean v9, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 426
    invoke-virtual {p0, v9}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 427
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 428
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 429
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffestAnimation()V

    goto/16 :goto_0

    .line 379
    .end local v0           #doneOverScrollingX:Z
    .end local v1           #doneOverScrollingY:Z
    .end local v2           #maxOffsetX:F
    .end local v3           #maxOffsetY:F
    :cond_3
    iget-object v6, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v7

    sub-float/2addr v6, v7

    goto/16 :goto_1

    .line 381
    .restart local v2       #maxOffsetX:F
    :cond_4
    iget-object v6, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v7

    sub-float/2addr v6, v7

    goto/16 :goto_2

    .line 401
    .restart local v3       #maxOffsetY:F
    :cond_5
    iput-boolean v9, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    goto :goto_3

    .line 410
    .restart local v0       #doneOverScrollingX:Z
    .restart local v1       #doneOverScrollingY:Z
    :cond_6
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_7

    .line 411
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-static {p1, v6, v2}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    goto :goto_4

    .line 413
    :cond_7
    const/4 v0, 0x1

    .line 414
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    goto :goto_4

    .line 418
    :cond_8
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_9

    .line 419
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-static {p1, v6, v3}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    goto :goto_5

    .line 421
    :cond_9
    const/4 v1, 0x1

    .line 422
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_5

    .line 432
    .end local v0           #doneOverScrollingX:Z
    .end local v1           #doneOverScrollingY:Z
    :cond_a
    const/high16 v6, 0x4120

    invoke-direct {p0, v6}, Lcom/google/android/opengl/glview/Transformer;->isInMotion(F)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 433
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Transformer;->doPhysics(F)V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffestAnimation()V

    .line 452
    :cond_b
    :goto_6
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_c

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 453
    :cond_c
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    neg-float v6, v6

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    neg-float v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    goto/16 :goto_0

    .line 435
    :cond_d
    iget-boolean v6, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    if-eqz v6, :cond_e

    .line 441
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    invoke-static {p1, v6, v7}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 442
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    invoke-static {p1, v6, v7}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 443
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b

    .line 444
    iput-boolean v9, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 445
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 446
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_6

    .line 449
    :cond_e
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 450
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_6
.end method

.method private doPhysics(F)V
    .locals 11
    .parameter "dt"

    .prologue
    const/high16 v10, -0x3f00

    const/high16 v9, 0x40a0

    .line 461
    const v4, 0x3c23d70a

    .line 462
    .local v4, minStepTime:F
    cmpl-float v7, p1, v4

    if-lez v7, :cond_0

    div-float v7, p1, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move v2, v7

    .line 464
    .local v2, N:I
    :goto_0
    const/4 v7, 0x5

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 465
    int-to-float v7, v2

    div-float/2addr p1, v7

    .line 467
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 469
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float v0, v10, v7

    .line 470
    .local v0, Ffx:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float v1, v10, v7

    .line 473
    .local v1, Ffy:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float/2addr v7, v9

    mul-float v8, v0, p1

    add-float v5, v7, v8

    .line 474
    .local v5, momentumX:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float/2addr v7, v9

    mul-float v8, v1, p1

    add-float v6, v7, v8

    .line 475
    .local v6, momentumY:F
    div-float v7, v5, v9

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 476
    div-float v7, v6, v9

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 478
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    .line 479
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    .end local v0           #Ffx:F
    .end local v1           #Ffy:F
    .end local v2           #N:I
    .end local v3           #i:I
    .end local v5           #momentumX:F
    .end local v6           #momentumY:F
    :cond_0
    const/4 v7, 0x1

    move v2, v7

    goto :goto_0

    .line 481
    .restart local v2       #N:I
    .restart local v3       #i:I
    :cond_1
    return-void
.end method

.method private isInMotion(F)Z
    .locals 1
    .parameter "threshold"

    .prologue
    .line 485
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    .line 247
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 248
    return-void
.end method

.method public adjustOffset(FF)V
    .locals 15
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v1

    .line 210
    .local v1, childX:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v12

    .line 211
    .local v12, childY:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v2

    .line 212
    .local v2, childW:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v7

    .line 213
    .local v7, childH:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v3

    .line 214
    .local v3, w:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v8

    .line 215
    .local v8, h:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v4

    .line 216
    .local v4, oldOffsetX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v9

    .line 217
    .local v9, oldOffsetY:F
    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    move-object v0, p0

    move/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v13

    .line 218
    .local v13, ox:F
    iget v11, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    move-object v5, p0

    move v6, v12

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v14

    .line 219
    .local v14, oy:F
    invoke-virtual {p0, v13, v14}, Lcom/google/android/opengl/glview/Transformer;->setOffset(FF)V

    .line 220
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->getId()I

    move-result v1

    .end local v1           #childX:F
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/opengl/glview/Transformer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .end local v2           #childW:F
    .end local v3           #w:F
    .end local v4           #oldOffsetX:F
    .end local v7           #childH:F
    .end local v8           #h:F
    .end local v9           #oldOffsetY:F
    .end local v12           #childY:F
    .end local v13           #ox:F
    .end local v14           #oy:F
    :cond_0
    return-void
.end method

.method public cancelOffestAnimation()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 79
    return-void
.end method

.method public convertFromParent(Lcom/google/android/opengl/glview/Point;)V
    .locals 2
    .parameter "pt"

    .prologue
    .line 149
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    .line 150
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    .line 151
    return-void
.end method

.method public convertToParent(Lcom/google/android/opengl/glview/Point;)V
    .locals 2
    .parameter "pt"

    .prologue
    .line 143
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    .line 144
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    .line 145
    return-void
.end method

.method public createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/opengl/glview/Transformer;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    return-object v0
.end method

.method protected gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 313
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"
    .parameter "e1"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 340
    iput p3, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    .line 341
    iput p4, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 343
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"
    .parameter "e1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 319
    invoke-virtual {p0, p3, p4}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffestAnimation()V

    .line 322
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 328
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 1
    .parameter "e0"

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 334
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 270
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinLength(Z)F
    .locals 2
    .parameter "horizontal"

    .prologue
    const/high16 v1, -0x4080

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    goto :goto_0

    .line 203
    :cond_2
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    goto :goto_0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .locals 0

    .prologue
    .line 275
    return-object p0
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public layout(ZFF)V
    .locals 2
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->internalLayout(ZFF)V

    .line 234
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 238
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 239
    return-void
.end method

.method public final offsetX()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    return v0
.end method

.method public final offsetY()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    return v0
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 5
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/4 v4, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, result:Z
    invoke-direct {p0, p2}, Lcom/google/android/opengl/glview/Transformer;->doAnimationStep(F)V

    .line 123
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 124
    .local v0, offsetX:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 125
    .local v1, offsetY:F
    invoke-virtual {p1, v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v2

    .line 127
    if-nez v2, :cond_1

    .line 128
    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 130
    :cond_1
    :goto_0
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 131
    return v2

    .line 128
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p1, v1}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 254
    iput-object v1, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    .line 256
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 155
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    add-float/2addr p1, v2

    .line 156
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    add-float/2addr p2, v2

    .line 158
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->x()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v3

    invoke-direct {p0, v2, v3, p1, p3}, Lcom/google/android/opengl/glview/Transformer;->computeMinimumScroll(FFFF)F

    move-result v0

    .line 159
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->y()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v3

    invoke-direct {p0, v2, v3, p2, p4}, Lcom/google/android/opengl/glview/Transformer;->computeMinimumScroll(FFFF)F

    move-result v1

    .line 160
    .local v1, dy:F
    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 161
    return-void
.end method

.method public requestScrollTo(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/Transformer;->setAnimatingOffset(FF)V

    .line 166
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 6
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 280
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 281
    .local v0, ox:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 282
    .local v1, oy:F
    if-eqz p2, :cond_0

    .line 283
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 285
    :cond_0
    if-eqz p3, :cond_1

    .line 286
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p3, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 288
    :cond_1
    const/4 v2, 0x0

    .line 289
    .local v2, result:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz p1, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-ne p1, v3, :cond_4

    .line 290
    :cond_2
    const/high16 v3, 0x4120

    invoke-direct {p0, v3}, Lcom/google/android/opengl/glview/Transformer;->isInMotion(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    sget-object v2, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 294
    :cond_3
    iput v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 295
    iput v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 298
    :cond_4
    if-nez v2, :cond_5

    .line 299
    invoke-super/range {p0 .. p5}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v2

    .line 301
    :cond_5
    if-eqz p2, :cond_6

    .line 302
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 304
    :cond_6
    if-eqz p3, :cond_7

    .line 305
    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 307
    :cond_7
    return-object v2
.end method

.method public setAnimatingOffset(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    .line 73
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 75
    return-void
.end method

.method public setBounceBack(Z)V
    .locals 0
    .parameter "bounceBack"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    .line 109
    return-void
.end method

.method public setMargins(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 112
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    .line 113
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    .line 114
    iput p3, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    .line 115
    iput p4, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    .line 116
    return-void
.end method

.method public setMaxOverScroll(FF)V
    .locals 0
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"

    .prologue
    .line 98
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    .line 99
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    .line 100
    return-void
.end method

.method public setMinimumSize(FF)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 87
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    .line 88
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    .line 89
    return-void
.end method

.method public final setOffset(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 60
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
