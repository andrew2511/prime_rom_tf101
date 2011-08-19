.class public Lcom/layar/core/animation/TranslatePoiAnimation;
.super Lcom/layar/core/animation/Animation;
.source "TranslatePoiAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/layar/core/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateUpdate(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)V
    .locals 12
    .parameter "old"
    .parameter "update"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 20
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 21
    .local v8, output:[F
    iget-wide v0, p1, Lcom/layar/data/BasePOI;->latitude:D

    iget-wide v2, p1, Lcom/layar/data/BasePOI;->longitude:D

    iget-wide v4, p2, Lcom/layar/data/BasePOI;->latitude:D

    iget-wide v6, p2, Lcom/layar/data/BasePOI;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 23
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->from:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->to:F

    .line 26
    aget v0, v8, v11

    float-to-double v0, v0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    double-to-float v9, v0

    .line 27
    .local v9, angle:F
    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    aget v1, v8, v10

    float-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/layar/core/math/Vector3f;->y:F

    .line 28
    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    aget v1, v8, v10

    float-to-double v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/layar/core/math/Vector3f;->x:F

    .line 29
    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v1, p2, Lcom/layar/data/BasePOI;->altitude:F

    iget v2, p1, Lcom/layar/data/BasePOI;->altitude:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/layar/core/math/Vector3f;->z:F

    .line 31
    iput-boolean v11, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->persist:Z

    .line 32
    return-void
.end method

.method public isDefault()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    iget v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->from:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->to:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->z:F

    cmpl-float v0, v0, v2

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
    .parameter "progress"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v0, v0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v1, v1, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/layar/core/animation/TranslatePoiAnimation;->axis:Lcom/layar/core/math/Vector3f;

    iget v2, v2, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v2, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/layar/core/animation/TransformationState;->translate(FFF)V

    .line 12
    return-void
.end method
