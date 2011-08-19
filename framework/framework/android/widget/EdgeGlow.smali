.class public Landroid/widget/EdgeGlow;
.super Ljava/lang/Object;
.source "EdgeGlow.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeGlow"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "context"
    .parameter "edge"
    .parameter "glow"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/EdgeGlow;->MIN_WIDTH:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 107
    iput-object p2, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object p3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    .line 111
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 112
    return-void
.end method

.method private update()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 289
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 290
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 292
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 294
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 295
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 296
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 297
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 299
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_54

    .line 300
    iget v5, p0, Landroid/widget/EdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_c2

    .line 349
    :cond_54
    :goto_54
    return-void

    .line 302
    :pswitch_55
    iput v11, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 303
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 304
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 306
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 307
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 308
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 309
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 312
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 313
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 314
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 315
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_54

    .line 318
    :pswitch_78
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 319
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 320
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 322
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 323
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 324
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 325
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 328
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 329
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 330
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 331
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_54

    .line 336
    :pswitch_9c
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_b9

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v5, v9, v5

    move v0, v5

    .line 339
    .local v0, factor:F
    :goto_aa
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 342
    iput v11, p0, Landroid/widget/EdgeGlow;->mState:I

    goto :goto_54

    .line 336
    .end local v0           #factor:F
    :cond_b9
    const v5, 0x7f7fffff

    move v0, v5

    goto :goto_aa

    .line 345
    :pswitch_be
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    goto :goto_54

    .line 300
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_78
        :pswitch_55
        :pswitch_be
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 14
    .parameter "canvas"

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/widget/EdgeGlow;->update()V

    .line 251
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 252
    .local v1, edgeHeight:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 253
    .local v3, edgeWidth:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 254
    .local v5, glowHeight:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 256
    .local v7, glowWidth:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    int-to-float v8, v5

    iget v9, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 261
    .local v4, glowBottom:I
    iget v8, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    if-ge v8, v9, :cond_9d

    .line 263
    iget v8, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 264
    .local v6, glowLeft:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeGlow;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    .end local v6           #glowLeft:I
    :goto_5c
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    int-to-float v8, v1

    iget v9, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 275
    .local v0, edgeBottom:I
    iget v8, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    if-ge v8, v9, :cond_a7

    .line 277
    iget v8, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v9, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 278
    .local v2, edgeLeft:I
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/EdgeGlow;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    .end local v2           #edgeLeft:I
    :goto_92
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    iget v8, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eqz v8, :cond_b1

    const/4 v8, 0x1

    :goto_9c
    return v8

    .line 267
    .end local v0           #edgeBottom:I
    :cond_9d
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5c

    .line 281
    .restart local v0       #edgeBottom:I
    :cond_a7
    iget-object v8, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_92

    .line 285
    :cond_b1
    const/4 v8, 0x0

    goto :goto_9c
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 125
    return-void
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 7
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 206
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 208
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 209
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 213
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 214
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 217
    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 218
    iput v3, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 222
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 224
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 231
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 233
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 235
    return-void
.end method

.method public onPull(F)V
    .registers 13
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    .line 133
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    iget-wide v4, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1e

    .line 172
    :goto_1d
    return-void

    .line 137
    :cond_1e
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eq v4, v10, :cond_24

    .line 138
    iput v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 140
    :cond_24
    iput v10, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 142
    iput-wide v2, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 143
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 145
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 146
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 148
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 149
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 152
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 156
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 157
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_78

    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_78

    .line 158
    neg-float v1, v1

    .line 160
    :cond_78
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_80

    .line 161
    iput v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 165
    :cond_80
    const/high16 v4, 0x4080

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 168
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 169
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 170
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 171
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto/16 :goto_1d
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 178
    iput v2, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 180
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 197
    :goto_d
    return-void

    .line 184
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 185
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 186
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 187
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 188
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 190
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 191
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 192
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 193
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 195
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 196
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    goto :goto_d
.end method

.method public setSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    iput p1, p0, Landroid/widget/EdgeGlow;->mWidth:I

    .line 116
    iput p2, p0, Landroid/widget/EdgeGlow;->mHeight:I

    .line 117
    return-void
.end method
