.class public abstract Lcom/splashtop/remote/utils/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# static fields
.field private static final MAX_TIMESTEP:I = 0x32


# instance fields
.field protected mLastTime:J

.field protected mMaxPosition:F

.field protected mMinPosition:F

.field protected mPosition:F

.field protected mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/splashtop/remote/utils/Dynamics;->mMaxPosition:F

    .line 49
    const v0, -0x800001

    iput v0, p0, Lcom/splashtop/remote/utils/Dynamics;->mMinPosition:F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/splashtop/remote/utils/Dynamics;->mLastTime:J

    return-void
.end method


# virtual methods
.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, distanceToLimit:F
    iget v1, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 151
    iget v1, p0, Lcom/splashtop/remote/utils/Dynamics;->mMaxPosition:F

    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget v1, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 153
    iget v1, p0, Lcom/splashtop/remote/utils/Dynamics;->mMinPosition:F

    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/splashtop/remote/utils/Dynamics;->mVelocity:F

    return v0
.end method

.method public isAtRest(FF)Z
    .locals 6
    .parameter "velocityTolerance"
    .parameter "positionTolerance"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    move v0, v5

    .line 101
    .local v0, standingStill:Z
    :goto_0
    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/splashtop/remote/utils/Dynamics;->mMaxPosition:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/splashtop/remote/utils/Dynamics;->mMinPosition:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v1, v5

    .line 103
    .local v1, withinLimits:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #standingStill:Z
    .end local v1           #withinLimits:Z
    :cond_0
    move v0, v4

    .line 100
    goto :goto_0

    .restart local v0       #standingStill:Z
    :cond_1
    move v1, v4

    .line 101
    goto :goto_1

    .restart local v1       #withinLimits:Z
    :cond_2
    move v2, v4

    .line 103
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method public setMaxPosition(F)V
    .locals 0
    .parameter "maxPosition"

    .prologue
    .line 112
    iput p1, p0, Lcom/splashtop/remote/utils/Dynamics;->mMaxPosition:F

    .line 113
    return-void
.end method

.method public setMinPosition(F)V
    .locals 0
    .parameter "minPosition"

    .prologue
    .line 121
    iput p1, p0, Lcom/splashtop/remote/utils/Dynamics;->mMinPosition:F

    .line 122
    return-void
.end method

.method public setState(FFJ)V
    .locals 0
    .parameter "position"
    .parameter "velocity"
    .parameter "now"

    .prologue
    .line 63
    iput p2, p0, Lcom/splashtop/remote/utils/Dynamics;->mVelocity:F

    .line 64
    iput p1, p0, Lcom/splashtop/remote/utils/Dynamics;->mPosition:F

    .line 65
    iput-wide p3, p0, Lcom/splashtop/remote/utils/Dynamics;->mLastTime:J

    .line 66
    return-void
.end method

.method public update(J)V
    .locals 3
    .parameter "now"

    .prologue
    .line 130
    iget-wide v1, p0, Lcom/splashtop/remote/utils/Dynamics;->mLastTime:J

    sub-long v1, p1, v1

    long-to-int v0, v1

    .line 131
    .local v0, dt:I
    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 132
    const/16 v0, 0x32

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lcom/splashtop/remote/utils/Dynamics;->onUpdate(I)V

    .line 137
    iput-wide p1, p0, Lcom/splashtop/remote/utils/Dynamics;->mLastTime:J

    .line 138
    return-void
.end method
