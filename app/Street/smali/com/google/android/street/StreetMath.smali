.class public Lcom/google/android/street/StreetMath;
.super Ljava/lang/Object;
.source "StreetMath.java"


# static fields
.field public static final LN2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/street/StreetMath;->LN2:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static angleSubtractDegrees(FF)F
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 184
    sub-float v1, p0, p1

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result v0

    .line 185
    .local v0, diff:F
    const/high16 v1, 0x4334

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x43b4

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public static angleSubtractUnit(FF)F
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 189
    sub-float v1, p0, p1

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v0

    .line 190
    .local v0, diff:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public static atan2Unit(FF)F
    .locals 5
    .parameter "y"
    .parameter "x"

    .prologue
    .line 126
    float-to-double v1, p0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3e22f983

    mul-float v0, v1, v2

    .line 127
    .local v0, atan:F
    invoke-static {v0}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v1

    return v1
.end method

.method public static atanUnit(F)F
    .locals 2
    .parameter "a"

    .prologue
    .line 121
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3e22f983

    mul-float/2addr v0, v1

    return v0
.end method

.method public static bezier(FFFF)F
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "t"

    .prologue
    .line 276
    const/high16 v1, 0x3f80

    sub-float v0, v1, p3

    .line 277
    .local v0, oneMinusT:F
    mul-float v1, v0, v0

    mul-float/2addr v1, p0

    const/high16 v2, 0x4000

    mul-float/2addr v2, p3

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, p3, p3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    return v1
.end method

