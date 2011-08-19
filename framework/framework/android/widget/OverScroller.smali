.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"
    .parameter "flywheel"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 75
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 76
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 78
    invoke-static {p1}, Landroid/widget/OverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 513
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 514
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 9

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 292
    const/4 v6, 0x0

    .line 339
    :goto_7
    return v6

    .line 295
    :cond_8
    iget v6, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_84

    .line 339
    :cond_d
    :goto_d
    const/4 v6, 0x1

    goto :goto_7

    .line 297
    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 300
    .local v4, time:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 302
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 303
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_44

    .line 304
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 306
    .local v3, q:F
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_3d

    .line 307
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 312
    :goto_32
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 313
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_d

    .line 309
    :cond_3d
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_32

    .line 315
    .end local v3           #q:F
    :cond_44
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_d

    .line 320
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_48
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 321
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_65

    .line 322
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_65

    .line 323
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 328
    :cond_65
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 329
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_d

    .line 330
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_d

    .line 331
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_d

    .line 295
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_f
        :pswitch_48
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 3
    .parameter "extend"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 247
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 248
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 402
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 403
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 19
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_36

    .line 436
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 437
    .local v6, oldVelocityX:F
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 438
    .local v7, oldVelocityY:F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    .line 440
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 441
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 445
    .end local v6           #oldVelocityX:F
    .end local v7           #oldVelocityY:F
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 446
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 447
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 448
    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4
    .parameter "finished"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    #setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    .line 148
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 175
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 176
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 177
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOverScrolled()Z
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isScrollingInDirection(FF)Z
    .registers 7
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 533
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 534
    .local v0, dx:I
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 535
    .local v1, dy:I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 464
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 465
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 481
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 482
    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .parameter "newX"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 266
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .parameter "newY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 284
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .parameter "friction"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 125
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 126
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v3, 0x1

    .line 392
    iput v3, p0, Landroid/widget/OverScroller;->mMode:I

    .line 395
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 396
    .local v0, spingbackX:Z
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 397
    .local v1, spingbackY:Z
    if-nez v0, :cond_13

    if-eqz v1, :cond_15

    :cond_13
    move v2, v3

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public startScroll(IIII)V
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 357
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 358
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 374
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 375
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 376
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 377
    return-void
.end method

.method public timePassed()I
    .registers 9

    .prologue
    .line 524
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 525
    .local v2, time:J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 526
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
