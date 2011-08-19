.class public Lcom/asus/livewallpaper/gl/MyFloatMath;
.super Ljava/lang/Object;
.source "MyFloatMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final bound(FFF)F
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 45
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    .line 48
    goto :goto_0

    :cond_1
    move v0, p0

    .line 50
    goto :goto_0
.end method

.method static bound(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 77
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    .line 80
    goto :goto_0

    :cond_1
    move v0, p0

    .line 82
    goto :goto_0
.end method

.method static getAppropriateIncValue(FFFF)F
    .locals 2
    .parameter "value"
    .parameter "max"
    .parameter "min"
    .parameter "factor"

    .prologue
    .line 56
    mul-float v0, p0, p3

    .line 58
    .local v0, ret:F
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_2

    .line 59
    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    .line 60
    move v0, p1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    cmpg-float v1, v0, p2

    if-gez v1, :cond_0

    .line 62
    move v0, p2

    goto :goto_0

    .line 64
    :cond_2
    neg-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 65
    neg-float v0, p1

    goto :goto_0

    .line 66
    :cond_3
    neg-float v1, p2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 67
    neg-float v0, p2

    goto :goto_0
.end method

.method static final getCircleDegreeDiffer(FF)F
    .locals 1
    .parameter "to"
    .parameter "from"

    .prologue
    .line 37
    sub-float/2addr p0, p1

    .line 38
    invoke-static {p0}, Lcom/asus/livewallpaper/gl/MyFloatMath;->normalizedDegree(F)F

    move-result p0

    .line 39
    const/high16 v0, 0x4334

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43b4

    sub-float v0, p0, v0

    goto :goto_0
.end method

.method static final normalizedDegree(F)F
    .locals 2
    .parameter "deg"

    .prologue
    const/high16 v1, 0x43b4

    .line 30
    rem-float/2addr p0, v1

    .line 31
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    add-float v0, p0, v1

    goto :goto_0
.end method

.method static toRadians(F)F
    .locals 2
    .parameter "angdeg"

    .prologue
    .line 17
    const/high16 v0, 0x4334

    div-float v0, p0, v0

    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    return v0
.end method
