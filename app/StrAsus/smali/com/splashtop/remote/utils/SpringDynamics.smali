.class public Lcom/splashtop/remote/utils/SpringDynamics;
.super Lcom/splashtop/remote/utils/Dynamics;
.source "SpringDynamics.java"


# instance fields
.field private mDamping:F

.field private mFriction:F

.field private mStiffness:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/splashtop/remote/utils/Dynamics;-><init>()V

    return-void
.end method

.method private calculateAcceleration()F
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/splashtop/remote/utils/SpringDynamics;->getDistanceToLimit()F

    move-result v1

    .line 76
    .local v1, distanceFromLimit:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 77
    iget v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mStiffness:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mDamping:F

    iget v4, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mVelocity:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 82
    .local v0, acceleration:F
    :goto_0
    return v0

    .line 79
    .end local v0           #acceleration:F
    :cond_0
    iget v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mFriction:F

    neg-float v2, v2

    iget v3, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mVelocity:F

    mul-float v0, v2, v3

    .restart local v0       #acceleration:F
    goto :goto_0
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 5
    .parameter "dt"

    .prologue
    .line 88
    int-to-float v2, p1

    const/high16 v3, 0x447a

    div-float v1, v2, v3

    .line 91
    .local v1, fdt:F
    invoke-direct {p0}, Lcom/splashtop/remote/utils/SpringDynamics;->calculateAcceleration()F

    move-result v0

    .line 94
    .local v0, a:F
    iget v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mPosition:F

    iget v3, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mVelocity:F

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mPosition:F

    .line 97
    iget v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mVelocity:F

    mul-float v3, v0, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mVelocity:F

    .line 98
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 52
    iput p1, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mFriction:F

    .line 53
    return-void
.end method

.method public setSpring(FF)V
    .locals 3
    .parameter "stiffness"
    .parameter "dampingRatio"

    .prologue
    .line 63
    iput p1, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mStiffness:F

    .line 64
    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/splashtop/remote/utils/SpringDynamics;->mDamping:F

    .line 65
    return-void
.end method
