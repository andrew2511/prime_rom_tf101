.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 91
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 106
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .registers 4
    .parameter "l"

    .prologue
    .line 121
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .registers 12
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1022
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1023
    .local v0, magnitudeBits:J
    cmpl-double v4, p2, p2

    if-eqz v4, :cond_1e

    const-wide/high16 v4, 0x3ff0

    :goto_a
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1024
    .local v2, signBits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4

    .end local v2           #signBits:J
    :cond_1e
    move-wide v4, p2

    .line 1023
    goto :goto_a
.end method

.method public static copySign(FF)F
    .registers 6
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1039
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1040
    .local v0, magnitudeBits:I
    cmpl-float v2, p1, p1

    if-eqz v2, :cond_1c

    const/high16 v2, 0x3f80

    :goto_a
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1041
    .local v1, signBits:I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 1042
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .end local v1           #signBits:I
    :cond_1c
    move v2, p1

    .line 1040
    goto :goto_a
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .registers 3
    .parameter "d"

    .prologue
    .line 1058
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 2
    .parameter "f"

    .prologue
    .line 1050
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .registers 10
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide/16 v4, 0x0

    .line 480
    cmpl-double v0, p0, p2

    if-lez v0, :cond_8

    move-wide v0, p0

    .line 491
    :goto_7
    return-wide v0

    .line 482
    :cond_8
    cmpg-double v0, p0, p2

    if-gez v0, :cond_e

    move-wide v0, p2

    .line 483
    goto :goto_7

    .line 485
    :cond_e
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_15

    .line 486
    const-wide/high16 v0, 0x7ff8

    goto :goto_7

    .line 488
    :cond_15
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2d

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    move-wide v0, v4

    .line 490
    goto :goto_7

    :cond_2d
    move-wide v0, p0

    .line 491
    goto :goto_7
.end method

.method public static max(FF)F
    .registers 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v2, 0x0

    .line 513
    cmpl-float v0, p0, p1

    if-lez v0, :cond_7

    move v0, p0

    .line 524
    :goto_6
    return v0

    .line 515
    :cond_7
    cmpg-float v0, p0, p1

    if-gez v0, :cond_d

    move v0, p1

    .line 516
    goto :goto_6

    .line 518
    :cond_d
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_14

    .line 519
    const/high16 v0, 0x7fc0

    goto :goto_6

    .line 521
    :cond_14
    cmpl-float v0, p0, v2

    if-nez v0, :cond_28

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    and-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    move v0, v2

    .line 523
    goto :goto_6

    :cond_28
    move v0, p0

    .line 524
    goto :goto_6
.end method

