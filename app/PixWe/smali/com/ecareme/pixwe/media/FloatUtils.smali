.class public Lcom/ecareme/pixwe/media/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field private static final ANIMATION_SPEED:F = 4.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animate(FFF)F
    .locals 1
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 39
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0
.end method

.method public static final animate(Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;F)V
    .locals 2
    .parameter "animVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 64
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 65
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    invoke-static {v0, v1, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 66
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    invoke-static {v0, v1, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 67
    iget v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    iget v1, p1, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    invoke-static {v0, v1, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 68
    return-void
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 170
    cmpl-float v1, p0, p1

    if-nez v1, :cond_0

    move v1, p1

    .line 184
    :goto_0
    return v1

    .line 172
    :cond_0
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 173
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, p1

    .line 174
    goto :goto_0

    .line 175
    :cond_1
    cmpl-float v1, v0, p0

    if-nez v1, :cond_2

    move v1, p1

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    cmpl-float v1, p0, p1

    if-lez v1, :cond_3

    cmpg-float v1, v0, p1

    if-gez v1, :cond_3

    move v1, p1

    .line 180
    goto :goto_0

    .line 181
    :cond_3
    cmpg-float v1, p0, p1

    if-gez v1, :cond_4

    cmpl-float v1, v0, p1

    if-lez v1, :cond_4

    move v1, p1

    .line 182
    goto :goto_0

    :cond_4
    move v1, v0

    .line 184
    goto :goto_0
.end method

.method public static final animateWithMaxSpeed(FFFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"
    .parameter "maxSpeed"

    .prologue
    .line 44
    move v1, p1

    .line 45
    .local v1, newTargetVal:F
    sub-float v0, v1, p0

    .line 46
    .local v0, delta:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p3

    if-lez v2, :cond_0

    .line 47
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, p3

    add-float v1, p0, v2

    .line 49
    :cond_0
    const/high16 v2, 0x4080

    mul-float/2addr p2, v2

    .line 50
    invoke-static {p0, v1, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v2

    return v2
.end method

.method public static final boundsContainsPoint(FFFFFF)Z
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 163
    cmpg-float v0, p4, p0

    if-ltz v0, :cond_0

    cmpl-float v0, p4, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_0

    cmpl-float v0, p5, p3

    if-lez v0, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final clamp(FFF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 116
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    .line 119
    goto :goto_0

    :cond_1
    move v0, p0

    .line 121
    goto :goto_0
.end method

.method public static final clamp(III)I
    .locals 1
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 136
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    .line 139
    goto :goto_0

    :cond_1
    move v0, p0

    .line 141
    goto :goto_0
.end method

.method public static final clampMax(FF)F
    .locals 1
    .parameter "val"
    .parameter "maxVal"

    .prologue
    .line 96
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move v0, p1

    .line 99
    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static final clampMin(FF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"

    .prologue
    .line 80
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static final max(FF)F
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 190
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move v0, p0

    .line 193
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method
