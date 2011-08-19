.class public final Lcom/layar/core/math/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# static fields
.field public static final DBL_EPSILON:D = 2.220446049250313E-16

.field public static final DEG_TO_RAD:F = 0.017453292f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final HALF_PI:F = 1.5707964f

.field public static final INV_PI:F = 0.31830987f

.field public static final INV_TWO_PI:F = 0.15915494f

.field public static final ONE_THIRD:F = 0.33333334f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final RAD_TO_DEG:F = 57.295776f

.field public static final TWO_PI:F = 6.2831855f

.field public static final ZERO_TOLERANCE:F = 1.0E-4f

.field public static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/layar/core/math/FastMath;->rand:Ljava/util/Random;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static LERP(FFF)F
    .locals 2
    .parameter "percent"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 89
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    move v0, p1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static abs(F)F
    .locals 1
    .parameter "fValue"

    .prologue
    .line 250
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 251
    neg-float v0, p0

    .line 252
    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static acos(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 108
    const/high16 v0, -0x4080

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    .line 109
    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 110
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 115
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    const v0, 0x40490fdb

    goto :goto_0
.end method

.method public static asin(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 132
    const/high16 v0, -0x4080

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    .line 133
    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 134
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 139
    :goto_0
    return v0

    .line 136
    :cond_0
    const v0, 0x3fc90fdb

    goto :goto_0

    .line 139
    :cond_1
    const v0, -0x4036f025

    goto :goto_0
.end method

.method public static atan(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 151
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .parameter "fY"
    .parameter "fX"

    .prologue
    .line 163
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cartesianToSpherical(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "cartCoords"
    .parameter "store"

    .prologue
    const/4 v3, 0x0

    .line 512
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 513
    const/high16 v0, 0x3400

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 514
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    .line 515
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 514
    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 516
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->atan(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 517
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 518
    iget v0, p1, Lcom/layar/core/math/Vector3f;->y:F

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 519
    :cond_1
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->asin(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 520
    return-object p1
.end method

.method public static cartesianZToSpherical(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 4
    .parameter "cartCoords"
    .parameter "store"

    .prologue
    const/4 v3, 0x0

    .line 543
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 544
    const/high16 v0, 0x3400

    iput v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    .line 545
    :cond_0
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    .line 546
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 545
    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sqrt(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 547
    iget v0, p0, Lcom/layar/core/math/Vector3f;->z:F

    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->atan(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 548
    iget v0, p0, Lcom/layar/core/math/Vector3f;->x:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 549
    iget v0, p1, Lcom/layar/core/math/Vector3f;->z:F

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 550
    :cond_1
    iget v0, p0, Lcom/layar/core/math/Vector3f;->y:F

    iget v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->asin(F)F

    move-result v0

    iput v0, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 551
    return-object p1
.end method

.method public static ceil(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 175
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "input"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 597
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

.method public static copysign(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 580
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_0

    .line 581
    neg-float v0, p0

    .line 585
    :goto_0
    return v0

    .line 582
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    cmpl-float v0, p0, v1

    if-ltz v0, :cond_1

    .line 583
    neg-float v0, p0

    goto :goto_0

    :cond_1
    move v0, p0

    .line 585
    goto :goto_0
.end method

.method public static cos(F)F
    .locals 1
    .parameter "fValue"

    .prologue
    .line 226
    const v0, 0x3fc90fdb

    add-float/2addr v0, p0

    invoke-static {v0}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public static counterClockwise(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)I
    .locals 9
    .parameter "p0"
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 401
    iget v4, p1, Lcom/layar/core/math/Vector2f;->x:F

    iget v5, p0, Lcom/layar/core/math/Vector2f;->x:F

    sub-float v0, v4, v5

    .line 402
    .local v0, dx1:F
    iget v4, p1, Lcom/layar/core/math/Vector2f;->y:F

    iget v5, p0, Lcom/layar/core/math/Vector2f;->y:F

    sub-float v2, v4, v5

    .line 403
    .local v2, dy1:F
    iget v4, p2, Lcom/layar/core/math/Vector2f;->x:F

    iget v5, p0, Lcom/layar/core/math/Vector2f;->x:F

    sub-float v1, v4, v5

    .line 404
    .local v1, dx2:F
    iget v4, p2, Lcom/layar/core/math/Vector2f;->y:F

    iget v5, p0, Lcom/layar/core/math/Vector2f;->y:F

    sub-float v3, v4, v5

    .line 405
    .local v3, dy2:F
    mul-float v4, v0, v3

    mul-float v5, v2, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v8

    .line 413
    :goto_0
    return v4

    .line 407
    :cond_0
    mul-float v4, v0, v3

    mul-float v5, v2, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v7

    .line 408
    goto :goto_0

    .line 409
    :cond_1
    mul-float v4, v0, v1

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_2

    mul-float v4, v2, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    :cond_2
    move v4, v7

    .line 410
    goto :goto_0

    .line 411
    :cond_3
    mul-float v4, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v1, v1

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move v4, v8

    .line 412
    goto :goto_0

    .line 413
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static determinant(DDDDDDDDDDDDDDDD)F
    .locals 6
    .parameter "m00"
    .parameter "m01"
    .parameter "m02"
    .parameter "m03"
    .parameter "m10"
    .parameter "m11"
    .parameter "m12"
    .parameter "m13"
    .parameter "m20"
    .parameter "m21"
    .parameter "m22"
    .parameter "m23"
    .parameter "m30"
    .parameter "m31"
    .parameter "m32"
    .parameter "m33"

    .prologue
    .line 456
    mul-double v0, p16, p26

    mul-double v2, p18, p24

    sub-double/2addr v0, v2

    .line 457
    .local v0, det01:D
    mul-double v2, p16, p28

    mul-double v4, p20, p24

    sub-double/2addr v2, v4

    .line 458
    .local v2, det02:D
    mul-double p16, p16, p30

    mul-double p24, p24, p22

    sub-double p16, p16, p24

    .line 459
    .local p16, det03:D
    mul-double p24, p18, p28

    mul-double v4, p20, p26

    sub-double p24, p24, v4

    .line 460
    .local p24, det12:D
    mul-double p18, p18, p30

    mul-double p26, p26, p22

    sub-double p18, p18, p26

    .line 461
    .local p18, det13:D
    mul-double p20, p20, p30

    mul-double p22, p22, p28

    sub-double p20, p20, p22

    .line 462
    .local p20, det23:D
    mul-double p22, p10, p20

    mul-double p26, p12, p18

    sub-double p22, p22, p26

    mul-double p26, p14, p24

    add-double p22, p22, p26

    mul-double p0, p0, p22

    .line 463
    mul-double p20, p20, p8

    mul-double p22, p12, p16

    sub-double p20, p20, p22

    mul-double p22, p14, v2

    add-double p20, p20, p22

    mul-double p2, p2, p20

    .line 462
    sub-double/2addr p0, p2

    .line 464
    mul-double p2, p8, p18

    mul-double p16, p16, p10

    sub-double p2, p2, p16

    mul-double p14, p14, v0

    add-double p2, p2, p14

    .line 463
    mul-double/2addr p2, p4

    .line 462
    add-double/2addr p0, p2

    .line 465
    mul-double p2, p8, p24

    mul-double p4, p10, v2

    sub-double/2addr p2, p4

    mul-double p4, p12, v0

    add-double/2addr p2, p4

    .line 464
    mul-double/2addr p2, p6

    .line 462
    sub-double/2addr p0, p2

    double-to-float p0, p0

    .end local p0
    .end local p2
    .end local p4
    .end local p14
    .end local p16           #det03:D
    .end local p20           #det23:D
    .end local p22
    .end local p26
    return p0
.end method

.method public static exp(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 238
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static floor(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 264
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static invSqrt(F)F
    .locals 4
    .parameter "fValue"

    .prologue
    .line 276
    const-wide/high16 v0, 0x3ff0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x1

    .line 69
    if-lez p0, :cond_0

    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 288
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static log(FF)F
    .locals 4
    .parameter "value"
    .parameter "base"

    .prologue
    .line 303
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static nearestPowerOfTwo(I)I
    .locals 6
    .parameter "number"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 73
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static nextRandomFloat()F
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/layar/core/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static nextRandomInt()I
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/layar/core/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextRandomInt(II)I
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 485
    invoke-static {}, Lcom/layar/core/math/FastMath;->nextRandomFloat()F

    move-result v0

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static normalize(FFF)F
    .locals 2
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 562
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    const/4 v1, 0x0

    .line 569
    :goto_0
    return v1

    .line 564
    :cond_1
    sub-float v0, p2, p1

    .line 565
    .local v0, range:F
    :goto_1
    cmpl-float v1, p0, p2

    if-gtz v1, :cond_2

    .line 567
    :goto_2
    cmpg-float v1, p0, p1

    if-ltz v1, :cond_3

    move v1, p0

    .line 569
    goto :goto_0

    .line 566
    :cond_2
    sub-float/2addr p0, v0

    goto :goto_1

    .line 568
    :cond_3
    add-float/2addr p0, v0

    goto :goto_2
.end method

.method public static pointInsideTriangle(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)I
    .locals 5
    .parameter "t0"
    .parameter "t1"
    .parameter "t2"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 432
    invoke-static {p0, p1, p3}, Lcom/layar/core/math/FastMath;->counterClockwise(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)I

    move-result v0

    .line 433
    .local v0, val1:I
    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v3

    .line 435
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/layar/core/math/FastMath;->counterClockwise(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)I

    move-result v1

    .line 436
    .local v1, val2:I
    if-eqz v1, :cond_0

    .line 438
    if-eq v1, v0, :cond_2

    move v3, v4

    .line 439
    goto :goto_0

    .line 440
    :cond_2
    invoke-static {p2, p0, p3}, Lcom/layar/core/math/FastMath;->counterClockwise(Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;Lcom/layar/core/math/Vector2f;)I

    move-result v2

    .line 441
    .local v2, val3:I
    if-eqz v2, :cond_0

    .line 443
    if-eq v2, v0, :cond_3

    move v3, v4

    .line 444
    goto :goto_0

    :cond_3
    move v3, v2

    .line 445
    goto :goto_0
.end method

.method public static pow(FF)F
    .locals 4
    .parameter "fBase"
    .parameter "fExponent"

    .prologue
    .line 317
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static reduceSinAngle(F)F
    .locals 3
    .parameter "radians"

    .prologue
    const v1, 0x40c90fdb

    const v2, 0x40490fdb

    .line 187
    rem-float/2addr p0, v1

    .line 188
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    sub-float/2addr p0, v1

    .line 191
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3fc90fdb

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 192
    sub-float p0, v2, p0

    .line 195
    :cond_1
    return p0
.end method

.method public static sign(F)F
    .locals 1
    .parameter "fValue"

    .prologue
    .line 383
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static sign(I)I
    .locals 1
    .parameter "iValue"

    .prologue
    .line 365
    if-lez p0, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    .line 368
    :cond_0
    if-gez p0, :cond_1

    .line 369
    const/4 v0, -0x1

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sin(F)F
    .locals 4
    .parameter "fValue"

    .prologue
    .line 209
    invoke-static {p0}, Lcom/layar/core/math/FastMath;->reduceSinAngle(F)F

    move-result p0

    .line 210
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe921fb54442d18L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 211
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x3ff921fb54442d18L

    float-to-double v2, p0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static sphericalToCartesian(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "sphereCoords"
    .parameter "store"

    .prologue
    .line 498
    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 499
    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 500
    .local v0, a:F
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 501
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 503
    return-object p1
.end method

.method public static sphericalToCartesianZ(Lcom/layar/core/math/Vector3f;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 3
    .parameter "sphereCoords"
    .parameter "store"

    .prologue
    .line 529
    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/layar/core/math/Vector3f;->z:F

    .line 530
    iget v1, p0, Lcom/layar/core/math/Vector3f;->x:F

    iget v2, p0, Lcom/layar/core/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 531
    .local v0, a:F
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/layar/core/math/Vector3f;->x:F

    .line 532
    iget v1, p0, Lcom/layar/core/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/layar/core/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/layar/core/math/Vector3f;->y:F

    .line 534
    return-object p1
.end method

.method public static sqr(F)F
    .locals 1
    .parameter "fValue"

    .prologue
    .line 328
    mul-float v0, p0, p0

    return v0
.end method

.method public static sqrt(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 340
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 353
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
