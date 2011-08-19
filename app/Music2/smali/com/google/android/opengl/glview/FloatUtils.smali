.class public Lcom/google/android/opengl/glview/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field private static final ANIMATION_SPEED:F = 4.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animate(FFF)F
    .locals 1
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 24
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/google/android/opengl/glview/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .locals 3
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 29
    cmpl-float v1, p0, p1

    if-nez v1, :cond_0

    move v1, p1

    .line 43
    :goto_0
    return v1

    .line 31
    :cond_0
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 32
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    cmpl-float v1, v0, p0

    if-nez v1, :cond_2

    move v1, p1

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    cmpl-float v1, p0, p1

    if-lez v1, :cond_3

    cmpg-float v1, v0, p1

    if-gez v1, :cond_3

    move v1, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    cmpg-float v1, p0, p1

    if-gez v1, :cond_4

    cmpl-float v1, v0, p1

    if-lez v1, :cond_4

    move v1, p1

    .line 41
    goto :goto_0

    :cond_4
    move v1, v0

    .line 43
    goto :goto_0
.end method

.method public static animateWithDelta(FFF)F
    .locals 4
    .parameter "dt"
    .parameter "currentPos"
    .parameter "targetPos"

    .prologue
    .line 49
    const v0, 0x3c23d70a

    .line 50
    .local v0, minOffsetDelta:F
    sub-float v2, p2, p1

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float v1, p1, v2

    .line 51
    .local v1, result:F
    sub-float v2, v1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 52
    move v1, p2

    .line 54
    :cond_0
    return v1
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 58
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method
