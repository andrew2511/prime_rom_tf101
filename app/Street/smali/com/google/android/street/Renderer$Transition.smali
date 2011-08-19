.class public Lcom/google/android/street/Renderer$Transition;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation


# instance fields
.field private mClippedX:F

.field private mClippedY:F

.field private final mDuration:I

.field public final mNewUserOrientation:Lcom/google/android/street/UserOrientation;

.field private final mStartTime:J

.field public final mX:F

.field public final mY:F


# direct methods
.method public constructor <init>(FFLcom/google/android/street/UserOrientation;I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "newUserOrientation"
    .parameter "duration"

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p1, p0, Lcom/google/android/street/Renderer$Transition;->mX:F

    .line 319
    iput p2, p0, Lcom/google/android/street/Renderer$Transition;->mY:F

    .line 320
    iput p1, p0, Lcom/google/android/street/Renderer$Transition;->mClippedX:F

    .line 321
    iput p2, p0, Lcom/google/android/street/Renderer$Transition;->mClippedY:F

    .line 322
    new-instance v0, Lcom/google/android/street/UserOrientation;

    invoke-direct {v0, p3}, Lcom/google/android/street/UserOrientation;-><init>(Lcom/google/android/street/UserOrientation;)V

    iput-object v0, p0, Lcom/google/android/street/Renderer$Transition;->mNewUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 323
    invoke-virtual {p0}, Lcom/google/android/street/Renderer$Transition;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/street/Renderer$Transition;->mStartTime:J

    .line 324
    iput p4, p0, Lcom/google/android/street/Renderer$Transition;->mDuration:I

    .line 325
    return-void
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public detectCollision(Lcom/google/android/street/DepthMap;)Z
    .locals 9
    .parameter "depthMap"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 372
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 373
    .local v2, trajectoryYawPitch:[F
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mX:F

    iget v4, p0, Lcom/google/android/street/Renderer$Transition;->mY:F

    neg-float v4, v4

    invoke-static {v3, v6, v4, v2}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 375
    aget v3, v2, v7

    aget v4, v2, v8

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/android/street/DepthMap;->computeDepthAndNormal(FF[F)F

    move-result v3

    const v4, 0x3f666666

    mul-float v1, v3, v4

    .line 378
    .local v1, maxDistance:F
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mX:F

    iput v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedX:F

    .line 379
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mY:F

    iput v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedY:F

    .line 380
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mX:F

    iget v4, p0, Lcom/google/android/street/Renderer$Transition;->mX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/street/Renderer$Transition;->mY:F

    iget v5, p0, Lcom/google/android/street/Renderer$Transition;->mY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 381
    .local v0, distance:F
    cmpl-float v3, v1, v6

    if-lez v3, :cond_0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 382
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedX:F

    div-float v4, v1, v0

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedX:F

    .line 383
    iget v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedY:F

    div-float v4, v1, v0

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/Renderer$Transition;->mClippedY:F

    move v3, v8

    .line 386
    :goto_0
    return v3

    :cond_0
    move v3, v7

    goto :goto_0
.end method

.method public getClippedX()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/google/android/street/Renderer$Transition;->mClippedX:F

    return v0
.end method

.method public getClippedY()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/google/android/street/Renderer$Transition;->mClippedY:F

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 334
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/street/Renderer$Transition;->getUnboundedProgress()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getUnboundedProgress()F
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/street/Renderer$Transition;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/street/Renderer$Transition;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/street/Renderer$Transition;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isComplete()Z
    .locals 4

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/google/android/street/Renderer$Transition;->mStartTime:J

    iget v2, p0, Lcom/google/android/street/Renderer$Transition;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/street/Renderer$Transition;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
