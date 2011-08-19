.class public Lcom/layar/core/animation/RotatePoiAnimation;
.super Lcom/layar/core/animation/Animation;
.source "RotatePoiAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/layar/core/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateUpdate(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)V
    .locals 3
    .parameter "old"
    .parameter "update"

    .prologue
    const/4 v2, 0x0

    .line 18
    iget-object v0, p1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p2, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v0, Lcom/layar/data/Transform;->angle:F

    iget-object v1, p1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v1, v1, Lcom/layar/data/Transform;->angle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->from:F

    .line 20
    iput v2, p0, Lcom/layar/core/animation/RotatePoiAnimation;->to:F

    .line 21
    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iput v2, v0, Lcom/layar/core/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iput v2, v0, Lcom/layar/core/math/Vector3f;->y:F

    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/layar/core/math/Vector3f;->z:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->persist:Z

    .line 24
    :cond_0
    return-void
.end method

.method public isDefault()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 13
    iget v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->from:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->to:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState(Lcom/layar/core/animation/TransformationState;F)V
    .locals 3
    .parameter "state"
    .parameter "value"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v1, v1, Lcom/layar/core/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/layar/core/animation/RotatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v2, v2, Lcom/layar/core/math/Vector3f;->z:F

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/layar/core/animation/TransformationState;->rotate(FFFF)V

    .line 10
    return-void
.end method
