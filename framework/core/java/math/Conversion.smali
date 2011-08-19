.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    .line 43
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    return-void

    .line 33
    nop

    :array_14
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1ft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_62
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0xdbt 0xb3t 0x46t 0x45t
        0x0t 0x0t 0x0t 0x40t
        0x95t 0x73t 0xc2t 0x48t
        0x0t 0xd8t 0x9ft 0x15t
        0x97t 0x9ct 0xdbt 0x75t
        0x0t 0x0t 0x0t 0x40t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0xcat 0x9at 0x3bt
        0x61t 0xdbt 0xc6t 0xct
        0x0t 0x0t 0xa1t 0x19t
        0x21t 0x10t 0x9ft 0x30t
        0x0t 0xc1t 0xf6t 0x57t
        0x6ft 0x1bt 0x2ft 0xat
        0x0t 0x0t 0x0t 0x10t
        0x71t 0x45t 0x75t 0x18t
        0x80t 0xbct 0x7dt 0x24t
        0x7bt 0x66t 0x47t 0x35t
        0x0t 0x40t 0x4bt 0x4ct
        0x1dt 0x6et 0x5at 0x6bt
        0x40t 0xat 0xc2t 0x6t
        0x31t 0xd9t 0xd2t 0x8t
        0x0t 0x0t 0x64t 0xbt
        0x51t 0x4at 0x8dt 0xet
        0x40t 0xaet 0x69t 0x12t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0x10t 0xb9t 0x1ct
        0x99t 0x48t 0x74t 0x23t
        0x40t 0xa8t 0x73t 0x2bt
        0x41t 0x3bt 0xe6t 0x34t
        0x0t 0x0t 0x0t 0x40t
        0xc1t 0x3ct 0xfat 0x4ct
        0x40t 0xd8t 0x13t 0x5ct
        0x19t 0xb5t 0x91t 0x6dt
        0x0t 0xa4t 0x9at 0x3t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .registers 10
    .parameter "val"

    .prologue
    .line 419
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 421
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_1a

    .line 423
    :cond_14
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 459
    .end local p0
    :goto_19
    return-wide v0

    .line 426
    .restart local p0
    :cond_1a
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_2a

    .line 427
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_27

    const-wide/high16 v0, 0x7ff0

    goto :goto_19

    :cond_27
    const-wide/high16 v0, -0x10

    goto :goto_19

    .line 430
    .restart local p0
    :cond_2a
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 431
    .local v0, bitLen:I
    const/4 v1, 0x1

    sub-int v1, v0, v1

    int-to-long v1, v1

    .line 432
    .local v1, exponent:J
    const/16 v3, 0x36

    sub-int/2addr v0, v3

    .line 434
    .local v0, delta:I
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 439
    .local v3, lVal:J
    const-wide v5, 0x1fffffffffffffL

    and-long/2addr v3, v5

    .line 440
    .local v3, mantissa:J
    const-wide/16 v5, 0x3ff

    cmp-long v5, v1, v5

    if-nez v5, :cond_7d

    .line 441
    const-wide v5, 0x1fffffffffffffL

    cmp-long v5, v3, v5

    if-nez v5, :cond_64

    .line 442
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_61

    const-wide/high16 v0, 0x7ff0

    goto :goto_19

    :cond_61
    const-wide/high16 v0, -0x10

    goto :goto_19

    .line 445
    .restart local p0
    :cond_64
    const-wide v5, 0x1ffffffffffffeL

    cmp-long v5, v3, v5

    if-nez v5, :cond_7d

    .line 446
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-lez p0, :cond_77

    const-wide v0, 0x7fefffffffffffffL

    goto :goto_19

    :cond_77
    const-wide v0, -0x10000000000001L

    goto :goto_19

    .line 450
    .restart local p0
    :cond_7d
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_9a

    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_97

    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v0, v5}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    move-result v0

    .end local v0           #delta:I
    if-eqz v0, :cond_9a

    .line 453
    :cond_97
    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 455
    :cond_9a
    const/4 v0, 0x1

    shr-long/2addr v3, v0

    .line 456
    iget p0, p0, Ljava/math/BigInteger;->sign:I

    .end local p0
    if-gez p0, :cond_b4

    const-wide/high16 v5, -0x8000

    .line 457
    .local v5, resSign:J
    :goto_a2
    const-wide/16 v7, 0x3ff

    add-long v0, v7, v1

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    const-wide/high16 v7, 0x7ff0

    and-long/2addr v0, v7

    .line 458
    .end local v1           #exponent:J
    .local v0, exponent:J
    or-long/2addr v0, v5

    or-long/2addr v0, v3

    .line 459
    .local v0, result:J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto/16 :goto_19

    .line 456
    .end local v0           #result:J
    .end local v5           #resSign:J
    .restart local v1       #exponent:J
    :cond_b4
    const-wide/16 v5, 0x0

    goto :goto_a2
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 12
    .parameter "val"
    .parameter "radix"

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 55
    iget v6, p0, Ljava/math/BigInteger;->sign:I

    .line 56
    .local v6, sign:I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    .line 57
    .local v3, numberLength:I
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    .line 59
    .local v2, digits:[I
    if-nez v6, :cond_e

    .line 60
    const-string p0, "0"

    .line 127
    .end local v2           #digits:[I
    .end local v3           #numberLength:I
    .end local p0
    .end local p1
    :goto_d
    return-object p0

    .line 62
    .restart local v2       #digits:[I
    .restart local v3       #numberLength:I
    .restart local p0
    .restart local p1
    :cond_e
    const/4 v0, 0x1

    if-ne v3, v0, :cond_25

    .line 63
    const/4 p0, 0x1

    sub-int p0, v3, p0

    aget p0, v2, p0

    .line 64
    .local p0, highDigit:I
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 65
    .local v0, v:J
    if-gez v6, :cond_20

    .line 66
    .end local v2           #digits:[I
    neg-long v0, v0

    .line 68
    :cond_20
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 70
    .end local v0           #v:J
    .restart local v2       #digits:[I
    .local p0, val:Ljava/math/BigInteger;
    :cond_25
    const/16 v0, 0xa

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-lt p1, v0, :cond_30

    const/16 v0, 0x24

    if-le p1, v0, :cond_35

    .line 72
    :cond_30
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 75
    :cond_35
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 76
    .local v0, bitsForRadixDigit:D
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #val:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    int-to-double v4, p0

    div-double v0, v4, v0

    if-gez v6, :cond_94

    .end local v0           #bitsForRadixDigit:D
    const/4 p0, 0x1

    :goto_4f
    int-to-double v4, p0

    add-double/2addr v0, v4

    double-to-int p0, v0

    add-int/lit8 v4, p0, 0x1

    .line 79
    .local v4, resLengthInChars:I
    new-array v5, v4, [C

    .line 80
    .local v5, result:[C
    move v1, v4

    .line 82
    .local v1, currentChar:I
    const/16 p0, 0x10

    if-eq p1, p0, :cond_b8

    .line 83
    new-array v7, v3, [I

    .line 84
    .local v7, temp:[I
    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {v2, p0, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    move v2, v3

    .line 86
    .local v2, tempLen:I
    sget-object p0, Ljava/math/Conversion;->digitFitInInt:[I

    aget v0, p0, p1

    .line 89
    .local v0, charsPerInt:I
    sget-object p0, Ljava/math/Conversion;->bigRadices:[I

    const/4 v3, 0x2

    sub-int v3, p1, v3

    aget p0, p0, v3

    .end local v3           #numberLength:I
    .local p0, bigRadix:I
    move v8, v2

    .line 93
    .end local v2           #tempLen:I
    .local v8, tempLen:I
    :goto_6f
    invoke-static {v7, v7, v8, p0}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result v3

    .line 95
    .local v3, resDigit:I
    move v2, v1

    .line 97
    .local v2, previous:I
    :cond_74
    add-int/lit8 v1, v1, -0x1

    rem-int v9, v3, p1

    invoke-static {v9, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    aput-char v9, v5, v1

    .line 99
    div-int/2addr v3, p1

    if-eqz v3, :cond_83

    if-nez v1, :cond_74

    .line 100
    :cond_83
    sub-int v2, v0, v2

    add-int/2addr v2, v1

    .line 101
    .local v2, delta:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_87
    if-ge v3, v2, :cond_96

    if-lez v1, :cond_96

    .line 102
    add-int/lit8 v1, v1, -0x1

    const/16 v9, 0x30

    aput-char v9, v5, v1

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 76
    .end local v0           #charsPerInt:I
    .end local v1           #currentChar:I
    .end local v4           #resLengthInChars:I
    .end local v5           #result:[C
    .end local v7           #temp:[I
    .end local v8           #tempLen:I
    .end local p0           #bigRadix:I
    .local v2, digits:[I
    .local v3, numberLength:I
    :cond_94
    const/4 p0, 0x0

    goto :goto_4f

    .line 104
    .restart local v0       #charsPerInt:I
    .restart local v1       #currentChar:I
    .local v2, delta:I
    .local v3, i:I
    .restart local v4       #resLengthInChars:I
    .restart local v5       #result:[C
    .restart local v7       #temp:[I
    .restart local v8       #tempLen:I
    .restart local p0       #bigRadix:I
    :cond_96
    const/4 v2, 0x1

    sub-int v2, v8, v2

    .end local v3           #i:I
    .local v2, i:I
    :goto_99
    if-lez v2, :cond_a2

    aget v3, v7, v2

    if-nez v3, :cond_a2

    add-int/lit8 v2, v2, -0x1

    goto :goto_99

    .line 107
    :cond_a2
    add-int/lit8 v2, v2, 0x1

    .line 108
    .end local v8           #tempLen:I
    .local v2, tempLen:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_b6

    const/4 v3, 0x0

    aget v3, v7, v3

    if-nez v3, :cond_b6

    move p0, v1

    .line 121
    .end local v0           #charsPerInt:I
    .end local v1           #currentChar:I
    .end local v2           #tempLen:I
    .end local v7           #temp:[I
    .end local p1
    .local p0, currentChar:I
    :cond_ad
    :goto_ad
    aget-char p1, v5, p0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_db

    .line 122
    add-int/lit8 p0, p0, 0x1

    goto :goto_ad

    .restart local v0       #charsPerInt:I
    .restart local v1       #currentChar:I
    .restart local v2       #tempLen:I
    .restart local v7       #temp:[I
    .local p0, bigRadix:I
    .restart local p1
    :cond_b6
    move v8, v2

    .line 111
    .end local v2           #tempLen:I
    .restart local v8       #tempLen:I
    goto :goto_6f

    .line 114
    .end local v0           #charsPerInt:I
    .end local v7           #temp:[I
    .end local v8           #tempLen:I
    .end local p0           #bigRadix:I
    .local v2, digits:[I
    .local v3, numberLength:I
    :cond_b8
    const/4 p0, 0x0

    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    move p0, v1

    .end local v1           #currentChar:I
    .local p0, currentChar:I
    :goto_bb
    if-ge p1, v3, :cond_ad

    .line 115
    const/4 v0, 0x0

    .local v0, j:I
    :goto_be
    const/16 v1, 0x8

    if-ge v0, v1, :cond_d8

    if-lez p0, :cond_d8

    .line 116
    aget v1, v2, p1

    shl-int/lit8 v7, v0, 0x2

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    .line 117
    .local v1, resDigit:I
    add-int/lit8 p0, p0, -0x1

    const/16 v7, 0x10

    invoke-static {v1, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .end local v1           #resDigit:I
    aput-char v1, v5, p0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 114
    :cond_d8
    add-int/lit8 p1, p1, 0x1

    goto :goto_bb

    .line 124
    .end local v0           #j:I
    .end local v2           #digits:[I
    .end local v3           #numberLength:I
    .end local p1           #i:I
    :cond_db
    const/4 p1, -0x1

    if-ne v6, p1, :cond_e4

    .line 125
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v5, p0

    .line 127
    :cond_e4
    new-instance p1, Ljava/lang/String;

    sub-int v0, v4, p0

    invoke-direct {p1, v5, p0, v0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_d
.end method

.method static divideLongByBillion(J)J
    .registers 16
    .parameter "a"

    .prologue
    const/4 v12, 0x1

    .line 398
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_1a

    .line 399
    const-wide/32 v2, 0x3b9aca00

    .line 400
    .local v2, bLong:J
    div-long v6, p0, v2

    .line 401
    .local v6, quot:J
    rem-long v8, p0, v2

    .line 414
    .end local v2           #bLong:J
    .local v8, rem:J
    :goto_e
    const/16 v10, 0x20

    shl-long v10, v8, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    return-wide v10

    .line 407
    .end local v6           #quot:J
    .end local v8           #rem:J
    :cond_1a
    ushr-long v0, p0, v12

    .line 408
    .local v0, aPos:J
    const-wide/32 v4, 0x1dcd6500

    .line 409
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 410
    .restart local v6       #quot:J
    rem-long v8, v0, v4

    .line 412
    .restart local v8       #rem:J
    shl-long v10, v8, v12

    const-wide/16 v12, 0x1

    and-long/2addr v12, p0

    add-long v8, v10, v12

    goto :goto_e
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .registers 14
    .parameter "value"
    .parameter "scale"

    .prologue
    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2e

    const/4 v0, 0x1

    move v2, v0

    .line 302
    .local v2, negNumber:Z
    :goto_8
    if-eqz v2, :cond_b

    .line 303
    neg-long p0, p0

    .line 305
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_52

    .line 306
    packed-switch p2, :pswitch_data_146

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local p0, result1:Ljava/lang/StringBuilder;
    if-gez p2, :cond_46

    .line 317
    const-string p1, "0E+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_20
    const/high16 p1, -0x8000

    if-ne p2, p1, :cond_4c

    const-string p1, "2147483648"

    :goto_26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    .end local v2           #negNumber:Z
    .end local p0           #result1:Ljava/lang/StringBuilder;
    .end local p2
    :goto_2d
    return-object p0

    .line 301
    .local p0, value:J
    .restart local p2
    :cond_2e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_8

    .line 307
    .restart local v2       #negNumber:Z
    :pswitch_31
    const-string p0, "0"

    goto :goto_2d

    .line 308
    :pswitch_34
    const-string p0, "0.0"

    goto :goto_2d

    .line 309
    :pswitch_37
    const-string p0, "0.00"

    goto :goto_2d

    .line 310
    :pswitch_3a
    const-string p0, "0.000"

    goto :goto_2d

    .line 311
    :pswitch_3d
    const-string p0, "0.0000"

    goto :goto_2d

    .line 312
    :pswitch_40
    const-string p0, "0.00000"

    goto :goto_2d

    .line 313
    :pswitch_43
    const-string p0, "0.000000"

    goto :goto_2d

    .line 319
    .local p0, result1:Ljava/lang/StringBuilder;
    :cond_46
    const-string p1, "0E"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 321
    :cond_4c
    neg-int p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 326
    .local p0, value:J
    :cond_52
    const/16 v3, 0x12

    .line 331
    .local v3, resLengthInChars:I
    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [C

    .line 334
    .local v4, result:[C
    move v0, v3

    .line 335
    .local v0, currentChar:I
    move-wide p0, p0

    .local p0, v:J
    move-wide v5, p0

    .end local p0           #v:J
    .local v5, v:J
    move p0, v0

    .line 337
    .end local v0           #currentChar:I
    .local p0, currentChar:I
    :cond_5c
    move-wide v0, v5

    .line 338
    .local v0, prev:J
    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    .line 339
    add-int/lit8 p0, p0, -0x1

    const-wide/16 v7, 0x30

    const-wide/16 v9, 0xa

    mul-long/2addr v9, v5

    sub-long/2addr v0, v9

    add-long/2addr v0, v7

    long-to-int p1, v0

    int-to-char p1, p1

    aput-char p1, v4, p0

    .line 340
    .end local v0           #prev:J
    const-wide/16 v0, 0x0

    cmp-long p1, v5, v0

    if-nez p1, :cond_5c

    .line 342
    int-to-long v0, v3

    int-to-long v5, p0

    sub-long/2addr v0, v5

    int-to-long v5, p2

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    .line 343
    .local v0, exponent:J
    if-nez p2, :cond_8e

    .line 344
    .end local v5           #v:J
    if-eqz v2, :cond_85

    .line 345
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 347
    :cond_85
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    .end local p2
    move-object p0, p1

    goto :goto_2d

    .line 349
    .restart local p2
    :cond_8e
    if-lez p2, :cond_f7

    const-wide/16 p1, -0x6

    cmp-long p1, v0, p1

    if-ltz p1, :cond_f7

    .line 350
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_c6

    .line 352
    long-to-int p1, v0

    add-int/2addr p1, p0

    .line 353
    .local p1, insertPoint:I
    const/4 p2, 0x1

    sub-int p2, v3, p2

    .end local v0           #exponent:J
    .local p2, j:I
    :goto_a1
    if-lt p2, p1, :cond_ac

    .line 354
    add-int/lit8 v0, p2, 0x1

    aget-char v1, v4, p2

    aput-char v1, v4, v0

    .line 353
    add-int/lit8 p2, p2, -0x1

    goto :goto_a1

    .line 356
    :cond_ac
    add-int/lit8 p1, p1, 0x1

    const/16 p2, 0x2e

    aput-char p2, v4, p1

    .line 357
    .end local p2           #j:I
    if-eqz v2, :cond_ba

    .line 358
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 360
    .end local p1           #insertPoint:I
    :cond_ba
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_2d

    .line 363
    .restart local v0       #exponent:J
    .local p2, scale:I
    :cond_c6
    const/4 p1, 0x2

    .end local p2           #scale:I
    .local p1, j:I
    :goto_c7
    int-to-long v5, p1

    neg-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long p2, v5, v7

    if-gez p2, :cond_d9

    .line 364
    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x30

    aput-char p2, v4, p0

    .line 363
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    .line 366
    :cond_d9
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2e

    aput-char p1, v4, p0

    .line 367
    .end local p1           #j:I
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 368
    if-eqz v2, :cond_ed

    .line 369
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 371
    :cond_ed
    new-instance p1, Ljava/lang/String;

    sub-int p2, v3, p0

    invoke-direct {p1, v4, p0, p2}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_2d

    .line 373
    .restart local p2       #scale:I
    :cond_f7
    add-int/lit8 v5, p0, 0x1

    .line 374
    .local v5, startPoint:I
    move p1, v3

    .line 375
    .local p1, endPoint:I
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #scale:I
    const/16 v6, 0x10

    add-int/lit8 v6, v6, 0x12

    sub-int/2addr v6, v5

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local p2, result1:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_10b

    .line 377
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    .end local v2           #negNumber:Z
    :cond_10b
    sub-int/2addr p1, v5

    const/4 v2, 0x1

    if-lt p1, v2, :cond_13f

    .line 380
    .end local p1           #endPoint:I
    aget-char p1, v4, p0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 p1, p0, 0x1

    sub-int p0, v3, p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    invoke-virtual {p2, v4, p1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 386
    .end local p0           #currentChar:I
    :goto_122
    const/16 p0, 0x45

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_132

    .line 388
    const/16 p0, 0x2b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_132
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2d

    .line 384
    .restart local p0       #currentChar:I
    :cond_13f
    sub-int p1, v3, p0

    invoke-virtual {p2, v4, p0, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 306
    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 14
    .parameter "val"
    .parameter "scale"

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 139
    iget v5, p0, Ljava/math/BigInteger;->sign:I

    .line 140
    .local v5, sign:I
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    .line 141
    .local v1, numberLength:I
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    .line 146
    .local v0, digits:[I
    if-nez v5, :cond_3e

    .line 147
    packed-switch p1, :pswitch_data_1b0

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local p0, result1:Ljava/lang/StringBuilder;
    if-gez p1, :cond_38

    .line 165
    const-string v0, "0E+"

    .end local v0           #digits:[I
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_1a
    neg-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .end local p1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 293
    .end local v1           #numberLength:I
    .end local v5           #sign:I
    .end local p0           #result1:Ljava/lang/StringBuilder;
    :goto_22
    return-object p0

    .line 149
    .restart local v0       #digits:[I
    .restart local v1       #numberLength:I
    .restart local v5       #sign:I
    .local p0, val:Ljava/math/BigInteger;
    .restart local p1
    :pswitch_23
    const-string p0, "0"

    goto :goto_22

    .line 151
    :pswitch_26
    const-string p0, "0.0"

    goto :goto_22

    .line 153
    :pswitch_29
    const-string p0, "0.00"

    goto :goto_22

    .line 155
    :pswitch_2c
    const-string p0, "0.000"

    goto :goto_22

    .line 157
    :pswitch_2f
    const-string p0, "0.0000"

    goto :goto_22

    .line 159
    :pswitch_32
    const-string p0, "0.00000"

    goto :goto_22

    .line 161
    :pswitch_35
    const-string p0, "0.000000"

    goto :goto_22

    .line 167
    .local p0, result1:Ljava/lang/StringBuilder;
    :cond_38
    const-string v0, "0E"

    .end local v0           #digits:[I
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 174
    .restart local v0       #digits:[I
    .local p0, val:Ljava/math/BigInteger;
    :cond_3e
    mul-int/lit8 p0, v1, 0xa

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v3, p0, 0x7

    .line 179
    .local v3, resLengthInChars:I
    add-int/lit8 p0, v3, 0x1

    new-array v4, p0, [C

    .line 183
    .end local p0           #val:Ljava/math/BigInteger;
    .local v4, result:[C
    move p0, v3

    .line 184
    .local p0, currentChar:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9d

    .line 185
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 186
    .end local v1           #numberLength:I
    .local v0, highDigit:I
    if-gez v0, :cond_8b

    .line 187
    int-to-long v0, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    .local v0, v:J
    move-wide v6, v0

    .line 189
    .end local v0           #v:J
    .local v6, v:J
    :cond_59
    move-wide v0, v6

    .line 190
    .local v0, prev:J
    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    .line 191
    add-int/lit8 p0, p0, -0x1

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    sub-long/2addr v0, v8

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v4, p0

    .line 192
    .end local v0           #prev:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_59

    .line 238
    .end local v6           #v:J
    :cond_6f
    :goto_6f
    if-gez v5, :cond_106

    const/4 v0, 0x1

    move v1, v0

    .line 239
    .local v1, negNumber:Z
    :goto_73
    sub-int v0, v3, p0

    sub-int/2addr v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 240
    .local v0, exponent:I
    if-nez p1, :cond_10a

    .line 241
    if-eqz v1, :cond_82

    .line 242
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 244
    .end local p1
    :cond_82
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #exponent:I
    move-object p0, p1

    goto :goto_22

    .line 194
    .end local v1           #negNumber:Z
    .local v0, highDigit:I
    .restart local p1
    :cond_8b
    move v0, v0

    .local v0, v:I
    move v1, v0

    .line 196
    .end local v0           #v:I
    .local v1, v:I
    :cond_8d
    move v0, v1

    .line 197
    .local v0, prev:I
    div-int/lit8 v1, v1, 0xa

    .line 198
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    aput-char v0, v4, p0

    .line 199
    .end local v0           #prev:I
    if-nez v1, :cond_8d

    goto :goto_6f

    .line 202
    .local v0, digits:[I
    .local v1, numberLength:I
    :cond_9d
    new-array v6, v1, [I

    .line 203
    .local v6, temp:[I
    move v1, v1

    .line 204
    .local v1, tempLen:I
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v2, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v1

    .line 209
    .end local v0           #digits:[I
    .end local v1           #tempLen:I
    .local v7, tempLen:I
    :goto_a6
    const-wide/16 v1, 0x0

    .line 210
    .local v1, result11:J
    const/4 v0, 0x1

    sub-int v0, v7, v0

    .local v0, i1:I
    :goto_ab
    if-ltz v0, :cond_c9

    .line 211
    const/16 v8, 0x20

    shl-long/2addr v1, v8

    aget v8, v6, v0

    .end local v1           #result11:J
    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 213
    .local v1, temp1:J
    invoke-static {v1, v2}, Ljava/math/Conversion;->divideLongByBillion(J)J

    move-result-wide v1

    .line 214
    .local v1, res:J
    long-to-int v8, v1

    aput v8, v6, v0

    .line 215
    const/16 v8, 0x20

    shr-long/2addr v1, v8

    long-to-int v1, v1

    int-to-long v1, v1

    .line 210
    .local v1, result11:J
    add-int/lit8 v0, v0, -0x1

    goto :goto_ab

    .line 217
    :cond_c9
    long-to-int v1, v1

    .line 218
    .local v1, resDigit:I
    move v0, p0

    .line 220
    .local v0, previous:I
    :cond_cb
    add-int/lit8 p0, p0, -0x1

    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v4, p0

    .line 221
    div-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_da

    if-nez p0, :cond_cb

    .line 222
    :cond_da
    const/16 v1, 0x9

    sub-int v0, v1, v0

    add-int/2addr v0, p0

    .line 223
    .local v0, delta:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e0
    if-ge v1, v0, :cond_ed

    if-lez p0, :cond_ed

    .line 224
    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0x30

    aput-char v2, v4, p0

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    .line 226
    :cond_ed
    const/4 v0, 0x1

    sub-int v0, v7, v0

    .line 227
    .end local v1           #i:I
    .local v0, j:I
    :goto_f0
    aget v1, v6, v0

    if-nez v1, :cond_102

    .line 228
    if-nez v0, :cond_ff

    .line 234
    .end local v0           #j:I
    :goto_f6
    aget-char v0, v4, p0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_6f

    .line 235
    add-int/lit8 p0, p0, 0x1

    goto :goto_f6

    .line 227
    .restart local v0       #j:I
    :cond_ff
    add-int/lit8 v0, v0, -0x1

    goto :goto_f0

    .line 232
    :cond_102
    add-int/lit8 v0, v0, 0x1

    .end local v7           #tempLen:I
    .local v0, tempLen:I
    move v7, v0

    .line 233
    .end local v0           #tempLen:I
    .restart local v7       #tempLen:I
    goto :goto_a6

    .line 238
    .end local v6           #temp:[I
    .end local v7           #tempLen:I
    :cond_106
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_73

    .line 247
    .local v0, exponent:I
    .local v1, negNumber:Z
    :cond_10a
    if-lez p1, :cond_168

    const/4 p1, -0x6

    if-lt v0, p1, :cond_168

    .line 248
    .end local p1
    if-ltz v0, :cond_13b

    .line 250
    add-int p1, p0, v0

    .line 251
    .local p1, insertPoint:I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    .end local v5           #sign:I
    .local v0, j:I
    :goto_116
    if-lt v0, p1, :cond_121

    .line 252
    add-int/lit8 v2, v0, 0x1

    aget-char v5, v4, v0

    aput-char v5, v4, v2

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    .line 254
    :cond_121
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2e

    aput-char v0, v4, p1

    .line 255
    .end local v0           #j:I
    if-eqz v1, :cond_12f

    .line 256
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 258
    .end local p1           #insertPoint:I
    :cond_12f
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, p1

    goto/16 :goto_22

    .line 262
    .local v0, exponent:I
    .restart local v5       #sign:I
    :cond_13b
    const/4 p1, 0x2

    .local p1, j:I
    :goto_13c
    neg-int v2, v0

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_14a

    .line 263
    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0x30

    aput-char v2, v4, p0

    .line 262
    add-int/lit8 p1, p1, 0x1

    goto :goto_13c

    .line 265
    :cond_14a
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2e

    aput-char p1, v4, p0

    .line 266
    .end local p1           #j:I
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x30

    aput-char p1, v4, p0

    .line 267
    if-eqz v1, :cond_15e

    .line 268
    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x2d

    aput-char p1, v4, p0

    .line 270
    :cond_15e
    new-instance p1, Ljava/lang/String;

    sub-int v0, v3, p0

    invoke-direct {p1, v4, p0, v0}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #exponent:I
    move-object p0, p1

    goto/16 :goto_22

    .line 273
    .restart local v0       #exponent:I
    :cond_168
    add-int/lit8 v5, p0, 0x1

    .line 274
    .local v5, startPoint:I
    move p1, v3

    .line 275
    .local p1, endPoint:I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, 0x10

    sub-int/2addr v6, v5

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v2, result1:Ljava/lang/StringBuilder;
    if-eqz v1, :cond_17a

    .line 277
    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    .end local v1           #negNumber:Z
    :cond_17a
    sub-int/2addr p1, v5

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1aa

    .line 280
    .end local p1           #endPoint:I
    aget-char p1, v4, p0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 p1, p0, 0x1

    sub-int p0, v3, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v2, v4, p1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 288
    .end local p0           #currentChar:I
    :goto_191
    const/16 p0, 0x45

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    if-lez v0, :cond_19d

    .line 290
    const/16 p0, 0x2b

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_19d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_22

    .line 285
    .restart local p0       #currentChar:I
    :cond_1aa
    sub-int p1, v3, p0

    invoke-virtual {v2, v4, p0, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_191

    .line 147
    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method
