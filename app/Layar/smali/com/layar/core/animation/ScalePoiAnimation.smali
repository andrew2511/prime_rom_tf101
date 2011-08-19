.class public Lcom/layar/core/animation/ScalePoiAnimation;
.super Lcom/layar/core/animation/Animation;
.source "ScalePoiAnimation.java"


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
    const/high16 v2, 0x3f80

    .line 21
    iget-object v0, p1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p1, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v0, Lcom/layar/data/Transform;->scale:F

    iget-object v1, p2, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v1, v1, Lcom/layar/data/Transform;->scale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->from:F

    .line 23
    iput v2, p0, Lcom/layar/core/animation/ScalePoiAnimation;->to:F

    .line 24
    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iput v2, v0, Lcom/layar/core/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iput v2, v0, Lcom/layar/core/math/Vector3f;->y:F

    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iput v2, v0, Lcom/layar/core/math/Vector3f;->z:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->persist:Z

    .line 27
    :cond_0
    return-void
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 16
    iget v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->from:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->to:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

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
    .locals 6
    .parameter "state"
    .parameter "value"

    .prologue
    const/high16 v5, 0x3f80

    .line 9
    iget-object v3, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v3, v3, Lcom/layar/core/math/Vector3f;->x:F

    sub-float v3, v5, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v4, v4, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v4, p2

    add-float v0, v3, v4

    .line 10
    .local v0, scaleX:F
    iget-object v3, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v3, v3, Lcom/layar/core/math/Vector3f;->y:F

    sub-float v3, v5, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v4, v4, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v4, p2

    add-float v1, v3, v4

    .line 11
    .local v1, scaleY:F
    iget-object v3, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v3, v3, Lcom/layar/core/math/Vector3f;->z:F

    sub-float v3, v5, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/layar/core/animation/ScalePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v4, v4, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v4, p2

    add-float v2, v3, v4

    .line 12
    .local v2, scaleZ:F
    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    .line 13
    return-void
.end method