.method public static max(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 538
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 552
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 574
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p2

    .line 585
    :goto_5
    return-wide v0

    .line 576
    :cond_6
    cmpg-double v0, p0, p2

    if-gez v0, :cond_c

    move-wide v0, p0

    .line 577
    goto :goto_5

    .line 579
    :cond_c
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_13

    .line 580
    const-wide/high16 v0, 0x7ff8

    goto :goto_5

    .line 582
    :cond_13
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2e

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    .line 584
    const-wide/high16 v0, -0x8000

    goto :goto_5

    :cond_2e
    move-wide v0, p0

    .line 585
    goto :goto_5
.end method

.method public static min(FF)F
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 607
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p1

    .line 618
    :goto_5
    return v0

    .line 609
    :cond_6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_c

    move v0, p0

    .line 610
    goto :goto_5

    .line 612
    :cond_c
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_13

    .line 613
    const/high16 v0, 0x7fc0

    goto :goto_5

    .line 615
    :cond_13
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_29

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    .line 617
    const/high16 v0, -0x8000

    goto :goto_5

    :cond_29
    move v0, p0

    .line 618
    goto :goto_5
.end method

.method public static min(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 632
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 646
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .registers 7
    .parameter "start"
    .parameter "direction"

    .prologue
    const-wide/16 v1, 0x0

    .line 1066
    cmpl-double v0, p0, v1

    if-nez v0, :cond_c

    cmpl-double v0, p2, v1

    if-nez v0, :cond_c

    move-wide v0, p2

    .line 1069
    :goto_b
    return-wide v0

    :cond_c
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide v0

    goto :goto_b
.end method

.method public static nextAfter(FD)F
    .registers 4
    .parameter "start"
    .parameter "direction"

    .prologue
    .line 1077
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 1085
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 1093
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method private static native nextafterf(FF)F
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .registers 2

    .prologue
    .line 696
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .registers 2
    .parameter "f"

    .prologue
    .line 761
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 738
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .registers 13
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    .line 1101
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_12

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_13

    .line 1149
    .end local p0
    .end local p2
    :cond_12
    :goto_12
    return-wide p0

    .line 1105
    .restart local p0
    .restart local p2
    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1107
    .local v0, bits:J
    const-wide/high16 v2, -0x8000

    and-long v4, v0, v2

    .line 1109
    .local v4, sign:J
    const-wide/high16 v2, 0x7ff0

    and-long/2addr v2, v0

    const/16 v6, 0x34

    shr-long/2addr v2, v6

    long-to-int v2, v2

    const/16 v3, 0x3ff

    sub-int/2addr v2, v3

    add-int/2addr p2, v2

    int-to-long v2, p2

    .line 1113
    .local v2, factor:J
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .end local p2
    move-result p2

    const/16 v6, 0xc

    sub-int/2addr p2, v6

    .line 1115
    .local p2, subNormalFactor:I
    if-gez p2, :cond_37

    .line 1117
    const/4 p2, 0x0

    .line 1119
    :cond_37
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_43

    .line 1120
    int-to-long v6, p2

    sub-long/2addr v2, v6

    .line 1122
    :cond_43
    const-wide/16 v6, 0x3ff

    cmp-long v6, v2, v6

    if-lez v6, :cond_55

    .line 1123
    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_52

    .end local v0           #bits:J
    .end local p0
    const-wide/high16 p0, 0x7ff0

    goto :goto_12

    :cond_52
    const-wide/high16 p0, -0x10

    goto :goto_12

    .line 1128
    .restart local v0       #bits:J
    .restart local p0
    :cond_55
    const-wide/16 v6, -0x3ff

    cmp-long v6, v2, v6

    if-gez v6, :cond_8c

    .line 1130
    const-wide/16 v6, 0x3ff

    add-long/2addr v2, v6

    int-to-long v6, p2

    add-long/2addr v2, v6

    .line 1131
    .local v2, digits:J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .end local p0
    const-wide/high16 v6, 0x10

    cmpg-double p0, p0, v6

    if-gez p0, :cond_7a

    .line 1133
    const-wide p0, 0xfffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    move-result-wide p0

    .line 1149
    .end local v0           #bits:J
    .end local v2           #digits:J
    .end local p2           #subNormalFactor:I
    .local p0, result:J
    :goto_74
    or-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .end local p0           #result:J
    move-result-wide p0

    goto :goto_12

    .line 1136
    .restart local v0       #bits:J
    .restart local v2       #digits:J
    .restart local p2       #subNormalFactor:I
    :cond_7a
    const-wide p0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x10

    or-long/2addr p0, v0

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    .end local v0           #bits:J
    move-result-wide p0

    .restart local p0       #result:J
    goto :goto_74

    .line 1139
    .restart local v0       #bits:J
    .local v2, factor:J
    .local p0, d:D
    :cond_8c
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .end local p0           #d:D
    const-wide/high16 v6, 0x10

    cmpl-double p0, p0, v6

    if-ltz p0, :cond_a4

    .line 1141
    const-wide/16 p0, 0x3ff

    add-long/2addr p0, v2

    const/16 p2, 0x34

    shl-long/2addr p0, p2

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    .local p0, result:J
    goto :goto_74

    .line 1145
    .end local p0           #result:J
    :cond_a4
    const-wide/16 p0, 0x3ff

    add-long/2addr p0, v2

    const/16 v2, 0x34

    shl-long/2addr p0, v2

    add-int/lit8 p2, p2, 0x1

    shl-long/2addr v0, p2

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    .restart local p0       #result:J
    goto :goto_74
.end method

.method public static scalb(FI)F
    .registers 14
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    const/16 v11, 0x7f

    const/4 v10, 0x0

    const/high16 v9, 0x80

    const v8, 0x7fffff

    .line 1157
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_18

    cmpl-float v6, p0, v10

    if-nez v6, :cond_1a

    :cond_18
    move v6, p0

    .line 1201
    :goto_19
    return v6

    .line 1160
    :cond_1a
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1161
    .local v0, bits:I
    const/high16 v6, -0x8000

    and-int v4, v0, v6

    .line 1162
    .local v4, sign:I
    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    sub-int/2addr v6, v11

    add-int v2, v6, p1

    .line 1165
    .local v2, factor:I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    const/16 v7, 0x9

    sub-int v5, v6, v7

    .line 1167
    .local v5, subNormalFactor:I
    if-gez v5, :cond_39

    .line 1169
    const/4 v5, 0x0

    .line 1171
    :cond_39
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_42

    .line 1172
    sub-int/2addr v2, v5

    .line 1174
    :cond_42
    if-le v2, v11, :cond_4e

    .line 1175
    cmpl-float v6, p0, v10

    if-lez v6, :cond_4b

    const/high16 v6, 0x7f80

    goto :goto_19

    :cond_4b
    const/high16 v6, -0x80

    goto :goto_19

    .line 1180
    :cond_4e
    const/16 v6, -0x7f

    if-ge v2, v6, :cond_78

    .line 1182
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1183
    .local v1, digits:I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_6b

    .line 1185
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .line 1201
    .end local v1           #digits:I
    .local v3, result:I
    :goto_64
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_19

    .line 1188
    .end local v3           #result:I
    .restart local v1       #digits:I
    :cond_6b
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    move-result v3

    .restart local v3       #result:I
    goto :goto_64

    .line 1191
    .end local v1           #digits:I
    .end local v3           #result:I
    :cond_78
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_89

    .line 1193
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_64

    .line 1197
    .end local v3           #result:I
    :cond_89
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_64
.end method

.method private static shiftIntBits(II)I
    .registers 6
    .parameter "bits"
    .parameter "digits"

    .prologue
    const/4 v3, 0x1

    .line 1207
    if-lez p1, :cond_6

    .line 1208
    shl-int v1, p0, p1

    .line 1220
    :goto_5
    return v1

    .line 1211
    :cond_6
    neg-int v0, p1

    .line 1212
    .local v0, absDigits:I
    const v1, 0x7fffffff

    and-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    const/16 v2, 0x20

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_2c

    .line 1214
    sub-int v1, v0, v3

    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_27

    .line 1216
    :cond_24
    shr-int v1, p0, v0

    goto :goto_5

    .line 1218
    :cond_27
    shr-int v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1220
    :cond_2c
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private static shiftLongBits(JJ)J
    .registers 14
    .parameter "bits"
    .parameter "digits"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x1

    .line 1226
    cmp-long v2, p2, v8

    if-lez v2, :cond_c

    .line 1227
    long-to-int v2, p2

    shl-long v2, p0, v2

    .line 1239
    :goto_b
    return-wide v2

    .line 1230
    :cond_c
    neg-long v0, p2

    .line 1231
    .local v0, absDigits:J
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x40

    sub-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3d

    .line 1233
    sub-long v2, v0, v6

    long-to-int v2, v2

    shr-long v2, p0, v2

    and-long/2addr v2, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_34

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_38

    .line 1235
    :cond_34
    long-to-int v2, v0

    shr-long v2, p0, v2

    goto :goto_b

    .line 1237
    :cond_38
    long-to-int v2, v0

    shr-long v2, p0, v2

    add-long/2addr v2, v6

    goto :goto_b

    :cond_3d
    move-wide v2, v8

    .line 1239
    goto :goto_b
.end method

.method public static signum(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 784
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 807
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .registers 4
    .parameter "angrad"

    .prologue
    .line 921
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 4
    .parameter "angdeg"

    .prologue
    .line 942
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 966
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 967
    const-wide/high16 v0, 0x7ff0

    .line 972
    :goto_d
    return-wide v0

    .line 968
    :cond_e
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1b

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_27

    .line 969
    :cond_1b
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    goto :goto_d

    .line 971
    :cond_27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 972
    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_d
.end method

.method public static ulp(F)F
    .registers 5
    .parameter "f"

    .prologue
    const v1, 0x7f7fffff

    .line 996
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 997
    const/high16 v0, 0x7fc0

    .line 1004
    :goto_b
    return v0

    .line 998
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 999
    const/high16 v0, 0x7f80

    goto :goto_b

    .line 1000
    :cond_15
    cmpl-float v0, p0, v1

    if-eqz v0, :cond_20

    const v0, -0x800001

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2a

    .line 1001
    :cond_20
    const-wide/high16 v0, 0x4000

    const-wide/high16 v2, 0x405a

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_b

    .line 1003
    :cond_2a
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 1004
    invoke-static {p0, v1}, Ljava/lang/StrictMath;->nextafterf(FF)F

    move-result v0

    sub-float/2addr v0, p0

    goto :goto_b
.end method
