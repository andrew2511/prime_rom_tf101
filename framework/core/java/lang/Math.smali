.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .registers 6
    .parameter "d"

    .prologue
    .line 62
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 63
    .local v0, bits:J
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static abs(F)F
    .registers 3
    .parameter "f"

    .prologue
    .line 84
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 85
    .local v0, bits:I
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 86
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static abs(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 101
    if-ltz p0, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    neg-int v0, p0

    goto :goto_3
.end method

.method public static abs(J)J
    .registers 4
    .parameter "l"

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    :goto_7
    return-wide v0

    :cond_8
    neg-long v0, p0

    goto :goto_7
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
    .line 1083
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1084
    .local v0, magnitudeBits:J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1085
    .local v2, signBits:J
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    .line 1086
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .registers 6
    .parameter "magnitude"
    .parameter "sign"

    .prologue
    .line 1096
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1097
    .local v0, magnitudeBits:I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1098
    .local v1, signBits:I
    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 1099
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
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
    .registers 7
    .parameter "d"

    .prologue
    .line 1117
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1118
    .local v0, bits:J
    const-wide/high16 v2, 0x7ff0

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long v0, v2, v4

    .line 1119
    long-to-int v2, v0

    const/16 v3, 0x3ff

    sub-int/2addr v2, v3

    return v2
.end method

.method public static getExponent(F)I
    .registers 3
    .parameter "f"

    .prologue
    .line 1107
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1108
    .local v0, bits:I
    const/high16 v1, 0x7f80

    and-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x17

    .line 1109
    const/16 v1, 0x7f

    sub-int v1, v0, v1

    return v1
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
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 490
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p0

    .line 505
    :goto_5
    return-wide v0

    .line 493
    :cond_6
    cmpg-double v0, p0, p2

    if-gez v0, :cond_c

    move-wide v0, p2

    .line 494
    goto :goto_5

    .line 497
    :cond_c
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_13

    .line 498
    const-wide/high16 v0, 0x7ff8

    goto :goto_5

    .line 502
    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    move-wide v0, p2

    .line 503
    goto :goto_5

    .line 505
    :cond_1f
    const-wide/16 v0, 0x0

    goto :goto_5
.end method

.method public static max(FF)F
    .registers 3
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 527
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p0

    .line 542
    :goto_5
    return v0

    .line 530
    :cond_6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_c

    move v0, p1

    .line 531
    goto :goto_5

    .line 534
    :cond_c
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_13

    .line 535
    const/high16 v0, 0x7fc0

    goto :goto_5

    .line 539
    :cond_13
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, p1

    .line 540
    goto :goto_5

    .line 542
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static max(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 556
    if-le p0, p1, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    move v0, p1

    goto :goto_3
.end method

.method public static max(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 570
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p0

    :goto_5
    return-wide v0

    :cond_6
    move-wide v0, p2

    goto :goto_5
.end method

.method public static min(DD)D
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 592
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p2

    .line 607
    :goto_5
    return-wide v0

    .line 595
    :cond_6
    cmpg-double v0, p0, p2

    if-gez v0, :cond_c

    move-wide v0, p0

    .line 596
    goto :goto_5

    .line 599
    :cond_c
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_13

    .line 600
    const-wide/high16 v0, 0x7ff8

    goto :goto_5

    .line 604
    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 605
    const-wide/high16 v0, -0x8000

    goto :goto_5

    :cond_20
    move-wide v0, p2

    .line 607
    goto :goto_5
.end method

.method public static min(FF)F
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 629
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p1

    .line 644
    :goto_5
    return v0

    .line 632
    :cond_6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_c

    move v0, p0

    .line 633
    goto :goto_5

    .line 636
    :cond_c
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_13

    .line 637
    const/high16 v0, 0x7fc0

    goto :goto_5

    .line 641
    :cond_13
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1e

    .line 642
    const/high16 v0, -0x8000

    goto :goto_5

    :cond_1e
    move v0, p1

    .line 644
    goto :goto_5
.end method

.method public static min(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 658
    if-ge p0, p1, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    move v0, p1

    goto :goto_3
.end method

.method public static min(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 672
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p0

    :goto_5
    return-wide v0

    :cond_6
    move-wide v0, p2

    goto :goto_5
.end method

.method public static nextAfter(DD)D
    .registers 7
    .parameter "start"
    .parameter "direction"

    .prologue
    const-wide/16 v1, 0x0

    .line 1127
    cmpl-double v0, p0, v1

    if-nez v0, :cond_c

    cmpl-double v0, p2, v1

    if-nez v0, :cond_c

    move-wide v0, p2

    .line 1130
    :goto_b
    return-wide v0

    :cond_c
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    goto :goto_b
.end method

.method public static nextAfter(FD)F
    .registers 10
    .parameter "start"
    .parameter "direction"

    .prologue
    const v6, 0x7f7fffff

    const/4 v5, 0x1

    const v4, -0x800001

    const v3, -0x7fffffff

    const/4 v2, 0x0

    .line 1138
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1139
    :cond_17
    const/high16 v0, 0x7fc0

    .line 1174
    :goto_19
    return v0

    .line 1141
    :cond_1a
    cmpl-float v0, p0, v2

    if-nez v0, :cond_26

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_26

    .line 1142
    double-to-float v0, p1

    goto :goto_19

    .line 1144
    :cond_26
    cmpl-float v0, p0, v5

    if-nez v0, :cond_2f

    float-to-double v0, p0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_38

    :cond_2f
    cmpl-float v0, p0, v3

    if-nez v0, :cond_41

    float-to-double v0, p0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_41

    .line 1146
    :cond_38
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3e

    move v0, v2

    goto :goto_19

    :cond_3e
    const/high16 v0, -0x8000

    goto :goto_19

    .line 1148
    :cond_41
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_54

    float-to-double v0, p0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_54

    .line 1149
    cmpl-float v0, p0, v2

    if-lez v0, :cond_52

    move v0, v6

    goto :goto_19

    :cond_52
    move v0, v4

    goto :goto_19

    .line 1151
    :cond_54
    cmpl-float v0, p0, v6

    if-nez v0, :cond_5d

    float-to-double v0, p0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_66

    :cond_5d
    cmpl-float v0, p0, v4

    if-nez v0, :cond_70

    float-to-double v0, p0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_70

    .line 1153
    :cond_66
    cmpl-float v0, p0, v2

    if-lez v0, :cond_6d

    const/high16 v0, 0x7f80

    goto :goto_19

    :cond_6d
    const/high16 v0, -0x80

    goto :goto_19

    .line 1156
    :cond_70
    float-to-double v0, p0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_95

    .line 1157
    cmpl-float v0, p0, v2

    if-lez v0, :cond_84

    .line 1158
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_19

    .line 1160
    :cond_84
    cmpg-float v0, p0, v2

    if-gez v0, :cond_93

    .line 1161
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_19

    :cond_93
    move v0, v5

    .line 1163
    goto :goto_19

    .line 1165
    :cond_95
    float-to-double v0, p0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_bd

    .line 1166
    cmpl-float v0, p0, v2

    if-lez v0, :cond_aa

    .line 1167
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_19

    .line 1169
    :cond_aa
    cmpg-float v0, p0, v2

    if-gez v0, :cond_ba

    .line 1170
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_19

    :cond_ba
    move v0, v3

    .line 1172
    goto/16 :goto_19

    .line 1174
    :cond_bd
    double-to-float v0, p1

    goto/16 :goto_19
.end method

.method public static nextUp(D)D
    .registers 9
    .parameter "d"

    .prologue
    const-wide/16 v5, 0x1

    const-wide/high16 v3, 0x7ff0

    const-wide/16 v1, 0x0

    .line 1182
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1183
    const-wide/high16 v0, 0x7ff8

    .line 1193
    :goto_e
    return-wide v0

    .line 1185
    :cond_f
    cmpl-double v0, p0, v3

    if-nez v0, :cond_15

    move-wide v0, v3

    .line 1186
    goto :goto_e

    .line 1188
    :cond_15
    cmpl-double v0, p0, v1

    if-nez v0, :cond_1c

    .line 1189
    const-wide/16 v0, 0x1

    goto :goto_e

    .line 1190
    :cond_1c
    cmpl-double v0, p0, v1

    if-lez v0, :cond_2a

    .line 1191
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_e

    .line 1193
    :cond_2a
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_e
.end method

.method public static nextUp(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/high16 v2, 0x7f80

    const/4 v1, 0x0

    .line 1202
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1203
    const/high16 v0, 0x7fc0

    .line 1213
    :goto_b
    return v0

    .line 1205
    :cond_c
    cmpl-float v0, p0, v2

    if-nez v0, :cond_12

    move v0, v2

    .line 1206
    goto :goto_b

    .line 1208
    :cond_12
    cmpl-float v0, p0, v1

    if-nez v0, :cond_18

    .line 1209
    const/4 v0, 0x1

    goto :goto_b

    .line 1210
    :cond_18
    cmpl-float v0, p0, v1

    if-lez v0, :cond_27

    .line 1211
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_b

    .line 1213
    :cond_27
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_b
.end method

.method private static native nextafter(DD)D
.end method

.method private static native nextafterf(FF)F
.end method

.method public static native pow(DD)D
.end method

.method public static declared-synchronized random()D
    .registers 3

    .prologue
    .line 962
    const-class v0, Ljava/lang/Math;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljava/lang/Math;->random:Ljava/util/Random;

    if-nez v1, :cond_e

    .line 963
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Ljava/lang/Math;->random:Ljava/util/Random;

    .line 965
    :cond_e
    sget-object v1, Ljava/lang/Math;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 962
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .registers 3
    .parameter "f"

    .prologue
    .line 781
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    .line 782
    const/4 v0, 0x0

    .line 784
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_5
.end method

.method public static round(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 754
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 755
    const-wide/16 v0, 0x0

    .line 757
    :goto_6
    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_6
.end method

.method public static scalb(DI)D
    .registers 11
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    .line 1222
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_12

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_13

    .line 1269
    .end local p0
    .end local p2
    :cond_12
    :goto_12
    return-wide p0

    .line 1226
    .restart local p0
    .restart local p2
    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1228
    .local v0, bits:J
    const-wide/high16 v2, -0x8000

    and-long v4, v0, v2

    .line 1230
    .local v4, sign:J
    const-wide/high16 v2, 0x7ff0

    and-long/2addr v2, v0

    const/16 v6, 0x34

    shr-long/2addr v2, v6

    const-wide/16 v6, 0x3ff

    sub-long/2addr v2, v6

    int-to-long v6, p2

    add-long/2addr v2, v6

    .line 1234
    .local v2, factor:J
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    .end local p2
    const/16 v6, 0xc

    sub-int/2addr p2, v6

    .line 1236
    .local p2, subNormalFactor:I
    if-gez p2, :cond_45

    .line 1238
    const/4 p2, 0x0

    .line 1242
    :goto_36
    const-wide/16 v6, 0x3ff

    cmp-long v6, v2, v6

    if-lez v6, :cond_4b

    .line 1243
    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_48

    .end local v0           #bits:J
    .end local p0
    const-wide/high16 p0, 0x7ff0

    goto :goto_12

    .line 1240
    .restart local v0       #bits:J
    .restart local p0
    :cond_45
    int-to-long v6, p2

    sub-long/2addr v2, v6

    goto :goto_36

    .line 1243
    .end local v0           #bits:J
    .end local p0
    :cond_48
    const-wide/high16 p0, -0x10

    goto :goto_12

    .line 1248
    .restart local v0       #bits:J
    .restart local p0
    :cond_4b
    const-wide/16 v6, -0x3ff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_82

    .line 1250
    const-wide/16 v6, 0x3ff

    add-long/2addr v2, v6

    int-to-long v6, p2

    add-long/2addr v2, v6

    .line 1251
    .local v2, digits:J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .end local p0
    const-wide/high16 v6, 0x10

    cmpg-double p0, p0, v6

    if-gez p0, :cond_70

    .line 1253
    const-wide p0, 0xfffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide p0

    .line 1269
    .end local v0           #bits:J
    .end local v2           #digits:J
    .end local p2           #subNormalFactor:I
    .local p0, result:J
    :goto_6a
    or-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .end local p0           #result:J
    move-result-wide p0

    goto :goto_12

    .line 1256
    .restart local v0       #bits:J
    .restart local v2       #digits:J
    .restart local p2       #subNormalFactor:I
    :cond_70
    const-wide p0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x10

    or-long/2addr p0, v0

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->shiftLongBits(JJ)J

    .end local v0           #bits:J
    move-result-wide p0

    .restart local p0       #result:J
    goto :goto_6a

    .line 1259
    .restart local v0       #bits:J
    .local v2, factor:J
    .local p0, d:D
    :cond_82
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .end local p0           #d:D
    const-wide/high16 v6, 0x10

    cmpl-double p0, p0, v6

    if-ltz p0, :cond_9a

    .line 1261
    const-wide/16 p0, 0x3ff

    add-long/2addr p0, v2

    const/16 p2, 0x34

    shl-long/2addr p0, p2

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    .local p0, result:J
    goto :goto_6a

    .line 1265
    .end local p0           #result:J
    :cond_9a
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
    goto :goto_6a
.end method

.method public static scalb(FI)F
    .registers 14
    .parameter "d"
    .parameter "scaleFactor"

    .prologue
    const/16 v11, 0x7f

    const/high16 v10, 0x80

    const/4 v9, 0x0

    const v8, 0x7fffff

    .line 1277
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_18

    cmpl-float v6, p0, v9

    if-nez v6, :cond_1a

    :cond_18
    move v6, p0

    .line 1320
    :goto_19
    return v6

    .line 1280
    :cond_1a
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1281
    .local v0, bits:I
    const/high16 v6, -0x8000

    and-int v4, v0, v6

    .line 1282
    .local v4, sign:I
    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    sub-int/2addr v6, v11

    add-int v2, v6, p1

    .line 1285
    .local v2, factor:I
    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    const/16 v7, 0x9

    sub-int v5, v6, v7

    .line 1287
    .local v5, subNormalFactor:I
    if-gez v5, :cond_42

    .line 1289
    const/4 v5, 0x0

    .line 1293
    :goto_39
    if-le v2, v11, :cond_47

    .line 1294
    cmpl-float v6, p0, v9

    if-lez v6, :cond_44

    const/high16 v6, 0x7f80

    goto :goto_19

    .line 1291
    :cond_42
    sub-int/2addr v2, v5

    goto :goto_39

    .line 1294
    :cond_44
    const/high16 v6, -0x80

    goto :goto_19

    .line 1299
    :cond_47
    const/16 v6, -0x7f

    if-gt v2, v6, :cond_71

    .line 1301
    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    .line 1302
    .local v1, digits:I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_64

    .line 1304
    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .line 1320
    .end local v1           #digits:I
    .local v3, result:I
    :goto_5d
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_19

    .line 1307
    .end local v3           #result:I
    .restart local v1       #digits:I
    :cond_64
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    .restart local v3       #result:I
    goto :goto_5d

    .line 1310
    .end local v1           #digits:I
    .end local v3           #result:I
    :cond_71
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_82

    .line 1312
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_5d

    .line 1316
    .end local v3           #result:I
    :cond_82
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .restart local v3       #result:I
    goto :goto_5d
.end method

.method private static shiftIntBits(II)I
    .registers 9
    .parameter "bits"
    .parameter "digits"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1326
    if-lez p1, :cond_7

    .line 1327
    shl-int v3, p0, p1

    .line 1346
    :goto_6
    return v3

    .line 1330
    :cond_7
    neg-int v0, p1

    .line 1331
    .local v0, absDigits:I
    const v3, 0x7fffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    const/16 v4, 0x20

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_17

    move v3, v6

    .line 1332
    goto :goto_6

    .line 1334
    :cond_17
    shr-int v2, p0, v0

    .line 1335
    .local v2, ret:I
    sub-int v3, v0, v5

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_3e

    move v1, v5

    .line 1336
    .local v1, halfBit:Z
    :goto_22
    if-eqz v1, :cond_3c

    .line 1337
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    sub-int v4, v0, v5

    if-ge v3, v4, :cond_2e

    .line 1338
    add-int/lit8 v2, v2, 0x1

    .line 1340
    :cond_2e
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_3c

    .line 1341
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v5, :cond_3c

    .line 1342
    add-int/lit8 v2, v2, 0x1

    :cond_3c
    move v3, v2

    .line 1346
    goto :goto_6

    .end local v1           #halfBit:Z
    :cond_3e
    move v1, v6

    .line 1335
    goto :goto_22
.end method

.method private static shiftLongBits(JJ)J
    .registers 11
    .parameter "bits"
    .parameter "digits"

    .prologue
    .line 1352
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_9

    .line 1353
    long-to-int p2, p2

    shl-long/2addr p0, p2

    .line 1374
    .end local p0
    .end local p2
    :goto_8
    return-wide p0

    .line 1356
    .restart local p0
    .restart local p2
    :cond_9
    neg-long p2, p2

    .line 1357
    .local p2, absDigits:J
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 1358
    const-wide/16 p0, 0x0

    goto :goto_8

    .line 1360
    :cond_1f
    long-to-int v0, p2

    shr-long v1, p0, v0

    .line 1361
    .local v1, ret:J
    const-wide/16 v3, 0x1

    sub-long v3, p2, v3

    long-to-int v0, v3

    shr-long v3, p0, v0

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    .line 1362
    .local v0, halfBit:Z
    :goto_33
    if-eqz v0, :cond_65

    .line 1365
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .end local v0           #halfBit:Z
    int-to-long v3, v0

    const-wide/16 v5, 0x1

    sub-long v5, p2, v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_63

    .line 1366
    const-wide/16 v3, 0x1

    add-long v0, v1, v3

    .line 1368
    .end local v1           #ret:J
    .local v0, ret:J
    :goto_46
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    .end local p0
    int-to-long p0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    cmp-long p0, p0, p2

    if-nez p0, :cond_61

    .line 1369
    .end local p2           #absDigits:J
    const-wide/16 p0, 0x1

    and-long/2addr p0, v0

    const-wide/16 p2, 0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_61

    .line 1370
    const-wide/16 p0, 0x1

    add-long/2addr p0, v0

    .end local v0           #ret:J
    .local p0, ret:J
    goto :goto_8

    .line 1361
    .restart local v1       #ret:J
    .local p0, bits:J
    .restart local p2       #absDigits:J
    :cond_5f
    const/4 v0, 0x0

    goto :goto_33

    .end local v1           #ret:J
    .end local p0           #bits:J
    .end local p2           #absDigits:J
    .restart local v0       #ret:J
    :cond_61
    move-wide p0, v0

    .end local v0           #ret:J
    .local p0, ret:J
    goto :goto_8

    .restart local v1       #ret:J
    .local p0, bits:J
    .restart local p2       #absDigits:J
    :cond_63
    move-wide v0, v1

    .end local v1           #ret:J
    .restart local v0       #ret:J
    goto :goto_46

    .local v0, halfBit:Z
    .restart local v1       #ret:J
    :cond_65
    move-wide p0, v1

    .end local v1           #ret:J
    .local p0, ret:J
    goto :goto_8
.end method

.method public static signum(D)D
    .registers 7
    .parameter "d"

    .prologue
    const-wide/16 v3, 0x0

    .line 807
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 808
    const-wide/high16 v2, 0x7ff8

    .line 816
    :goto_a
    return-wide v2

    .line 810
    :cond_b
    move-wide v0, p0

    .line 811
    .local v0, sig:D
    cmpl-double v2, p0, v3

    if-lez v2, :cond_14

    .line 812
    const-wide/high16 v0, 0x3ff0

    :cond_12
    :goto_12
    move-wide v2, v0

    .line 816
    goto :goto_a

    .line 813
    :cond_14
    cmpg-double v2, p0, v3

    if-gez v2, :cond_12

    .line 814
    const-wide/high16 v0, -0x4010

    goto :goto_12
.end method

.method public static signum(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 839
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 840
    const/high16 v1, 0x7fc0

    .line 848
    :goto_9
    return v1

    .line 842
    :cond_a
    move v0, p0

    .line 843
    .local v0, sig:F
    cmpl-float v1, p0, v2

    if-lez v1, :cond_13

    .line 844
    const/high16 v0, 0x3f80

    :cond_11
    :goto_11
    move v1, v0

    .line 848
    goto :goto_9

    .line 845
    :cond_13
    cmpg-float v1, p0, v2

    if-gez v1, :cond_11

    .line 846
    const/high16 v0, -0x4080

    goto :goto_11
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
    .registers 6
    .parameter "angrad"

    .prologue
    .line 1007
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 6
    .parameter "angdeg"

    .prologue
    .line 986
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 1031
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1032
    const-wide/high16 v0, 0x7ff0

    .line 1037
    :goto_d
    return-wide v0

    .line 1033
    :cond_e
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1b

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_27

    .line 1034
    :cond_1b
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_d

    .line 1036
    :cond_27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1037
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_d
.end method

.method public static ulp(F)F
    .registers 5
    .parameter "f"

    .prologue
    const v1, 0x7f7fffff

    .line 1061
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1062
    const/high16 v0, 0x7fc0

    .line 1069
    :goto_b
    return v0

    .line 1063
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1064
    const/high16 v0, 0x7f80

    goto :goto_b

    .line 1065
    :cond_15
    cmpl-float v0, p0, v1

    if-eqz v0, :cond_20

    const v0, -0x800001

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2a

    .line 1066
    :cond_20
    const-wide/high16 v0, 0x4000

    const-wide/high16 v2, 0x405a

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_b

    .line 1068
    :cond_2a
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 1069
    invoke-static {p0, v1}, Ljava/lang/Math;->nextafterf(FF)F

    move-result v0

    sub-float/2addr v0, p0

    goto :goto_b
.end method
