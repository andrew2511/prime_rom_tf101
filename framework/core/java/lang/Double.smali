.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_BITS:I = 0xc

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final MANTISSA_BITS:I = 0x34

.field static final MANTISSA_MASK:J = 0xfffffffffffffL

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field static final NON_MANTISSA_BITS:I = 0xc

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field static final SIGN_MASK:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3
    .parameter "value"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 124
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 138
    return-void
.end method

.method public static compare(DD)I
    .registers 14
    .parameter "double1"
    .parameter "double2"

    .prologue
    const/16 v9, 0x3f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 375
    cmpl-double v4, p0, p2

    if-lez v4, :cond_b

    move v4, v8

    .line 400
    :goto_a
    return v4

    .line 378
    :cond_b
    cmpl-double v4, p2, p0

    if-lez v4, :cond_11

    move v4, v6

    .line 379
    goto :goto_a

    .line 381
    :cond_11
    cmpl-double v4, p0, p2

    if-nez v4, :cond_1d

    const-wide/16 v4, 0x0

    cmpl-double v4, v4, p0

    if-eqz v4, :cond_1d

    move v4, v7

    .line 382
    goto :goto_a

    .line 386
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 387
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v7

    .line 388
    goto :goto_a

    :cond_2b
    move v4, v8

    .line 390
    goto :goto_a

    .line 391
    :cond_2d
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_35

    move v4, v6

    .line 392
    goto :goto_a

    .line 396
    :cond_35
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 397
    .local v0, d1:J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 400
    .local v2, d2:J
    shr-long v4, v0, v9

    shr-long v6, v2, v9

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_a
.end method