.method public static bezier(FFFFF)F
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "t"

    .prologue
    const-wide/high16 v9, 0x4000

    const-wide/high16 v7, 0x4008

    .line 285
    const/high16 v1, 0x3f80

    sub-float v0, v1, p4

    .line 286
    .local v0, oneMinusT:F
    float-to-double v1, v0

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p0

    mul-double/2addr v1, v3

    float-to-double v3, v0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v7

    float-to-double v5, p4

    mul-double/2addr v3, v5

    float-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/high16 v3, 0x4040

    mul-float/2addr v3, v0

    float-to-double v3, v3

    float-to-double v5, p4

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    float-to-double v5, p2

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    float-to-double v3, p4

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static bezierTangent(FFFF)F
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "t"

    .prologue
    const/high16 v2, 0x4000

    .line 298
    mul-float v0, v2, p3

    mul-float v1, v2, p1

    sub-float v1, p0, v1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float v1, v2, p0

    sub-float/2addr v0, v1

    mul-float v1, v2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 76
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 71
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static cosDegrees(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    return v0
.end method

.method public static cosUnit(F)F
    .locals 1
    .parameter "turns"

    .prologue
    .line 111
    const v0, 0x40c90fdb

    mul-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    return v0
.end method

.method public static degreesToDirection(F)I
    .locals 3
    .parameter "yawDeg"

    .prologue
    .line 265
    const/high16 v1, 0x41b4

    add-float/2addr v1, p0

    const/high16 v2, 0x4234

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v0, v1

    .line 267
    .local v0, bucket:I
    and-int/lit8 v0, v0, 0x7

    .line 268
    return v0
.end method

.method public static degreesToRadians(F)F
    .locals 1
    .parameter "degrees"

    .prologue
    .line 167
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static degreesToUnit(F)F
    .locals 1
    .parameter "degrees"

    .prologue
    .line 152
    const v0, 0x3b360b61

    mul-float/2addr v0, p0

    return v0
.end method

.method public static exp2(F)F
    .locals 4
    .parameter "v"

    .prologue
    .line 91
    float-to-double v0, p0

    sget-wide v2, Lcom/google/android/street/StreetMath;->LN2:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static frac(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    sub-float v0, p0, v0

    return v0
.end method

.method public static log2(F)F
    .locals 4
    .parameter "v"

    .prologue
    .line 86
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/android/street/StreetMath;->LN2:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static naturalZoomLevels(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/street/StreetMath;->log2(F)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static naturalZoomLevels(IIII)I
    .locals 3
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "tileWidth"
    .parameter "tileHeight"

    .prologue
    .line 96
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p0

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->naturalZoomLevels(F)I

    move-result v0

    return v0
.end method

.method public static normalizeDegrees(F)F
    .locals 2
    .parameter "degrees"

    .prologue
    const/high16 v1, 0x43b4

    .line 50
    div-float v0, p0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    mul-float/2addr v0, v1

    sub-float v0, p0, v0

    return v0
.end method

.method public static normalizeUnitAngle(F)F
    .locals 1
    .parameter "angle"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    sub-float v0, p0, v0

    return v0
.end method

.method public static radiansToDegrees(F)F
    .locals 1
    .parameter "radians"

    .prologue
    .line 162
    const v0, 0x42652ee1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static radiansToNormalizedTilt(F)F
    .locals 2
    .parameter "radians"

    .prologue
    .line 175
    const/high16 v0, 0x3f00

    const v1, 0x3ea2f983

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public static radiansToUnit(F)F
    .locals 1
    .parameter "radians"

    .prologue
    .line 142
    const v0, 0x3e22f983

    mul-float/2addr v0, p0

    return v0
.end method

.method public static rectangularToSphericalCoords(FFF[F)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "result"

    .prologue
    .line 250
    const/4 v0, 0x0

    neg-float v1, p0

    invoke-static {v1, p2}, Lcom/google/android/street/StreetMath;->atan2Unit(FF)F

    move-result v1

    aput v1, p3, v0

    .line 251
    const/4 v0, 0x1

    mul-float v1, p0, p0

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    neg-float v2, p1

    invoke-static {v1, v2}, Lcom/google/android/street/StreetMath;->atan2Unit(FF)F

    move-result v1

    aput v1, p3, v0

    .line 252
    return-void
.end method

.method public static sinDegrees(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public static sinUnit(F)F
    .locals 1
    .parameter "turns"

    .prologue
    .line 106
    const v0, 0x40c90fdb

    mul-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public static sphericalToRectangularCoords(FF[FI)V
    .locals 8
    .parameter "unitAngleX"
    .parameter "unitAngleY"
    .parameter "result"
    .parameter "resultOffset"

    .prologue
    .line 226
    invoke-static {p0}, Lcom/google/android/street/StreetMath;->sinUnit(F)F

    move-result v2

    .line 227
    .local v2, sinX:F
    invoke-static {p0}, Lcom/google/android/street/StreetMath;->cosUnit(F)F

    move-result v0

    .line 228
    .local v0, cosX:F
    invoke-static {p1}, Lcom/google/android/street/StreetMath;->sinUnit(F)F

    move-result v3

    .line 229
    .local v3, sinY:F
    invoke-static {p1}, Lcom/google/android/street/StreetMath;->cosUnit(F)F

    move-result v1

    .line 231
    .local v1, cosY:F
    neg-float v7, v3

    mul-float v4, v7, v2

    .line 232
    .local v4, x:F
    neg-float v5, v1

    .line 233
    .local v5, y:F
    mul-float v6, v3, v0

    .line 235
    .local v6, z:F
    aput v4, p2, p3

    .line 236
    add-int/lit8 v7, p3, 0x1

    aput v5, p2, v7

    .line 237
    add-int/lit8 v7, p3, 0x2

    aput v6, p2, v7

    .line 238
    return-void
.end method

.method public static tanUnit(F)F
    .locals 2
    .parameter "turns"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/android/street/StreetMath;->sinUnit(F)F

    move-result v0

    invoke-static {p0}, Lcom/google/android/street/StreetMath;->cosUnit(F)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static unitToDegrees(F)F
    .locals 1
    .parameter "turns"

    .prologue
    .line 157
    const/high16 v0, 0x43b4

    mul-float/2addr v0, p0

    return v0
.end method

.method public static unitToRadians(F)F
    .locals 1
    .parameter "angle"

    .prologue
    .line 147
    const v0, 0x40c90fdb

    mul-float/2addr v0, p0

    return v0
.end method

.method public static wrap(FF)F
    .locals 1
    .parameter "value"
    .parameter "modulus"

    .prologue
    .line 39
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p0

    .line 42
    :goto_0
    return v0

    :cond_0
    div-float v0, p0, p1

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->frac(F)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_0
.end method
