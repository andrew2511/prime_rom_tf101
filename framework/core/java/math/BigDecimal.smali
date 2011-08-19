.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal; = null

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C = null

.field private static final FIVE_POW:[Ljava/math/BigInteger; = null

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J = null

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I = null

.field private static final LONG_POWERS_OF_TEN_BIT_LENGTH:[I = null

.field public static final ONE:Ljava/math/BigDecimal; = null

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal; = null

.field private static final TEN_POW:[Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigDecimal; = null

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal; = null

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 46
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 51
    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 56
    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    .line 148
    const/16 v2, 0x1c

    new-array v2, v2, [J

    fill-array-data v2, :array_a0

    sput-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    .line 178
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    .line 179
    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    .line 187
    new-array v2, v5, [Ljava/math/BigDecimal;

    sput-object v2, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    .line 193
    new-array v2, v5, [Ljava/math/BigDecimal;

    sput-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 196
    const/16 v2, 0x64

    new-array v2, v2, [C

    sput-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, i:I
    :goto_43
    sget-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v2, v2

    if-ge v0, v2, :cond_61

    .line 203
    sget-object v2, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v3, v2, v0

    .line 204
    sget-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v3, v2, v0

    .line 205
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    aput-char v6, v2, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 208
    :cond_61
    :goto_61
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    .line 209
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    aput-char v6, v2, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 211
    :cond_6d
    const/4 v1, 0x0

    .local v1, j:I
    :goto_6e
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_82

    .line 212
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v3, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v3

    aput v3, v2, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 214
    :cond_82
    const/4 v1, 0x0

    :goto_83
    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_97

    .line 215
    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v3

    aput v3, v2, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 219
    :cond_97
    sget-object v2, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    .line 220
    sget-object v2, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    .line 221
    return-void

    .line 148
    :array_a0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xcdt 0x1dt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf9t 0x2t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xddt 0xet 0xe9t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x51t 0x4at 0x8dt 0xet 0x0t 0x0t 0x0t 0x0t
        0x95t 0x73t 0xc2t 0x48t 0x0t 0x0t 0x0t 0x0t
        0xe9t 0x41t 0xcct 0x6bt 0x1t 0x0t 0x0t 0x0t
        0x8dt 0x49t 0xfdt 0x1at 0x7t 0x0t 0x0t 0x0t
        0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t 0x0t 0x0t
        0xc5t 0x2et 0xbct 0xa2t 0xb1t 0x0t 0x0t 0x0t
        0xd9t 0xe9t 0xact 0x2dt 0x78t 0x3t 0x0t 0x0t
        0x3dt 0x91t 0x60t 0xe4t 0x58t 0x11t 0x0t 0x0t
        0x31t 0xd6t 0xe2t 0x75t 0xbct 0x56t 0x0t 0x0t
        0xf5t 0x2et 0x6et 0x4dt 0xaet 0xb1t 0x1t 0x0t
        0xc9t 0xeat 0x26t 0x83t 0x67t 0x78t 0x8t 0x0t
        0xedt 0x95t 0xc2t 0x8ft 0x5t 0x5at 0x2at 0x0t
        0xa1t 0xedt 0xcct 0xcet 0x1bt 0xc2t 0xd3t 0x0t
        0x25t 0xa4t 0x0t 0xat 0x8bt 0xcat 0x22t 0x4t
        0xb9t 0x34t 0x3t 0x32t 0xb7t 0xf4t 0xadt 0x14t
        0x9dt 0x7t 0x10t 0xfat 0x93t 0xc7t 0x65t 0x67t
    .end array-data
.end method

.method public constructor <init>(D)V
    .registers 15
    .parameter "val"

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 131
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 134
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 247
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 486
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 487
    :cond_18
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Infinity or NaN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 489
    :cond_31
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 493
    .local v1, bits:J
    const/16 v7, 0x433

    const/16 v8, 0x34

    shr-long v8, v1, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 495
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v8, 0x433

    if-ne v7, v8, :cond_9a

    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    move-wide v3, v7

    .line 497
    .local v3, mantissa:J
    :goto_51
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_5d

    .line 498
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 499
    const/4 v7, 0x1

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 502
    :cond_5d
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_71

    .line 503
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 504
    .local v6, trailingZeros:I
    ushr-long/2addr v3, v6

    .line 505
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v7, v6

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 508
    .end local v6           #trailingZeros:I
    :cond_71
    const/16 v7, 0x3f

    shr-long v7, v1, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7c

    .line 509
    neg-long v3, v3

    .line 511
    :cond_7c
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v5

    .line 512
    .local v5, mantissaBits:I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v7, :cond_c0

    .line 513
    if-nez v5, :cond_a5

    const/4 v7, 0x0

    :goto_87
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 514
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_aa

    .line 515
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    shl-long v7, v3, v7

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 524
    :goto_96
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 538
    :goto_99
    return-void

    .line 495
    .end local v3           #mantissa:J
    .end local v5           #mantissaBits:I
    :cond_9a
    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const-wide/high16 v9, 0x10

    or-long/2addr v7, v9

    move-wide v3, v7

    goto :goto_51

    .line 513
    .restart local v3       #mantissa:J
    .restart local v5       #mantissaBits:I
    :cond_a5
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v7, v5, v7

    goto :goto_87

    .line 518
    :cond_aa
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 519
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, v3, v4}, Ljava/math/BigInt;->putLongInt(J)V

    .line 520
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    .line 521
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    goto :goto_96

    .line 525
    .end local v0           #bi:Ljava/math/BigInt;
    :cond_c0
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_f6

    .line 527
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v8, v8

    if-ge v7, v8, :cond_e8

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget v7, v7, v8

    add-int/2addr v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_e8

    .line 529
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v7, v7, v8

    mul-long/2addr v7, v3

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 530
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v7

    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_99

    .line 532
    :cond_e8
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_99

    .line 535
    :cond_f6
    iput-wide v3, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 536
    iput v5, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_99
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 562
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 563
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 564
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "val"

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 652
    return-void
.end method

.method private constructor <init>(II)V
    .registers 5
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 134
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 247
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 256
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 257
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 258
    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 259
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 670
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 671
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .parameter "val"

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    .line 682
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 6
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 134
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 247
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 250
    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 251
    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    .line 252
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 253
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 700
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 701
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 6
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 467
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 576
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 134
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 247
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 611
    if-nez p1, :cond_13

    .line 612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 614
    :cond_13
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 615
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    .line 616
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .registers 4
    .parameter "unscaledVal"
    .parameter "scale"
    .parameter "mc"

    .prologue
    .line 639
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 640
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 641
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .registers 3
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 594
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 595
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .parameter "in"

    .prologue
    .line 406
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 407
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 21
    .parameter "in"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 131
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 134
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->hashCode:I

    .line 247
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 278
    move/from16 v4, p2

    .line 279
    .local v4, begin:I
    const/4 v13, 0x1

    sub-int v13, p3, v13

    add-int v7, p2, v13

    .line 284
    .local v7, last:I
    if-nez p1, :cond_24

    .line 285
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 287
    :cond_24
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    if-ge v7, v13, :cond_30

    if-ltz p2, :cond_30

    if-lez p3, :cond_30

    if-gez v7, :cond_67

    .line 288
    :cond_30
    new-instance v13, Ljava/lang/NumberFormatException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad offset/length: offset="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " len="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in.length="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 291
    :cond_67
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v0, v11

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v11, unscaledBuffer:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 294
    .local v5, bufLength:I
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_7f

    aget-char v13, p1, p2

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_7f

    .line 295
    add-int/lit8 p2, p2, 0x1

    .line 296
    add-int/lit8 v4, v4, 0x1

    .line 298
    :cond_7f
    const/4 v6, 0x0

    .line 299
    .local v6, counter:I
    const/4 v12, 0x0

    .line 301
    .local v12, wasNonZero:Z
    :goto_81
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_a7

    aget-char v13, p1, p2

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_a7

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_a7

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-eq v13, v14, :cond_a7

    .line 302
    if-nez v12, :cond_a2

    .line 303
    aget-char v13, p1, p2

    const/16 v14, 0x30

    if-ne v13, v14, :cond_a5

    .line 304
    add-int/lit8 v6, v6, 0x1

    .line 301
    :cond_a2
    :goto_a2
    add-int/lit8 p2, p2, 0x1

    goto :goto_81

    .line 306
    :cond_a5
    const/4 v12, 0x1

    goto :goto_a2

    .line 311
    :cond_a7
    sub-int v13, p2, v4

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 312
    sub-int v13, p2, v4

    add-int/2addr v5, v13

    .line 314
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_15c

    aget-char v13, p1, p2

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_15c

    .line 315
    add-int/lit8 p2, p2, 0x1

    .line 317
    move/from16 v4, p2

    .line 319
    :goto_c3
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_e3

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_e3

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-eq v13, v14, :cond_e3

    .line 320
    if-nez v12, :cond_de

    .line 321
    aget-char v13, p1, p2

    const/16 v14, 0x30

    if-ne v13, v14, :cond_e1

    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 319
    :cond_de
    :goto_de
    add-int/lit8 p2, p2, 0x1

    goto :goto_c3

    .line 324
    :cond_e1
    const/4 v12, 0x1

    goto :goto_de

    .line 328
    :cond_e3
    sub-int v13, p2, v4

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    add-int/2addr v5, v13

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 335
    :goto_fd
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_163

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_10e

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-ne v13, v14, :cond_163

    .line 336
    :cond_10e
    add-int/lit8 p2, p2, 0x1

    .line 338
    move/from16 v4, p2

    .line 339
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_12c

    aget-char v13, p1, p2

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_12c

    .line 340
    add-int/lit8 p2, p2, 0x1

    .line 341
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_12c

    aget-char v13, p1, p2

    const/16 v14, 0x2d

    if-eq v13, v14, :cond_12c

    .line 342
    add-int/lit8 v4, v4, 0x1

    .line 346
    :cond_12c
    add-int/lit8 v13, v7, 0x1

    sub-int/2addr v13, v4

    move-object/from16 v0, p1

    move v1, v4

    move v2, v13

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, scaleString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    int-to-long v13, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    sub-long v8, v13, v15

    .line 349
    .local v8, newScale:J
    long-to-int v13, v8

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    int-to-long v13, v13

    cmp-long v13, v8, v13

    if-eqz v13, :cond_163

    .line 351
    new-instance v13, Ljava/lang/NumberFormatException;

    const-string v14, "Scale out of range"

    invoke-direct {v13, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 332
    .end local v8           #newScale:J
    .end local v10           #scaleString:Ljava/lang/String;
    :cond_15c
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    goto :goto_fd

    .line 355
    :cond_163
    const/16 v13, 0x13

    if-ge v5, v13, :cond_1a2

    .line 356
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/math/BigDecimal;->smallValue:J

    .line 357
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/math/BigDecimal;->smallValue:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->bitLength:I

    .line 361
    :goto_182
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v6

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 362
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_1a1

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->precision:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 365
    :cond_1a1
    return-void

    .line 359
    :cond_1a2
    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_182
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .registers 5
    .parameter "in"
    .parameter "offset"
    .parameter "len"
    .parameter "mc"

    .prologue
    .line 390
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 391
    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 392
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .registers 5
    .parameter "in"
    .parameter "mc"

    .prologue
    .line 428
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 429
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 430
    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 10
    .parameter "thisValue"
    .parameter "augend"
    .parameter "diffScale"

    .prologue
    .line 813
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge p2, v1, :cond_29

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_29

    .line 815
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, p2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 819
    :goto_28
    return-object v1

    .line 817
    :cond_29
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 818
    .local v0, bi:Ljava/math/BigInt;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    .line 819
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_28
.end method

.method private approxPrecision()I
    .registers 5

    .prologue
    .line 2929
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_7

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79ffL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static bitLength(I)I
    .registers 3
    .parameter "smallValue"

    .prologue
    .line 3012
    if-gez p0, :cond_4

    .line 3013
    xor-int/lit8 p0, p0, -0x1

    .line 3015
    :cond_4
    const/16 v0, 0x20

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static bitLength(J)I
    .registers 4
    .parameter "smallValue"

    .prologue
    .line 3005
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 3006
    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    .line 3008
    :cond_9
    const/16 v0, 0x40

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private decimalDigitsInLong(J)I
    .registers 7
    .parameter "value"

    .prologue
    .line 1865
    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_9

    .line 1866
    const/16 v1, 0x13

    .line 1869
    :goto_8
    return v1

    .line 1868
    :cond_9
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1869
    .local v0, index:I
    if-gez v0, :cond_19

    neg-int v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_8

    :cond_19
    add-int/lit8 v1, v0, 0x1

    goto :goto_8
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 11
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1119
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 1121
    .local v0, quotAndRem:[Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1122
    .local v1, quotient:Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 1123
    .local v0, remainder:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_18

    .line 1124
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-direct {p0, v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p0

    move-object p0, v1

    .line 1150
    .end local v1           #quotient:Ljava/math/BigInteger;
    .end local p1
    .end local p3
    .local p0, quotient:Ljava/math/BigInteger;
    :goto_17
    return-object p1

    .line 1126
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, scaledDividend:Ljava/math/BigInteger;
    .restart local p1
    .restart local p3
    :cond_18
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    .end local p0           #scaledDividend:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    mul-int v4, p0, v2

    .line 1128
    .local v4, sign:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v2, 0x3f

    if-ge p0, v2, :cond_69

    .line 1129
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1130
    .local v2, rem:J
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    .line 1131
    .end local p1
    .local p0, divisor:J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .end local v2           #rem:J
    const-wide/16 v5, 0x2

    mul-long/2addr v2, v5

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .end local p0           #divisor:J
    invoke-static {v2, v3, p0, p1}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result p0

    .line 1133
    .local p0, compRem:I
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 p1, 0x1

    :goto_49
    add-int/lit8 p0, p0, 0x5

    mul-int/2addr p0, v4

    invoke-static {p1, p0, p3}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    .end local p0           #compRem:I
    move-result p0

    .line 1142
    .restart local p0       #compRem:I
    :goto_50
    if-eqz p0, :cond_9b

    .line 1143
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p3, 0x3f

    if-ge p1, p3, :cond_8b

    .line 1144
    .end local p3
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    int-to-long p0, p0

    add-long/2addr p0, v2

    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .end local p0           #compRem:I
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    goto :goto_17

    .line 1133
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, compRem:I
    .restart local p3
    :cond_67
    const/4 p1, 0x0

    goto :goto_49

    .line 1138
    .end local p0           #compRem:I
    .restart local p1
    :cond_69
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    .line 1139
    .restart local p0       #compRem:I
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_89

    const/4 p1, 0x1

    :goto_81
    add-int/lit8 p0, p0, 0x5

    mul-int/2addr p0, v4

    invoke-static {p1, p0, p3}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    .end local p0           #compRem:I
    move-result p0

    .restart local p0       #compRem:I
    goto :goto_50

    :cond_89
    const/4 p1, 0x0

    goto :goto_81

    .line 1146
    .end local p3
    :cond_8b
    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local p0           #compRem:I
    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 1147
    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_17

    .line 1150
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, compRem:I
    .restart local p3
    :cond_9b
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0           #compRem:I
    invoke-direct {p0, v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p0

    move-object p0, v1

    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    goto/16 :goto_17
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1154
    div-long v1, p0, p2

    .line 1155
    .local v1, quotient:J
    rem-long v3, p0, p2

    .line 1156
    .local v3, remainder:J
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result v7

    mul-int v5, v6, v7

    .line 1157
    .local v5, sign:I
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_2f

    .line 1160
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v0

    .line 1162
    .local v0, compRem:I
    long-to-int v6, v1

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x5

    mul-int/2addr v7, v5

    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 1167
    .end local v0           #compRem:I
    :cond_2f
    invoke-static {v1, v2, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 2990
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 2991
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2993
    :cond_c
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .registers 16
    .parameter "mc"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2753
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 2755
    .local v3, mcPrecision:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v8, v3, :cond_e

    if-nez v3, :cond_f

    .line 2797
    :cond_e
    :goto_e
    return-void

    .line 2759
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    sub-int v1, v8, v3

    .line 2761
    .local v1, discardedPrecision:I
    if-lez v1, :cond_e

    .line 2765
    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_21

    .line 2766
    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    goto :goto_e

    .line 2770
    :cond_21
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 2771
    .local v6, sizeOfFraction:Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 2772
    .local v2, integerAndFraction:[Ljava/math/BigInteger;
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v8

    int-to-long v10, v1

    sub-long v4, v8, v10

    .line 2776
    .local v4, newScale:J
    aget-object v8, v2, v13

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_8d

    .line 2778
    aget-object v8, v2, v13

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 2780
    .local v0, compRem:I
    aget-object v8, v2, v12

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_9c

    move v8, v13

    :goto_53
    aget-object v9, v2, v13

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    add-int/lit8 v10, v0, 0x5

    mul-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v0

    .line 2783
    if-eqz v0, :cond_73

    .line 2784
    aget-object v8, v2, v12

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v2, v12

    .line 2786
    :cond_73
    new-instance v7, Ljava/math/BigDecimal;

    aget-object v8, v2, v12

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2788
    .local v7, tempBD:Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    if-le v8, v3, :cond_8d

    .line 2789
    aget-object v8, v2, v12

    sget-object v9, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v2, v12

    .line 2790
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 2794
    .end local v0           #compRem:I
    .end local v7           #tempBD:Ljava/math/BigDecimal;
    :cond_8d
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    .line 2795
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 2796
    aget-object v8, v2, v12

    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_e

    .restart local v0       #compRem:I
    :cond_9c
    move v8, v12

    .line 2780
    goto :goto_53
.end method

.method private isZero()Z
    .registers 5

    .prologue
    .line 1818
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_e

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static longCompareTo(JJ)I
    .registers 5
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 2800
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .registers 9
    .parameter "newScale"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 2023
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2024
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2040
    :goto_13
    return-object v0

    .line 2030
    :cond_14
    cmp-long v0, p1, v1

    if-ltz v0, :cond_35

    .line 2031
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_27

    .line 2032
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 2034
    :cond_27
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13

    .line 2036
    :cond_35
    neg-long v0, p1

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_57

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, p1

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_57

    .line 2038
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, p1

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 2040
    :cond_57
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2972
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2974
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2975
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_19

    .line 2976
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 2978
    :cond_19
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .registers 8
    .parameter "parityBit"
    .parameter "fraction"
    .parameter "roundingMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2856
    const/4 v0, 0x0

    .line 2858
    .local v0, increment:I
    sget-object v1, Ljava/math/BigDecimal$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    .line 2891
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 2860
    :pswitch_f
    if-eqz p1, :cond_e

    .line 2861
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2865
    :pswitch_19
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 2866
    goto :goto_e

    .line 2870
    :pswitch_1e
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2871
    goto :goto_e

    .line 2873
    :pswitch_27
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2874
    goto :goto_e

    .line 2876
    :pswitch_30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v3, :cond_e

    .line 2877
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2881
    :pswitch_3b
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_e

    .line 2882
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2886
    :pswitch_46
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, v3, :cond_e

    .line 2887
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2858
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_f
        :pswitch_19
        :pswitch_e
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_3b
        :pswitch_46
    .end packed-switch
.end method

.method private static safeLongToInt(J)I
    .registers 5
    .parameter "longValue"

    .prologue
    .line 2936
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_27

    .line 2937
    :cond_e
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of int range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2939
    :cond_27
    long-to-int v0, p0

    return v0
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .registers 4
    .parameter "unscaledValue"

    .prologue
    .line 2997
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2998
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2999
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_14

    .line 3000
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 3002
    :cond_14
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .registers 21
    .parameter "mc"
    .parameter "discardedPrecision"

    .prologue
    .line 2813
    sget-object v14, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v10, v14, p2

    .line 2814
    .local v10, sizeOfFraction:J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v14, v0

    int-to-long v14, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 2815
    .local v8, newScale:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/math/BigDecimal;->smallValue:J

    move-wide v12, v0

    .line 2817
    .local v12, unscaledVal:J
    div-long v6, v12, v10

    .line 2818
    .local v6, integer:J
    rem-long v4, v12, v10

    .line 2821
    .local v4, fraction:J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-eqz v14, :cond_5d

    .line 2823
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    invoke-static {v14, v15, v10, v11}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v3

    .line 2825
    .local v3, compRem:I
    long-to-int v14, v6

    and-int/lit8 v14, v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result v15

    add-int/lit8 v16, v3, 0x5

    mul-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v6, v14

    .line 2829
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_5d

    .line 2830
    const-wide/16 v14, 0xa

    div-long/2addr v6, v14

    .line 2831
    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    .line 2835
    .end local v3           #compRem:I
    :cond_5d
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 2836
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 2837
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/math/BigDecimal;->smallValue:J

    .line 2838
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->bitLength:I

    .line 2839
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2840
    return-void
.end method

.method private valueExact(I)J
    .registers 5
    .parameter "bitLengthOfType"

    .prologue
    .line 2910
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 2912
    .local v0, bigInteger:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ge v1, p1, :cond_f

    .line 2914
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 2916
    :cond_f
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .registers 5
    .parameter "val"

    .prologue
    .line 764
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 765
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Infinity or NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_25
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .registers 4
    .parameter "unscaledVal"

    .prologue
    .line 739
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_12

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 740
    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 742
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_11
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .registers 5
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    .line 719
    if-nez p2, :cond_7

    .line 720
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 726
    :goto_6
    return-object v0

    .line 722
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_19

    if-ltz p2, :cond_19

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p2, v0, :cond_19

    .line 724
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p2

    goto :goto_6

    .line 726
    :cond_19
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_6
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2985
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    .line 2986
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2987
    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .registers 7
    .parameter "longScale"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 2956
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    .line 2957
    long-to-int v0, p0

    invoke-static {v3, v4, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2962
    :goto_e
    return-object v0

    .line 2959
    :cond_f
    cmp-long v0, p0, v3

    if-ltz v0, :cond_1c

    .line 2960
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e

    .line 2962
    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x8000

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 1732
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p0

    goto :goto_a
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1746
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1747
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1748
    return-object v0
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 7
    .parameter "augend"

    .prologue
    .line 782
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 784
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 785
    if-gtz v0, :cond_10

    move-object v1, p1

    .line 807
    :goto_f
    return-object v1

    .line 788
    :cond_10
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, p0

    .line 789
    goto :goto_f

    .line 791
    :cond_18
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 792
    if-ltz v0, :cond_22

    move-object v1, p0

    .line 793
    goto :goto_f

    .line 797
    :cond_22
    if-nez v0, :cond_52

    .line 799
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3e

    .line 800
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f

    .line 802
    :cond_3e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_f

    .line 803
    :cond_52
    if-lez v0, :cond_59

    .line 805
    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f

    .line 807
    :cond_59
    neg-int v1, v0

    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "augend"
    .parameter "mc"

    .prologue
    .line 840
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v0, v7, v9

    .line 843
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    if-nez v7, :cond_23

    .line 845
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 874
    :goto_22
    return-object v7

    .line 848
    :cond_23
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    sub-long v9, v0, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_45

    .line 849
    move-object v2, p1

    .line 850
    .local v2, larger:Ljava/math/BigDecimal;
    move-object v5, p0

    .line 857
    .local v5, smaller:Ljava/math/BigDecimal;
    :goto_32
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    invoke-direct {v2}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v7, v8, :cond_5e

    .line 859
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 851
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_45
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    neg-long v9, v0

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_55

    .line 852
    move-object v2, p0

    .line 853
    .restart local v2       #larger:Ljava/math/BigDecimal;
    move-object v5, p1

    .restart local v5       #smaller:Ljava/math/BigDecimal;
    goto :goto_32

    .line 855
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_55
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 862
    .restart local v2       #larger:Ljava/math/BigDecimal;
    .restart local v5       #smaller:Ljava/math/BigDecimal;
    :cond_5e
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 863
    .local v4, largerSignum:I
    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-ne v4, v7, :cond_89

    .line 864
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 873
    .local v6, tempBI:Ljava/math/BigInteger;
    :goto_7b
    new-instance v3, Ljava/math/BigDecimal;

    iget v7, v2, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 874
    .end local v2           #larger:Ljava/math/BigDecimal;
    .local v3, larger:Ljava/math/BigDecimal;
    invoke-virtual {v3, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 867
    .end local v3           #larger:Ljava/math/BigDecimal;
    .end local v6           #tempBI:Ljava/math/BigInteger;
    .restart local v2       #larger:Ljava/math/BigDecimal;
    :cond_89
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 869
    .restart local v6       #tempBI:Ljava/math/BigInteger;
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x9

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_7b
.end method

.method public byteValueExact()B
    .registers 3

    .prologue
    .line 2563
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .registers 13
    .parameter "val"

    .prologue
    .line 2153
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    .line 2154
    .local v3, thisSign:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    .line 2156
    .local v6, valueSign:I
    if-ne v3, v6, :cond_84

    .line 2157
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    if-ne v7, v8, :cond_32

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    .line 2158
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_26

    const/4 v7, -0x1

    .line 2180
    :goto_25
    return v7

    .line 2158
    :cond_26
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_30

    const/4 v7, 0x1

    goto :goto_25

    :cond_30
    const/4 v7, 0x0

    goto :goto_25

    .line 2160
    :cond_32
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 2161
    .local v1, diffScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    sub-int v0, v7, v8

    .line 2162
    .local v0, diffPrecision:I
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    cmp-long v7, v7, v9

    if-lez v7, :cond_4e

    move v7, v3

    .line 2163
    goto :goto_25

    .line 2164
    :cond_4e
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    sub-long v9, v1, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_59

    .line 2165
    neg-int v7, v3

    goto :goto_25

    .line 2167
    :cond_59
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 2168
    .local v4, thisUnscaled:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2170
    .local v5, valUnscaled:Ljava/math/BigInteger;
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_75

    .line 2171
    neg-long v7, v1

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 2175
    :cond_70
    :goto_70
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_25

    .line 2172
    :cond_75
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_70

    .line 2173
    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_70

    .line 2177
    .end local v0           #diffPrecision:I
    .end local v1           #diffScale:J
    .end local v4           #thisUnscaled:Ljava/math/BigInteger;
    .end local v5           #valUnscaled:Ljava/math/BigInteger;
    :cond_84
    if-ge v3, v6, :cond_88

    .line 2178
    const/4 v7, -0x1

    goto :goto_25

    .line 2180
    :cond_88
    const/4 v7, 0x1

    goto :goto_25
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 18
    .parameter "divisor"

    .prologue
    .line 1238
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1239
    .local v9, p:Ljava/math/BigInteger;
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    .line 1242
    .local v10, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v12, v0

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v14, v0

    int-to-long v14, v14

    sub-long v1, v12, v14

    .line 1245
    .local v1, diffScale:J
    const/4 v6, 0x0

    .line 1246
    .local v6, l:I
    const/4 v4, 0x1

    .line 1247
    .local v4, i:I
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    const/4 v13, 0x1

    sub-int v7, v12, v13

    .line 1249
    .local v7, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1250
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Division by zero"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1252
    :cond_2c
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_37

    .line 1253
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v12

    .line 1293
    :goto_36
    return-object v12

    .line 1256
    :cond_37
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1257
    .local v3, gcd:Ljava/math/BigInteger;
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1258
    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1260
    invoke-virtual {v10}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 1261
    .local v5, k:I
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 1264
    :goto_4b
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v11

    .line 1265
    .local v11, quotAndRem:[Ljava/math/BigInteger;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_65

    .line 1266
    add-int/2addr v6, v4

    .line 1267
    if-ge v4, v7, :cond_61

    .line 1268
    add-int/lit8 v4, v4, 0x1

    .line 1270
    :cond_61
    const/4 v12, 0x0

    aget-object v10, v11, v12

    goto :goto_4b

    .line 1272
    :cond_65
    const/4 v12, 0x1

    if-ne v4, v12, :cond_7c

    .line 1279
    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7e

    .line 1280
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Non-terminating decimal expansion; no exact representable decimal result"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1275
    :cond_7c
    const/4 v4, 0x1

    .line 1277
    goto :goto_4b

    .line 1283
    :cond_7e
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_88

    .line 1284
    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    .line 1287
    :cond_88
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    .line 1289
    .local v8, newScale:I
    sub-int v4, v5, v6

    .line 1291
    if-lez v4, :cond_a1

    invoke-static {v9, v4}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v12

    move-object v9, v12

    .line 1293
    :goto_9b
    new-instance v12, Ljava/math/BigDecimal;

    invoke-direct {v12, v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_36

    .line 1291
    :cond_a1
    neg-int v12, v4

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    move-object v9, v12

    goto :goto_9b
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1193
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1043
    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x40

    .line 1071
    if-nez p3, :cond_c

    .line 1072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1074
    :cond_c
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1075
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_1a
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long v6, v0, v2

    .line 1079
    .local v6, diffScale:J
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_88

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_88

    .line 1080
    cmp-long v0, v6, v10

    if-nez v0, :cond_3b

    .line 1081
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1114
    :goto_3a
    return-object v0

    .line 1085
    :cond_3b
    cmp-long v0, v6, v10

    if-lez v0, :cond_62

    .line 1086
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_88

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_88

    .line 1088
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v4, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v5, v6

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3a

    .line 1094
    :cond_62
    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_88

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, v6

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_88

    .line 1096
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3a

    .line 1104
    :cond_88
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    .line 1105
    .local v8, scaledDividend:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1107
    .local v9, scaledDivisor:Ljava/math/BigInteger;
    cmp-long v0, v6, v10

    if-lez v0, :cond_9f

    .line 1109
    long-to-int v0, v6

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1114
    :cond_9a
    :goto_9a
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3a

    .line 1110
    :cond_9f
    cmp-long v0, v6, v10

    if-gez v0, :cond_9a

    .line 1112
    neg-long v0, v6

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_9a
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 22
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1318
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x2

    add-long v15, v15, v17

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v13, v15, v17

    .line 1320
    .local v13, trailingZeros:J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v15, v0

    int-to-long v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 1321
    .local v5, diffScale:J
    move-wide v10, v5

    .line 1323
    .local v10, newScale:J
    const/4 v7, 0x1

    .line 1324
    .local v7, i:I
    sget-object v15, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v15, v15

    const/16 v16, 0x1

    sub-int v9, v15, v16

    .line 1326
    .local v9, lastPow:I
    const/4 v15, 0x1

    new-array v12, v15, [Ljava/math/BigInteger;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    aput-object v16, v12, v15

    .line 1328
    .local v12, quotAndRem:[Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v15

    if-eqz v15, :cond_57

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v15

    if-nez v15, :cond_57

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v15

    if-eqz v15, :cond_5c

    .line 1330
    :cond_57
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v15

    .line 1367
    :goto_5b
    return-object v15

    .line 1332
    :cond_5c
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-lez v15, :cond_72

    .line 1334
    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-static {v13, v14}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    aput-object v16, v12, v15

    .line 1335
    add-long/2addr v10, v13

    .line 1337
    :cond_72
    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v12

    .line 1338
    const/4 v15, 0x0

    aget-object v8, v12, v15

    .line 1340
    .local v8, integerQuot:Ljava/math/BigInteger;
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v15

    if-eqz v15, :cond_ca

    .line 1342
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 1344
    .local v4, compRem:I
    sget-object v15, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v16

    add-int/lit8 v17, v4, 0x5

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 1346
    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    .line 1367
    .end local v4           #compRem:I
    :cond_ba
    new-instance v15, Ljava/math/BigDecimal;

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v16

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    goto :goto_5b

    .line 1349
    :cond_ca
    :goto_ca
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v15

    if-nez v15, :cond_ba

    .line 1350
    sget-object v15, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v15, v15, v7

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v12

    .line 1351
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v15

    if-nez v15, :cond_f3

    int-to-long v15, v7

    sub-long v15, v10, v15

    cmp-long v15, v15, v5

    if-ltz v15, :cond_f3

    .line 1353
    int-to-long v15, v7

    sub-long/2addr v10, v15

    .line 1354
    if-ge v7, v9, :cond_ef

    .line 1355
    add-int/lit8 v7, v7, 0x1

    .line 1357
    :cond_ef
    const/4 v15, 0x0

    aget-object v8, v12, v15

    goto :goto_ca

    .line 1359
    :cond_f3
    const/4 v15, 0x1

    if-eq v7, v15, :cond_ba

    .line 1362
    const/4 v7, 0x1

    goto :goto_ca
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1217
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"

    .prologue
    const/4 v2, 0x0

    .line 1604
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1606
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1607
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1608
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 6
    .parameter "divisor"
    .parameter "mc"

    .prologue
    const/4 v2, 0x0

    .line 1634
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1636
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1637
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1638
    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 18
    .parameter "divisor"

    .prologue
    .line 1386
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v7, v10

    .line 1387
    .local v7, quotAndRem:[Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v10, v0

    int-to-long v10, v10

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v12, v0

    int-to-long v12, v12

    sub-long v4, v10, v12

    .line 1388
    .local v4, newScale:J
    const-wide/16 v8, 0x0

    .line 1389
    .local v8, tempScale:J
    const/4 v1, 0x1

    .line 1390
    .local v1, i:I
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v3, v10, v11

    .line 1392
    .local v3, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1393
    new-instance v10, Ljava/lang/ArithmeticException;

    const-string v11, "Division by zero"

    invoke-direct {v10, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1395
    :cond_2f
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_47

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_54

    .line 1399
    :cond_47
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1428
    .local v2, integralValue:Ljava/math/BigInteger;
    :goto_49
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_cb

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    :goto_53
    return-object v10

    .line 1400
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_54
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_67

    .line 1401
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #integralValue:Ljava/math/BigInteger;
    goto :goto_49

    .line 1402
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_67
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_86

    .line 1403
    invoke-static {v4, v5}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1404
    .local v6, powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1405
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_49

    .line 1407
    .end local v2           #integralValue:Ljava/math/BigInteger;
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_86
    neg-long v10, v4

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1408
    .restart local v6       #powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1410
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    :goto_9b
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_c7

    .line 1411
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 1412
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_c4

    int-to-long v10, v1

    sub-long v10, v8, v10

    cmp-long v10, v10, v4

    if-ltz v10, :cond_c4

    .line 1414
    int-to-long v10, v1

    sub-long/2addr v8, v10

    .line 1415
    if-ge v1, v3, :cond_c0

    .line 1416
    add-int/lit8 v1, v1, 0x1

    .line 1418
    :cond_c0
    const/4 v10, 0x0

    aget-object v2, v7, v10

    goto :goto_9b

    .line 1420
    :cond_c4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_c9

    .line 1426
    :cond_c7
    move-wide v4, v8

    goto :goto_49

    .line 1423
    :cond_c9
    const/4 v1, 0x1

    goto :goto_9b

    .line 1428
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_cb
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v11

    invoke-direct {v10, v2, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_53
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 32
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1455
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    .line 1456
    .local v14, mcPrecision:I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v24

    sub-int v6, v23, v24

    .line 1457
    .local v6, diffPrecision:I
    sget-object v23, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v13, v23, v24

    .line 1458
    .local v13, lastPow:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v7, v23, v25

    .line 1459
    .local v7, diffScale:J
    move-wide v15, v7

    .line 1460
    .local v15, newScale:J
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v23, v7

    const-wide/16 v25, 0x1

    add-long v18, v23, v25

    .line 1461
    .local v18, quotPrecision:J
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v17, v0

    .line 1463
    .local v17, quotAndRem:[Ljava/math/BigInteger;
    if-eqz v14, :cond_52

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v23

    if-nez v23, :cond_52

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v23

    if-eqz v23, :cond_57

    .line 1464
    :cond_52
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 1539
    :goto_56
    return-object v23

    .line 1467
    :cond_57
    const-wide/16 v23, 0x0

    cmp-long v23, v18, v23

    if-gtz v23, :cond_72

    .line 1468
    const/16 v23, 0x0

    sget-object v24, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v24, v17, v23

    .line 1507
    :cond_63
    :goto_63
    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-nez v23, :cond_168

    .line 1508
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v23

    goto :goto_56

    .line 1469
    :cond_72
    const-wide/16 v23, 0x0

    cmp-long v23, v7, v23

    if-nez v23, :cond_89

    .line 1471
    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    goto :goto_63

    .line 1472
    :cond_89
    const-wide/16 v23, 0x0

    cmp-long v23, v7, v23

    if-lez v23, :cond_cf

    .line 1474
    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1477
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v23, v18

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-wide v0, v7

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 1479
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-object v24, v17, v24

    invoke-static/range {v15 .. v16}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    goto :goto_63

    .line 1483
    :cond_cf
    move-wide v0, v7

    neg-long v0, v0

    move-wide/from16 v23, v0

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    const-wide/16 v27, 0x0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 1486
    .local v9, exp:J
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-static {v9, v10}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v17

    .line 1488
    add-long/2addr v15, v9

    .line 1489
    neg-long v9, v15

    .line 1491
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-eqz v23, :cond_63

    const-wide/16 v23, 0x0

    cmp-long v23, v9, v23

    if-lez v23, :cond_63

    .line 1493
    new-instance v23, Ljava/math/BigDecimal;

    const/16 v24, 0x1

    aget-object v24, v17, v24

    invoke-direct/range {v23 .. v24}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v9

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v4, v23, v25

    .line 1495
    .local v4, compRemDiv:J
    const-wide/16 v23, 0x0

    cmp-long v23, v4, v23

    if-nez v23, :cond_15a

    .line 1497
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v17, v24

    invoke-static {v9, v10}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1499
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v4, v0

    .line 1501
    :cond_15a
    const-wide/16 v23, 0x0

    cmp-long v23, v4, v23

    if-lez v23, :cond_63

    .line 1502
    new-instance v23, Ljava/lang/ArithmeticException;

    const-string v24, "Division impossible"

    invoke-direct/range {v23 .. v24}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1510
    .end local v4           #compRemDiv:J
    .end local v9           #exp:J
    :cond_168
    const/16 v23, 0x0

    aget-object v22, v17, v23

    .line 1511
    .local v22, strippedBI:Ljava/math/BigInteger;
    new-instance v12, Ljava/math/BigDecimal;

    const/16 v23, 0x0

    aget-object v23, v17, v23

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 1512
    .local v12, integralValue:Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 1513
    .local v20, resultPrecision:J
    const/4 v11, 0x1

    .line 1515
    .local v11, i:I
    :goto_182
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v23

    if-nez v23, :cond_1d0

    .line 1516
    sget-object v23, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v23, v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v17

    .line 1517
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-nez v23, :cond_1c9

    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v20, v23

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gez v23, :cond_1b4

    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v15, v23

    cmp-long v23, v23, v7

    if-ltz v23, :cond_1c9

    .line 1520
    :cond_1b4
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v20, v20, v23

    .line 1521
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v15, v15, v23

    .line 1522
    if-ge v11, v13, :cond_1c4

    .line 1523
    add-int/lit8 v11, v11, 0x1

    .line 1525
    :cond_1c4
    const/16 v23, 0x0

    aget-object v22, v17, v23

    goto :goto_182

    .line 1527
    :cond_1c9
    const/16 v23, 0x1

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e0

    .line 1534
    :cond_1d0
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v23, v20, v23

    if-lez v23, :cond_1e2

    .line 1535
    new-instance v23, Ljava/lang/ArithmeticException;

    const-string v24, "Division impossible"

    invoke-direct/range {v23 .. v24}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1530
    :cond_1e0
    const/4 v11, 0x1

    goto :goto_182

    .line 1537
    :cond_1e2
    invoke-static/range {v15 .. v16}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 1538
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    move-object/from16 v23, v12

    .line 1539
    goto/16 :goto_56
.end method

.method public doubleValue()D
    .registers 24

    .prologue
    .line 2623
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    .line 2624
    .local v14, sign:I
    const/16 v6, 0x434

    .line 2627
    .local v6, exponent:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->bitLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fd34413509f79ffL

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v11, v17, v19

    .line 2632
    .local v11, powerOfTwo:J
    const-wide/16 v17, -0x432

    cmp-long v17, v11, v17

    if-ltz v17, :cond_32

    if-nez v14, :cond_3b

    .line 2634
    :cond_32
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    .line 2719
    :goto_3a
    return-wide v17

    .line 2635
    :cond_3b
    const-wide/16 v17, 0x401

    cmp-long v17, v11, v17

    if-lez v17, :cond_4a

    .line 2637
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto :goto_3a

    .line 2639
    :cond_4a
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 2641
    .local v9, mantissa:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    if-gtz v17, :cond_c6

    .line 2643
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2665
    :goto_75
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    .line 2666
    .local v8, lowestSetBit:I
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    const/16 v18, 0x36

    sub-int v5, v17, v18

    .line 2667
    .local v5, discardedSize:I
    if-lez v5, :cond_11a

    .line 2669
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 2670
    .local v2, bits:J
    move-wide v15, v2

    .line 2672
    .local v15, tempBits:J
    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_98

    if-lt v8, v5, :cond_a2

    :cond_98
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_a6

    .line 2674
    :cond_a2
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    .line 2686
    :cond_a6
    :goto_a6
    const-wide/high16 v17, 0x40

    and-long v17, v17, v2

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_135

    .line 2688
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2690
    add-int/2addr v6, v5

    .line 2696
    :goto_b5
    const/16 v17, 0x7fe

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_13f

    .line 2697
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto/16 :goto_3a

    .line 2646
    .end local v2           #bits:J
    .end local v5           #discardedSize:I
    .end local v8           #lowestSetBit:I
    .end local v15           #tempBits:J
    :cond_c6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 2647
    .local v10, powerOfTen:Ljava/math/BigInteger;
    const/16 v17, 0x64

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 2650
    .local v7, k:I
    if-lez v7, :cond_e4

    .line 2653
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 2654
    sub-int/2addr v6, v7

    .line 2657
    :cond_e4
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    .line 2659
    .local v13, quotAndRem:[Ljava/math/BigInteger;
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 2661
    .local v4, compRem:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v17

    add-int/lit8 v18, v4, 0x3

    mul-int v18, v18, v4

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2663
    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_75

    .line 2678
    .end local v4           #compRem:I
    .end local v7           #k:I
    .end local v10           #powerOfTen:Ljava/math/BigInteger;
    .end local v13           #quotAndRem:[Ljava/math/BigInteger;
    .restart local v5       #discardedSize:I
    .restart local v8       #lowestSetBit:I
    :cond_11a
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    move v0, v5

    neg-int v0, v0

    move/from16 v19, v0

    shl-long v2, v17, v19

    .line 2679
    .restart local v2       #bits:J
    move-wide v15, v2

    .line 2681
    .restart local v15       #tempBits:J
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_a6

    .line 2682
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    goto/16 :goto_a6

    .line 2692
    :cond_135
    const/16 v17, 0x2

    shr-long v2, v2, v17

    .line 2693
    add-int/lit8 v17, v5, 0x1

    add-int v6, v6, v17

    goto/16 :goto_b5

    .line 2698
    :cond_13f
    if-gtz v6, :cond_189

    .line 2700
    const/16 v17, -0x35

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_152

    .line 2701
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    goto/16 :goto_3a

    .line 2705
    :cond_152
    const/16 v17, 0x1

    shr-long v2, v15, v17

    .line 2706
    const-wide/16 v17, -0x1

    add-int/lit8 v19, v6, 0x3f

    ushr-long v17, v17, v19

    and-long v15, v2, v17

    .line 2707
    move v0, v6

    neg-int v0, v0

    move/from16 v17, v0

    shr-long v2, v2, v17

    .line 2709
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-eqz v17, :cond_180

    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_184

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-eqz v17, :cond_184

    if-ge v8, v5, :cond_184

    .line 2711
    :cond_180
    const-wide/16 v17, 0x1

    add-long v2, v2, v17

    .line 2713
    :cond_184
    const/4 v6, 0x0

    .line 2714
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2717
    :cond_189
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, -0x8000

    and-long v17, v17, v19

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const/16 v21, 0x34

    shl-long v19, v19, v21

    or-long v17, v17, v19

    const-wide v19, 0xfffffffffffffL

    and-long v19, v19, v2

    or-long v2, v17, v19

    .line 2719
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto/16 :goto_3a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "x"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2197
    if-ne p0, p1, :cond_6

    move v2, v7

    .line 2208
    :goto_5
    return v2

    .line 2200
    :cond_6
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_30

    .line 2201
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    .line 2202
    .local v1, x1:Ljava/math/BigDecimal;
    iget v2, v1, Ljava/math/BigDecimal;->scale:I

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_24

    iget-wide v2, v1, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p0, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    :cond_22
    move v2, v7

    goto :goto_5

    :cond_24
    iget-object v2, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_2e
    move v2, v6

    goto :goto_5

    .end local v1           #x1:Ljava/math/BigDecimal;
    :cond_30
    move v2, v6

    .line 2208
    goto :goto_5
.end method

.method public floatValue()F
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2588
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    int-to-float v0, v3

    .line 2589
    .local v0, floatResult:F
    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v3, v3

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    int-to-double v5, v5

    const-wide v7, 0x3fd34413509f79ffL

    div-double/2addr v5, v7

    double-to-long v5, v5

    sub-long v1, v3, v5

    .line 2590
    .local v1, powerOfTwo:J
    const-wide/16 v3, -0x95

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1f

    cmpl-float v3, v0, v9

    if-nez v3, :cond_21

    .line 2592
    :cond_1f
    mul-float/2addr v0, v9

    .line 2599
    :goto_20
    return v0

    .line 2593
    :cond_21
    const-wide/16 v3, 0x81

    cmp-long v3, v1, v3

    if-lez v3, :cond_2b

    .line 2595
    const/high16 v3, 0x7f80

    mul-float/2addr v0, v3

    goto :goto_20

    .line 2597
    :cond_2b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_20
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 2244
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    if-eqz v0, :cond_9

    .line 2245
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2254
    :goto_8
    return v0

    .line 2247
    :cond_9
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2f

    .line 2248
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2249
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x21

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2250
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2251
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8

    .line 2253
    :cond_2f
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2254
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 2521
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x20

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method public intValueExact()I
    .registers 3

    .prologue
    .line 2536
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 2490
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_11

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_10
.end method

.method public longValueExact()J
    .registers 3

    .prologue
    .line 2504
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "val"

    .prologue
    .line 2234
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    move-object v0, p1

    goto :goto_7
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "val"

    .prologue
    .line 2221
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    move-object v0, p1

    goto :goto_7
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .registers 6
    .parameter "n"

    .prologue
    .line 2019
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .registers 6
    .parameter "n"

    .prologue
    .line 2061
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 8
    .parameter "multiplicand"

    .prologue
    .line 984
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 986
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 987
    :cond_14
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 994
    :goto_18
    return-object v2

    .line 991
    :cond_19
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_30

    .line 992
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 994
    :cond_30
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "multiplicand"
    .parameter "mc"

    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1014
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1015
    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .registers 5

    .prologue
    const/16 v1, 0x3f

    .line 1759
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-lt v0, v1, :cond_12

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1760
    :cond_12
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1762
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_1b
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1775
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1776
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1777
    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .registers 1

    .prologue
    .line 1788
    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1800
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .registers 8
    .parameter "n"

    .prologue
    .line 1657
    if-nez p1, :cond_5

    .line 1658
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1665
    :goto_4
    return-object v2

    .line 1660
    :cond_5
    if-ltz p1, :cond_c

    const v2, 0x3b9ac9ff

    if-le p1, v2, :cond_14

    .line 1661
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Invalid operation"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1663
    :cond_14
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 1665
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_4

    :cond_25
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_4
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .parameter "n"
    .parameter "mc"

    .prologue
    .line 1686
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1687
    .local v2, m:I
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 1688
    .local v3, mcPrecision:I
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x1

    .line 1691
    .local v1, elength:I
    move-object v4, p2

    .line 1694
    .local v4, newPrecision:Ljava/math/MathContext;
    if-eqz p1, :cond_1b

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_20

    if-lez p1, :cond_20

    .line 1695
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v6

    .line 1722
    :goto_1f
    return-object v6

    .line 1697
    :cond_20
    const v6, 0x3b9ac9ff

    if-gt v2, v6, :cond_2d

    if-nez v3, :cond_29

    if-ltz p1, :cond_2d

    :cond_29
    if-lez v3, :cond_35

    if-le v1, v3, :cond_35

    .line 1699
    :cond_2d
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "Invalid operation"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1701
    :cond_35
    if-lez v3, :cond_44

    .line 1702
    new-instance v4, Ljava/math/MathContext;

    .end local v4           #newPrecision:Ljava/math/MathContext;
    add-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1706
    .restart local v4       #newPrecision:Ljava/math/MathContext;
    :cond_44
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1707
    .local v0, accum:Ljava/math/BigDecimal;
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1709
    .local v5, oneBitMask:I
    :goto_4e
    if-lez v5, :cond_5f

    .line 1710
    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1711
    and-int v6, v2, v5

    if-ne v6, v5, :cond_5c

    .line 1712
    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1714
    :cond_5c
    shr-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 1717
    :cond_5f
    if-gez p1, :cond_67

    .line 1718
    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1721
    :cond_67
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    move-object v6, v0

    .line 1722
    goto :goto_1f
.end method

.method public precision()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1843
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v2, :cond_8

    .line 1844
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    .line 1861
    :goto_7
    return v2

    .line 1847
    :cond_8
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 1849
    .local v0, bitLength:I
    if-nez v0, :cond_11

    .line 1850
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 1861
    :goto_e
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_7

    .line 1851
    :cond_11
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1e

    .line 1852
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->decimalDigitsInLong(J)I

    move-result v2

    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_e

    .line 1854
    :cond_1e
    sub-int v2, v0, v3

    int-to-double v2, v2

    const-wide v4, 0x3fd34413509f79ffL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 1856
    .local v1, decimalDigits:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 1857
    add-int/lit8 v1, v1, 0x1

    .line 1859
    :cond_3f
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_e
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "divisor"

    .prologue
    .line 1557
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1583
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .parameter "mc"

    .prologue
    .line 1903
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1905
    .local v0, thisBD:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1906
    return-object v0
.end method

.method public scale()I
    .registers 2

    .prologue
    .line 1830
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .registers 8
    .parameter "n"

    .prologue
    .line 2077
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2078
    .local v0, newScale:J
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_24

    .line 2080
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 2081
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2085
    :goto_18
    return-object v2

    .line 2083
    :cond_19
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 2085
    :cond_24
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .registers 3
    .parameter "newScale"

    .prologue
    .line 1999
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .registers 4
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    .line 1979
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 13
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v4, 0x40

    .line 1932
    if-nez p2, :cond_c

    .line 1933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1935
    :cond_c
    int-to-long v0, p1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    .line 1937
    .local v6, diffScale:J
    cmp-long v0, v6, v8

    if-nez v0, :cond_18

    move-object v0, p0

    .line 1953
    :goto_17
    return-object v0

    .line 1940
    :cond_18
    cmp-long v0, v6, v8

    if-lez v0, :cond_4b

    .line 1942
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3b

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_3b

    .line 1944
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v3, v6

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17

    .line 1946
    :cond_3b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    long-to-int v2, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_17

    .line 1950
    :cond_4b
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_67

    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_67

    .line 1951
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17

    .line 1953
    :cond_67
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    neg-long v1, v6

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17
.end method

.method public shortValueExact()S
    .registers 3

    .prologue
    .line 2550
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public signum()I
    .registers 3

    .prologue
    .line 1810
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_d

    .line 1811
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 1813
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    goto :goto_c
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2098
    const/4 v0, 0x1

    .line 2099
    .local v0, i:I
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v6, v6

    sub-int v1, v6, v8

    .line 2100
    .local v1, lastPow:I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v6

    .line 2102
    .local v2, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v6, p0

    .line 2133
    :goto_12
    return-object v6

    .line 2108
    :cond_13
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2112
    .local v5, strippedBI:Ljava/math/BigInteger;
    :goto_17
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_38

    .line 2114
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 2116
    .local v4, quotAndRem:[Ljava/math/BigInteger;
    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_36

    .line 2118
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 2119
    if-ge v0, v1, :cond_33

    .line 2121
    add-int/lit8 v0, v0, 0x1

    .line 2123
    :cond_33
    aget-object v5, v4, v9

    goto :goto_17

    .line 2125
    :cond_36
    if-ne v0, v8, :cond_42

    .line 2133
    .end local v4           #quotAndRem:[Ljava/math/BigInteger;
    :cond_38
    new-instance v6, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v7

    invoke-direct {v6, v5, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_12

    .line 2130
    .restart local v4       #quotAndRem:[Ljava/math/BigInteger;
    :cond_42
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .parameter "subtrahend"

    .prologue
    const/16 v4, 0x40

    .line 888
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 890
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 891
    if-gtz v0, :cond_15

    .line 892
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    .line 923
    :goto_14
    return-object v1

    .line 894
    :cond_15
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_27

    move-object v1, p0

    .line 895
    goto :goto_14

    .line 897
    :cond_1d
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 898
    if-ltz v0, :cond_27

    move-object v1, p0

    .line 899
    goto :goto_14

    .line 903
    :cond_27
    if-nez v0, :cond_55

    .line 905
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_41

    .line 906
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_14

    .line 908
    :cond_41
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_14

    .line 909
    :cond_55
    if-lez v0, :cond_98

    .line 911
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_7e

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_7e

    .line 913
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, v0

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_14

    .line 915
    :cond_7e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_14

    .line 918
    :cond_98
    neg-int v0, v0

    .line 919
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_c1

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_c1

    .line 921
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v3, v3, v0

    mul-long/2addr v1, v3

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_14

    .line 923
    :cond_c1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_14
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 13
    .parameter "subtrahend"
    .parameter "mc"

    .prologue
    const/16 v9, 0xa

    .line 941
    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 946
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    if-nez v5, :cond_25

    .line 948
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 969
    :goto_24
    return-object v5

    .line 951
    :cond_25
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_82

    .line 953
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v6

    if-ge v5, v6, :cond_82

    .line 954
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 955
    .local v4, thisSignum:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-eq v4, v5, :cond_65

    .line 956
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 964
    .local v3, tempBI:Ljava/math/BigInteger;
    :goto_57
    new-instance v2, Ljava/math/BigDecimal;

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 965
    .local v2, leftOperand:Ljava/math/BigDecimal;
    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24

    .line 959
    .end local v2           #leftOperand:Ljava/math/BigDecimal;
    .end local v3           #tempBI:Ljava/math/BigInteger;
    :cond_65
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 960
    .restart local v3       #tempBI:Ljava/math/BigInteger;
    invoke-static {v3, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_57

    .line 969
    .end local v3           #tempBI:Ljava/math/BigInteger;
    .end local v4           #thisSignum:I
    :cond_82
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 2438
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2439
    :cond_a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 2443
    :goto_e
    return-object v0

    .line 2440
    :cond_f
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_24

    .line 2441
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e

    .line 2443
    :cond_24
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 2457
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v1, :cond_a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2458
    :cond_a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 2472
    :goto_e
    return-object v1

    .line 2459
    :cond_f
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v1, :cond_24

    .line 2460
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_e

    .line 2464
    :cond_24
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v2

    if-gt v1, v2, :cond_38

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-le v1, v2, :cond_40

    .line 2465
    :cond_38
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2467
    :cond_40
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 2468
    .local v0, integerAndFraction:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_60

    .line 2470
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2472
    :cond_60
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e
.end method

.method public toEngineeringString()Ljava/lang/String;
    .registers 16

    .prologue
    .line 2322
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2323
    .local v7, intString:Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v10, :cond_e

    move-object v10, v7

    .line 2372
    :goto_d
    return-object v10

    .line 2326
    :cond_e
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gez v10, :cond_4a

    const/4 v10, 0x2

    move v0, v10

    .line 2327
    .local v0, begin:I
    :goto_1a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2328
    .local v2, end:I
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    neg-long v10, v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v0

    sub-long v4, v10, v12

    .line 2329
    .local v4, exponent:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v9, result:Ljava/lang/StringBuilder;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v10, :cond_62

    const-wide/16 v10, -0x6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_62

    .line 2332
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4d

    .line 2333
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v10, v2, v10

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2372
    :cond_45
    :goto_45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 2326
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v4           #exponent:J
    .end local v9           #result:Ljava/lang/StringBuilder;
    :cond_4a
    const/4 v10, 0x1

    move v0, v10

    goto :goto_1a

    .line 2335
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v4       #exponent:J
    .restart local v9       #result:Ljava/lang/StringBuilder;
    :cond_4d
    const/4 v10, 0x1

    sub-int v10, v0, v10

    const-string v11, "0."

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    add-int/lit8 v10, v0, 0x1

    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v12, 0x0

    long-to-int v13, v4

    neg-int v13, v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2339
    :cond_62
    sub-int v1, v2, v0

    .line 2340
    .local v1, delta:I
    const-wide/16 v10, 0x3

    rem-long v10, v4, v10

    long-to-int v8, v10

    .line 2342
    .local v8, rem:I
    if-eqz v8, :cond_9c

    .line 2344
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_92

    .line 2346
    if-gez v8, :cond_8e

    neg-int v10, v8

    move v8, v10

    .line 2347
    :goto_79
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 2354
    :goto_7b
    const/4 v10, 0x3

    if-ge v1, v10, :cond_9c

    .line 2355
    sub-int v6, v8, v1

    .local v6, i:I
    move v3, v2

    .end local v2           #end:I
    .local v3, end:I
    :goto_81
    if-lez v6, :cond_9b

    .line 2356
    add-int/lit8 v2, v3, 0x1

    .end local v3           #end:I
    .restart local v2       #end:I
    const/16 v10, 0x30

    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2355
    add-int/lit8 v6, v6, -0x1

    move v3, v2

    .end local v2           #end:I
    .restart local v3       #end:I
    goto :goto_81

    .line 2346
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_8e
    const/4 v10, 0x3

    sub-int/2addr v10, v8

    move v8, v10

    goto :goto_79

    .line 2350
    :cond_92
    if-gez v8, :cond_97

    add-int/lit8 v10, v8, 0x3

    move v8, v10

    .line 2351
    :cond_97
    int-to-long v10, v8

    sub-long/2addr v4, v10

    .line 2352
    add-int/2addr v0, v8

    goto :goto_7b

    .end local v2           #end:I
    .restart local v3       #end:I
    .restart local v6       #i:I
    :cond_9b
    move v2, v3

    .line 2360
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_9c
    sub-int v10, v2, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a8

    .line 2361
    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2362
    add-int/lit8 v2, v2, 0x1

    .line 2364
    :cond_a8
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_45

    .line 2365
    const/16 v10, 0x45

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2366
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_c0

    .line 2367
    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x2b

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2369
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_45
.end method

.method public toPlainString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2391
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2392
    .local v2, intStr:Ljava/lang/String;
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v4, :cond_18

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v4, :cond_1a

    :cond_18
    move-object v4, v2

    .line 2428
    :goto_19
    return-object v4

    .line 2395
    :cond_1a
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-gez v4, :cond_5c

    move v0, v7

    .line 2396
    .local v0, begin:I
    :goto_21
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    .line 2398
    .local v1, delta:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2400
    .local v3, result:Ljava/lang/StringBuilder;
    if-ne v0, v7, :cond_3c

    .line 2402
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2404
    :cond_3c
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_85

    .line 2405
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v1, v4

    .line 2406
    if-ltz v1, :cond_6f

    .line 2407
    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    :goto_4d
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    if-le v1, v4, :cond_5e

    .line 2410
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2409
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    sub-int/2addr v1, v4

    goto :goto_4d

    .end local v0           #begin:I
    .end local v1           #delta:I
    .end local v3           #result:Ljava/lang/StringBuilder;
    :cond_5c
    move v0, v6

    .line 2395
    goto :goto_21

    .line 2412
    .restart local v0       #begin:I
    .restart local v1       #delta:I
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_5e
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2413
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    :goto_6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    .line 2415
    :cond_6f
    sub-int v1, v0, v1

    .line 2416
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2418
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 2421
    :cond_85
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    :goto_8c
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    neg-int v4, v4

    if-ge v1, v4, :cond_9c

    .line 2424
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2423
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    add-int/2addr v1, v4

    goto :goto_8c

    .line 2426
    :cond_9c
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    neg-int v5, v1

    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6a
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x2e

    const/4 v10, 0x1

    .line 2270
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 2271
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2306
    :goto_b
    return-object v6

    .line 2273
    :cond_c
    iget v6, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v7, 0x20

    if-ge v6, v7, :cond_1f

    .line 2274
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2275
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_b

    .line 2277
    :cond_1f
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2278
    .local v4, intString:Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v6, :cond_2d

    move-object v6, v4

    .line 2279
    goto :goto_b

    .line 2281
    :cond_2d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_6c

    const/4 v6, 0x2

    move v0, v6

    .line 2282
    .local v0, begin:I
    :goto_39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2283
    .local v1, end:I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v6, v6

    neg-long v6, v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    int-to-long v8, v0

    sub-long v2, v6, v8

    .line 2284
    .local v2, exponent:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2286
    .local v5, result:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v6, :cond_81

    const-wide/16 v6, -0x6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_81

    .line 2288
    cmp-long v6, v2, v12

    if-ltz v6, :cond_6e

    .line 2289
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2305
    :goto_63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2306
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_b

    .end local v0           #begin:I
    .end local v1           #end:I
    .end local v2           #exponent:J
    .end local v5           #result:Ljava/lang/StringBuilder;
    :cond_6c
    move v0, v10

    .line 2281
    goto :goto_39

    .line 2291
    .restart local v0       #begin:I
    .restart local v1       #end:I
    .restart local v2       #exponent:J
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_6e
    sub-int v6, v0, v10

    const-string v7, "0."

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    add-int/lit8 v6, v0, 0x1

    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v8, 0x0

    long-to-int v9, v2

    neg-int v9, v9

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 2295
    :cond_81
    sub-int v6, v1, v0

    if-lt v6, v10, :cond_8a

    .line 2296
    invoke-virtual {v5, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2297
    add-int/lit8 v1, v1, 0x1

    .line 2299
    :cond_8a
    const/16 v6, 0x45

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2300
    cmp-long v6, v2, v12

    if-lez v6, :cond_9a

    .line 2301
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2b

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2303
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63
.end method

.method public ulp()Ljava/math/BigDecimal;
    .registers 4

    .prologue
    .line 2738
    const-wide/16 v0, 0x1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1881
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