.method public static native doubleToLongBits(D)J
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .registers 4
    .parameter "d"

    .prologue
    .line 263
    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNaN(D)Z
    .registers 3
    .parameter "d"

    .prologue
    .line 286
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0}, Lorg/apache/harmony/luni/util/FloatingPointParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .registers 13
    .parameter "d"

    .prologue
    .line 427
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 428
    const-string p0, "NaN"

    .line 504
    .end local p0
    :goto_6
    return-object p0

    .line 430
    .restart local p0
    :cond_7
    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_10

    .line 431
    const-string p0, "Infinity"

    goto :goto_6

    .line 433
    :cond_10
    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_19

    .line 434
    const-string p0, "-Infinity"

    goto :goto_6

    .line 437
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 439
    .local p0, bitValue:J
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    move v2, v0

    .line 441
    .local v2, negative:Z
    :goto_28
    const-wide/high16 v0, 0x7ff0

    and-long/2addr v0, p0

    const/16 v3, 0x34

    ushr-long/2addr v0, v3

    .line 443
    .local v0, exponent:J
    const-wide v3, 0xfffffffffffffL

    and-long v5, p0, v3

    .line 445
    .local v5, significand:J
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_4c

    .end local p0           #bitValue:J
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-nez p0, :cond_4c

    .line 446
    if-eqz v2, :cond_49

    const-string p0, "-0x0.0p0"

    goto :goto_6

    .line 439
    .end local v0           #exponent:J
    .end local v2           #negative:Z
    .end local v5           #significand:J
    .restart local p0       #bitValue:J
    :cond_46
    const/4 v0, 0x0

    move v2, v0

    goto :goto_28

    .line 446
    .end local p0           #bitValue:J
    .restart local v0       #exponent:J
    .restart local v2       #negative:Z
    .restart local v5       #significand:J
    :cond_49
    const-string p0, "0x0.0p0"

    goto :goto_6

    .line 449
    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
    .local v4, hexString:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_81

    .line 451
    const-string p0, "-0x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :goto_5a
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_ba

    .line 457
    const-string p0, "0."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/16 p0, 0xd

    .local p0, fractionDigits:I
    move v0, p0

    .end local p0           #fractionDigits:I
    .local v0, fractionDigits:I
    move-wide v2, v5

    .line 462
    .end local v5           #significand:J
    .local v2, significand:J
    :goto_69
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_87

    const-wide/16 p0, 0xf

    and-long/2addr p0, v2

    const-wide/16 v5, 0x0

    cmp-long p0, p0, v5

    if-nez p0, :cond_87

    .line 463
    const/4 p0, 0x4

    ushr-long v1, v2, p0

    .line 464
    .end local v2           #significand:J
    .local v1, significand:J
    add-int/lit8 p0, v0, -0x1

    .end local v0           #fractionDigits:I
    .restart local p0       #fractionDigits:I
    move v0, p0

    .end local p0           #fractionDigits:I
    .restart local v0       #fractionDigits:I
    move-wide v9, v1

    .end local v1           #significand:J
    .local v9, significand:J
    move-wide v2, v9

    .end local v9           #significand:J
    .restart local v2       #significand:J
    goto :goto_69

    .line 453
    .local v0, exponent:J
    .local v2, negative:Z
    .restart local v5       #significand:J
    :cond_81
    const-string p0, "0x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 467
    .end local v5           #significand:J
    .local v0, fractionDigits:I
    .local v2, significand:J
    :cond_87
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, hexSignificand:Ljava/lang/String;
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_a9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-le v0, p0, :cond_a9

    .line 471
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p0, v0, p0

    .local p0, digitDiff:I
    move p1, p0

    .line 472
    .end local p0           #digitDiff:I
    .local p1, digitDiff:I
    :goto_9e
    add-int/lit8 p0, p1, -0x1

    .end local p1           #digitDiff:I
    .restart local p0       #digitDiff:I
    if-eqz p1, :cond_a9

    .line 473
    const/16 p1, 0x30

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p0

    .end local p0           #digitDiff:I
    .restart local p1       #digitDiff:I
    goto :goto_9e

    .line 476
    .end local p1           #digitDiff:I
    :cond_a9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string p0, "p-1022"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v1

    .end local v1           #hexSignificand:Ljava/lang/String;
    .local p1, hexSignificand:Ljava/lang/String;
    move p0, v0

    .end local v0           #fractionDigits:I
    .local p0, fractionDigits:I
    move-wide v0, v2

    .line 504
    .end local v2           #significand:J
    .local v0, significand:J
    :goto_b4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    .line 479
    .end local p0           #fractionDigits:I
    .end local p1           #hexSignificand:Ljava/lang/String;
    .local v0, exponent:J
    .local v2, negative:Z
    .restart local v5       #significand:J
    :cond_ba
    const-string p0, "1."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const/16 p0, 0xd

    .restart local p0       #fractionDigits:I
    move v2, p0

    .line 484
    .end local p0           #fractionDigits:I
    .local v2, fractionDigits:I
    :goto_c2
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_d7

    const-wide/16 p0, 0xf

    and-long/2addr p0, v5

    const-wide/16 v7, 0x0

    cmp-long p0, p0, v7

    if-nez p0, :cond_d7

    .line 485
    const/4 p0, 0x4

    ushr-long/2addr v5, p0

    .line 486
    add-int/lit8 p0, v2, -0x1

    .end local v2           #fractionDigits:I
    .restart local p0       #fractionDigits:I
    move v2, p0

    .end local p0           #fractionDigits:I
    .restart local v2       #fractionDigits:I
    goto :goto_c2

    .line 489
    :cond_d7
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, hexSignificand:Ljava/lang/String;
    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_f9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-le v2, p0, :cond_f9

    .line 493
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p0, v2, p0

    .local p0, digitDiff:I
    move p1, p0

    .line 494
    .end local p0           #digitDiff:I
    .local p1, digitDiff:I
    :goto_ee
    add-int/lit8 p0, p1, -0x1

    .end local p1           #digitDiff:I
    .restart local p0       #digitDiff:I
    if-eqz p1, :cond_f9

    .line 495
    const/16 p1, 0x30

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p0

    .end local p0           #digitDiff:I
    .restart local p1       #digitDiff:I
    goto :goto_ee

    .line 499
    .end local p1           #digitDiff:I
    :cond_f9
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/16 p0, 0x70

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const-wide/16 p0, 0x3ff

    sub-long p0, v0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v3

    .end local v3           #hexSignificand:Ljava/lang/String;
    .local p1, hexSignificand:Ljava/lang/String;
    move p0, v2

    .end local v2           #fractionDigits:I
    .local p0, fractionDigits:I
    move-wide v0, v5

    .end local v5           #significand:J
    .local v0, significand:J
    goto :goto_b4
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 3
    .parameter "d"

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .registers 3
    .parameter "d"

    .prologue
    .line 412
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 166
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 161
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 205
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 223
    if-eq p1, p0, :cond_18

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    .end local p1
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 230
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 235
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 236
    .local v0, v:J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 241
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    .prologue
    .line 251
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    .prologue
    .line 273
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 322
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
