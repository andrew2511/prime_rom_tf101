.class public Lcom/mobipocket/common/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"


# static fields
.field private static final ADDRESS_BITS_PER_UNIT:I = 0x6

.field private static final BITS_PER_UNIT:I = 0x40

.field private static final BIT_INDEX_MASK:I = 0x3f

.field private static final WORD_MASK:J = -0x1L

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L

.field private static final trailingZeroTable:[B


# instance fields
.field private bits:[J

.field private transient unitsInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    return-void

    :array_0
    .array-data 0x1
        0xe7t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x7t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x3t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/mobipocket/common/util/BitSet;-><init>(I)V

    .line 107
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "nbits"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 120
    if-gez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nbits < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    .line 124
    return-void
.end method

.method private static bit(I)J
    .locals 3
    .parameter "bitIndex"

    .prologue
    .line 84
    const-wide/16 v0, 0x1

    and-int/lit8 v2, p0, 0x3f

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private static bitCount(J)I
    .locals 6
    .parameter "val"

    .prologue
    const-wide v4, 0x3333333333333333L

    .line 754
    const-wide v0, -0x5555555555555556L

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 755
    and-long v0, p0, v4

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    and-long/2addr v2, v4

    add-long p0, v0, v2

    .line 756
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    add-long/2addr v0, p0

    const-wide v2, 0xf0f0f0f0f0f0f0fL

    and-long p0, v0, v2

    .line 757
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 758
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 759
    long-to-int v0, p0

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static bitLen(I)I
    .locals 6
    .parameter "w"

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 685
    const v0, 0x8000

    if-ge p0, v0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    if-ge p0, v4, :cond_4

    if-ge p0, v2, :cond_2

    if-ge p0, v1, :cond_1

    if-gez p0, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ge p0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    if-ge p0, v5, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/16 v0, 0x40

    if-ge p0, v0, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    const/16 v0, 0x800

    if-ge p0, v0, :cond_c

    const/16 v0, 0x200

    if-ge p0, v0, :cond_a

    const/16 v0, 0x100

    if-ge p0, v0, :cond_9

    move v0, v4

    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const/16 v0, 0x400

    if-ge p0, v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    const/16 v0, 0x2000

    if-ge p0, v0, :cond_e

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    const/16 v0, 0x4000

    if-ge p0, v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    const/16 v0, 0xf

    goto :goto_0

    :cond_10
    const/high16 v0, 0x80

    if-ge p0, v0, :cond_18

    const/high16 v0, 0x8

    if-ge p0, v0, :cond_14

    const/high16 v0, 0x2

    if-ge p0, v0, :cond_12

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_11

    move v0, v5

    goto :goto_0

    :cond_11
    const/16 v0, 0x11

    goto :goto_0

    :cond_12
    const/high16 v0, 0x4

    if-ge p0, v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    :cond_13
    const/16 v0, 0x13

    goto :goto_0

    :cond_14
    const/high16 v0, 0x20

    if-ge p0, v0, :cond_16

    const/high16 v0, 0x10

    if-ge p0, v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    :cond_15
    const/16 v0, 0x15

    goto :goto_0

    :cond_16
    const/high16 v0, 0x40

    if-ge p0, v0, :cond_17

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_18
    const/high16 v0, 0x800

    if-ge p0, v0, :cond_1c

    const/high16 v0, 0x200

    if-ge p0, v0, :cond_1a

    const/high16 v0, 0x100

    if-ge p0, v0, :cond_19

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_1a
    const/high16 v0, 0x400

    if-ge p0, v0, :cond_1b

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_1c
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_1e

    const/high16 v0, 0x1000

    if-ge p0, v0, :cond_1d

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_1e
    const/high16 v0, 0x4000

    if-ge p0, v0, :cond_1f

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x1f

    goto/16 :goto_0
.end method

.method private static bitsLeftOf(I)J
    .locals 2
    .parameter "x"

    .prologue
    .line 241
    const-wide/16 v0, -0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method private static bitsRightOf(I)J
    .locals 3
    .parameter "x"

    .prologue
    .line 233
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    const/16 v2, 0x40

    sub-int/2addr v2, p0

    ushr-long/2addr v0, v2

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 5
    .parameter "unitsRequired"

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 134
    .local v1, request:I
    new-array v0, v1, [J

    .line 135
    .local v0, newBits:[J
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    .line 138
    .end local v0           #newBits:[J
    .end local v1           #request:I
    :cond_0
    return-void
.end method

.method private getBits(I)J
    .locals 2
    .parameter "j"

    .prologue
    .line 528
    iget v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v0, v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private recalculateUnitsInUse()V
    .locals 5

    .prologue
    .line 95
    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 100
    return-void

    .line 95
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static trailingZeroCnt(J)I
    .locals 3
    .parameter "val"

    .prologue
    .line 572
    long-to-int v1, p0

    and-int/lit16 v0, v1, 0xff

    .line 573
    .local v0, byteVal:I
    if-eqz v0, :cond_0

    .line 574
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    .line 601
    :goto_0
    return v1

    .line 576
    :cond_0
    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 577
    if-eqz v0, :cond_1

    .line 578
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 580
    :cond_1
    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 581
    if-eqz v0, :cond_2

    .line 582
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 584
    :cond_2
    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 585
    if-eqz v0, :cond_3

    .line 586
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x18

    goto :goto_0

    .line 588
    :cond_3
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 589
    if-eqz v0, :cond_4

    .line 590
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 592
    :cond_4
    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 593
    if-eqz v0, :cond_5

    .line 594
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x28

    goto :goto_0

    .line 596
    :cond_5
    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 597
    if-eqz v0, :cond_6

    .line 598
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x30

    goto :goto_0

    .line 600
    :cond_6
    const/16 v1, 0x38

    ushr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v0, v1, 0xff

    .line 601
    sget-object v1, Lcom/mobipocket/common/util/BitSet;->trailingZeroTable:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x38

    goto :goto_0
.end method

.method private static unitIndex(I)I
    .locals 1
    .parameter "bitIndex"

    .prologue
    .line 77
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method


# virtual methods
.method public and(Lcom/mobipocket/common/util/BitSet;)V
    .locals 9
    .parameter "set"

    .prologue
    const-wide/16 v7, 0x0

    .line 772
    if-ne p0, p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 777
    .local v1, oldUnitsInUse:I
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v3, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 779
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v0, v2, :cond_2

    .line 780
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 784
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aput-wide v7, v2, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 787
    :cond_3
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-wide v2, v2, v3

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0
.end method

.method public andNot(Lcom/mobipocket/common/util/BitSet;)V
    .locals 9
    .parameter "set"

    .prologue
    .line 867
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v3, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 870
    .local v1, unitsInCommon:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 871
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    .line 875
    return-void
.end method

.method public cardinality()I
    .locals 4

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v0, v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/mobipocket/common/util/BitSet;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_0
    return v1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 441
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 8
    .parameter "bitIndex"

    .prologue
    .line 364
    if-gez p1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 368
    .local v0, unitIndex:I
    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lt v0, v1, :cond_2

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 372
    iget-object v1, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v1, v1, v2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0
.end method

.method public clear(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 388
    if-gez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    if-gez p2, :cond_1

    .line 391
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    if-le p1, p2, :cond_2

    .line 393
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_2
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 397
    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lt v0, v1, :cond_4

    .line 433
    :cond_3
    :goto_0
    return-void

    .line 399
    :cond_4
    invoke-static {p2}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 401
    if-ne v0, v1, :cond_5

    .line 404
    and-int/lit8 v1, p2, 0x3f

    shl-long v1, v4, v1

    and-int/lit8 v3, p1, 0x3f

    shl-long v3, v4, v3

    sub-long/2addr v1, v3

    .line 406
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    xor-long/2addr v1, v8

    and-long/2addr v1, v4

    aput-wide v1, v3, v0

    .line 407
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v1, v7

    aget-wide v0, v0, v1

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0

    .line 414
    :cond_5
    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Lcom/mobipocket/common/util/BitSet;->bitsLeftOf(I)J

    move-result-wide v2

    .line 415
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v8

    and-long/2addr v2, v5

    aput-wide v2, v4, v0

    .line 418
    sub-int v2, v1, v0

    if-le v2, v7, :cond_7

    .line 419
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_7

    .line 420
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v0, v2, :cond_6

    .line 421
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aput-wide v10, v2, v0

    .line 419
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_7
    iget v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v1, v0, :cond_8

    .line 427
    and-int/lit8 v0, p2, 0x3f

    invoke-static {v0}, Lcom/mobipocket/common/util/BitSet;->bitsRightOf(I)J

    move-result-wide v2

    .line 428
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v8

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 431
    :cond_8
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v1, v7

    aget-wide v0, v0, v1

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 432
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .parameter "obj"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 938
    instance-of v4, p1, Lcom/mobipocket/common/util/BitSet;

    if-nez v4, :cond_0

    move v4, v8

    .line 962
    :goto_0
    return v4

    .line 940
    :cond_0
    if-ne p0, p1, :cond_1

    move v4, v9

    .line 941
    goto :goto_0

    .line 943
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/util/BitSet;

    move-object v3, v0

    .line 944
    .local v3, set:Lcom/mobipocket/common/util/BitSet;
    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v5, v3, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 947
    .local v2, minUnitsInUse:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 948
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    iget-object v6, v3, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v6, v6, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move v4, v8

    .line 949
    goto :goto_0

    .line 947
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 952
    :cond_3
    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-le v4, v2, :cond_5

    .line 953
    move v1, v2

    :goto_2
    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v1, v4, :cond_7

    .line 954
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    move v4, v8

    .line 955
    goto :goto_0

    .line 953
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 957
    :cond_5
    move v1, v2

    :goto_3
    iget v4, v3, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v1, v4, :cond_7

    .line 958
    iget-object v4, v3, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_6

    move v4, v8

    .line 959
    goto :goto_0

    .line 957
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v4, v9

    .line 962
    goto :goto_0
.end method

.method public flip(I)V
    .locals 7
    .parameter "bitIndex"

    .prologue
    .line 149
    if-gez p1, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitIndex < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 153
    .local v0, unitIndex:I
    add-int/lit8 v1, v0, 0x1

    .line 155
    .local v1, unitsRequired:I
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v2, v1, :cond_2

    .line 156
    invoke-direct {p0, v1}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 157
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 158
    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 161
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0
.end method

.method public flip(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 179
    if-gez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    if-gez p2, :cond_1

    .line 182
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    if-le p1, p2, :cond_2

    .line 184
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    invoke-static {p2}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 189
    add-int/lit8 v1, v0, 0x1

    .line 191
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v2, v1, :cond_3

    .line 192
    invoke-direct {p0, v1}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 193
    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 196
    :cond_3
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 197
    if-ne v1, v0, :cond_5

    .line 200
    and-int/lit8 v0, p2, 0x3f

    shl-long v2, v4, v0

    and-int/lit8 v0, p1, 0x3f

    shl-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 202
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 203
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v1, v7

    aget-wide v0, v0, v1

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 204
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    .line 226
    :cond_4
    :goto_0
    return-void

    .line 210
    :cond_5
    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Lcom/mobipocket/common/util/BitSet;->bitsLeftOf(I)J

    move-result-wide v2

    .line 211
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    xor-long/2addr v2, v5

    aput-wide v2, v4, v1

    .line 214
    sub-int v2, v0, v1

    if-le v2, v7, :cond_6

    .line 215
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_6

    .line 216
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_6
    and-int/lit8 v1, p2, 0x3f

    invoke-static {v1}, Lcom/mobipocket/common/util/BitSet;->bitsRightOf(I)J

    move-result-wide v1

    .line 221
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    xor-long/2addr v1, v4

    aput-wide v1, v3, v0

    .line 224
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v1, v7

    aget-wide v0, v0, v1

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 225
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    goto :goto_0
.end method

.method public get(II)Lcom/mobipocket/common/util/BitSet;
    .locals 19
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 480
    if-gez p1, :cond_0

    .line 481
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fromIndex < 0: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 482
    :cond_0
    if-gez p2, :cond_1

    .line 483
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "toIndex < 0: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 484
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 485
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fromIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > toIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 489
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/util/BitSet;->length()I

    move-result v12

    move v0, v12

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 490
    :cond_3
    new-instance v12, Lcom/mobipocket/common/util/BitSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/mobipocket/common/util/BitSet;-><init>(I)V

    .line 520
    :goto_0
    return-object v12

    .line 493
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/util/BitSet;->length()I

    move-result v12

    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/util/BitSet;->length()I

    move-result p2

    .line 496
    :cond_5
    new-instance v4, Lcom/mobipocket/common/util/BitSet;

    sub-int v12, p2, p1

    invoke-direct {v4, v12}, Lcom/mobipocket/common/util/BitSet;-><init>(I)V

    .line 497
    .local v4, result:Lcom/mobipocket/common/util/BitSet;
    and-int/lit8 v8, p1, 0x3f

    .line 498
    .local v8, startBitIndex:I
    and-int/lit8 v2, p2, 0x3f

    .line 499
    .local v2, endBitIndex:I
    sub-int v12, p2, p1

    add-int/lit8 v12, v12, 0x3f

    div-int/lit8 v11, v12, 0x40

    .line 500
    .local v11, targetWords:I
    invoke-static/range {p2 .. p2}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v7, v12, 0x1

    .line 501
    .local v7, sourceWords:I
    const/16 v12, 0x40

    sub-int v3, v12, v8

    .line 502
    .local v3, inverseIndex:I
    const/4 v9, 0x0

    .line 503
    .local v9, targetIndex:I
    invoke-static/range {p1 .. p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v5

    .local v5, sourceIndex:I
    move v6, v5

    .end local v5           #sourceIndex:I
    .local v6, sourceIndex:I
    move v10, v9

    .line 506
    .end local v9           #targetIndex:I
    .local v10, targetIndex:I
    :goto_1
    const/4 v12, 0x1

    sub-int v12, v11, v12

    if-ge v10, v12, :cond_7

    .line 507
    iget-object v12, v4, Lcom/mobipocket/common/util/BitSet;->bits:[J

    add-int/lit8 v9, v10, 0x1

    .end local v10           #targetIndex:I
    .restart local v9       #targetIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    move-object v13, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #sourceIndex:I
    .restart local v5       #sourceIndex:I
    aget-wide v13, v13, v6

    ushr-long/2addr v13, v8

    const/16 v15, 0x40

    if-ne v3, v15, :cond_6

    const-wide/16 v15, 0x0

    :goto_2
    or-long/2addr v13, v15

    aput-wide v13, v12, v10

    move v6, v5

    .end local v5           #sourceIndex:I
    .restart local v6       #sourceIndex:I
    move v10, v9

    .end local v9           #targetIndex:I
    .restart local v10       #targetIndex:I
    goto :goto_1

    .end local v6           #sourceIndex:I
    .end local v10           #targetIndex:I
    .restart local v5       #sourceIndex:I
    .restart local v9       #targetIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    move-object v15, v0

    aget-wide v15, v15, v5

    shl-long/2addr v15, v3

    goto :goto_2

    .line 512
    .end local v5           #sourceIndex:I
    .end local v9           #targetIndex:I
    .restart local v6       #sourceIndex:I
    .restart local v10       #targetIndex:I
    :cond_7
    iget-object v12, v4, Lcom/mobipocket/common/util/BitSet;->bits:[J

    if-ne v7, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    move-object v13, v0

    aget-wide v13, v13, v6

    invoke-static {v2}, Lcom/mobipocket/common/util/BitSet;->bitsRightOf(I)J

    move-result-wide v15

    and-long/2addr v13, v15

    ushr-long/2addr v13, v8

    move v5, v6

    .end local v6           #sourceIndex:I
    .restart local v5       #sourceIndex:I
    :goto_3
    aput-wide v13, v12, v10

    .line 518
    iput v11, v4, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 519
    invoke-direct {v4}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    move-object v12, v4

    .line 520
    goto :goto_0

    .line 512
    .end local v5           #sourceIndex:I
    .restart local v6       #sourceIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    move-object v13, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #sourceIndex:I
    .restart local v5       #sourceIndex:I
    aget-wide v13, v13, v6

    ushr-long/2addr v13, v8

    const/16 v15, 0x40

    if-ne v3, v15, :cond_9

    const-wide/16 v15, 0x0

    :goto_4
    or-long/2addr v13, v15

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/mobipocket/common/util/BitSet;->getBits(I)J

    move-result-wide v15

    invoke-static {v2}, Lcom/mobipocket/common/util/BitSet;->bitsRightOf(I)J

    move-result-wide v17

    and-long v15, v15, v17

    shl-long/2addr v15, v3

    goto :goto_4
.end method

.method public get(I)Z
    .locals 6
    .parameter "bitIndex"

    .prologue
    .line 456
    if-gez p1, :cond_0

    .line 457
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitIndex < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_0
    const/4 v0, 0x0

    .line 460
    .local v0, result:Z
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 461
    .local v1, unitIndex:I
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v1, v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v2, v2, v1

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 464
    :cond_1
    :goto_0
    return v0

    .line 462
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 904
    const-wide/16 v0, 0x4d2

    .line 905
    .local v0, h:J
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    array-length v2, v3

    .local v2, i:I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 906
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v3, v2

    add-int/lit8 v5, v2, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    xor-long/2addr v0, v3

    goto :goto_0

    .line 908
    :cond_0
    const/16 v3, 0x20

    shr-long v3, v0, v3

    xor-long/2addr v3, v0

    long-to-int v3, v3

    return v3
.end method

.method public intersects(Lcom/mobipocket/common/util/BitSet;)Z
    .locals 6
    .parameter "set"

    .prologue
    const/4 v5, 0x1

    .line 725
    iget v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v2, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v0, v1, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 726
    iget-object v1, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    iget-object v3, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    move v1, v5

    .line 728
    :goto_1
    return v1

    .line 725
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 728
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 670
    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-nez v3, :cond_0

    .line 671
    const/4 v3, 0x0

    .line 675
    :goto_0
    return v3

    .line 673
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v4, v5

    aget-wide v1, v3, v4

    .line 674
    .local v1, highestUnit:J
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v0, v3

    .line 675
    .local v0, highPart:I
    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    sub-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x40

    if-nez v0, :cond_1

    long-to-int v4, v1

    invoke-static {v4}, Lcom/mobipocket/common/util/BitSet;->bitLen(I)I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/mobipocket/common/util/BitSet;->bitLen(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    goto :goto_1
.end method

.method public nextClearBit(I)I
    .locals 8
    .parameter "fromIndex"

    .prologue
    const-wide/16 v6, -0x1

    .line 636
    if-gez p1, :cond_0

    .line 637
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromIndex < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 640
    .local v1, u:I
    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lt v1, v4, :cond_1

    move v4, p1

    .line 658
    :goto_0
    return v4

    .line 642
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    .line 643
    .local v0, testIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    shr-long v2, v4, v0

    .line 645
    .local v2, unit:J
    shr-long v4, v6, v0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 646
    const/4 v0, 0x0

    .line 648
    :cond_2
    :goto_1
    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    .line 649
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v4, v1

    goto :goto_1

    .line 651
    :cond_3
    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    .line 652
    invoke-virtual {p0}, Lcom/mobipocket/common/util/BitSet;->length()I

    move-result v4

    goto :goto_0

    .line 654
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    .line 655
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v0

    goto :goto_0

    .line 657
    :cond_5
    xor-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/mobipocket/common/util/BitSet;->trailingZeroCnt(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 658
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v0

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 9
    .parameter "fromIndex"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 549
    if-gez p1, :cond_0

    .line 550
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromIndex < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 551
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 552
    .local v1, u:I
    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lt v1, v4, :cond_1

    move v4, v8

    .line 567
    :goto_0
    return v4

    .line 554
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    .line 555
    .local v0, testIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    shr-long v2, v4, v0

    .line 557
    .local v2, unit:J
    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    .line 558
    const/4 v0, 0x0

    .line 560
    :cond_2
    :goto_1
    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    iget v4, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    .line 561
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v4, v1

    goto :goto_1

    .line 563
    :cond_3
    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    move v4, v8

    .line 564
    goto :goto_0

    .line 566
    :cond_4
    invoke-static {v2, v3}, Lcom/mobipocket/common/util/BitSet;->trailingZeroCnt(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 567
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v0

    goto :goto_0
.end method

.method public or(Lcom/mobipocket/common/util/BitSet;)V
    .locals 7
    .parameter "set"

    .prologue
    .line 801
    if-ne p0, p1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget v2, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-direct {p0, v2}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 807
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v3, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 809
    .local v1, unitsInCommon:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 810
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 813
    :cond_2
    :goto_2
    iget v2, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v0, v2, :cond_3

    .line 814
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget-object v3, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 816
    :cond_3
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v3, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v2, v3, :cond_0

    .line 817
    iget v2, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iput v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    goto :goto_0
.end method

.method public set(I)V
    .locals 7
    .parameter "bitIndex"

    .prologue
    .line 252
    if-gez p1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitIndex < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 256
    .local v0, unitIndex:I
    add-int/lit8 v1, v0, 0x1

    .line 258
    .local v1, unitsRequired:I
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v2, v1, :cond_1

    .line 259
    invoke-direct {p0, v1}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 260
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 261
    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->bit(I)J

    move-result-wide v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    goto :goto_0
.end method

.method public set(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 294
    if-gez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    if-gez p2, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    if-le p1, p2, :cond_2

    .line 299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    invoke-static {p2}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v0

    .line 304
    add-int/lit8 v1, v0, 0x1

    .line 306
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v2, v1, :cond_3

    .line 307
    invoke-direct {p0, v1}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 308
    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 311
    :cond_3
    invoke-static {p1}, Lcom/mobipocket/common/util/BitSet;->unitIndex(I)I

    move-result v1

    .line 312
    if-ne v1, v0, :cond_4

    .line 315
    and-int/lit8 v0, p2, 0x3f

    shl-long v2, v4, v0

    and-int/lit8 v0, p1, 0x3f

    shl-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 317
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v0, v1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 335
    :goto_0
    return-void

    .line 323
    :cond_4
    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Lcom/mobipocket/common/util/BitSet;->bitsLeftOf(I)J

    move-result-wide v2

    .line 324
    iget-object v4, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    or-long/2addr v2, v5

    aput-wide v2, v4, v1

    .line 327
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 328
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_5

    .line 329
    iget-object v2, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, -0x1

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_5
    and-int/lit8 v1, p2, 0x3f

    invoke-static {v1}, Lcom/mobipocket/common/util/BitSet;->bitsRightOf(I)J

    move-result-wide v1

    .line 334
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    or-long/2addr v1, v4

    aput-wide v1, v3, v0

    goto :goto_0
.end method

.method public set(IIZ)V
    .locals 0
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "value"

    .prologue
    .line 350
    if-eqz p3, :cond_0

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/util/BitSet;->set(II)V

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/util/BitSet;->clear(II)V

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0
    .parameter "bitIndex"
    .parameter "value"

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/util/BitSet;->set(I)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 990
    iget v0, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    shl-int/lit8 v0, v0, 0x6

    .line 991
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 992
    const-string v2, ""

    .line 993
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 995
    const/4 v3, 0x0

    move v5, v3

    move-object v3, v2

    move v2, v5

    :goto_0
    if-ge v2, v0, :cond_1

    .line 996
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 998
    const-string v3, ", "

    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 995
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/mobipocket/common/util/BitSet;)V
    .locals 8
    .parameter "set"

    .prologue
    .line 837
    iget v3, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    iget v4, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-lt v3, v4, :cond_0

    .line 838
    iget v2, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 848
    .local v2, unitsInCommon:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 849
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    .end local v0           #i:I
    .end local v2           #unitsInCommon:I
    :cond_0
    iget v2, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 841
    .restart local v2       #unitsInCommon:I
    iget v1, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    .line 842
    .local v1, newUnitsInUse:I
    invoke-direct {p0, v1}, Lcom/mobipocket/common/util/BitSet;->ensureCapacity(I)V

    .line 843
    iput v1, p0, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    goto :goto_0

    .line 852
    .end local v1           #newUnitsInUse:I
    .restart local v0       #i:I
    :cond_1
    :goto_2
    iget v3, p1, Lcom/mobipocket/common/util/BitSet;->unitsInUse:I

    if-ge v0, v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/mobipocket/common/util/BitSet;->bits:[J

    iget-object v4, p1, Lcom/mobipocket/common/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 855
    :cond_2
    invoke-direct {p0}, Lcom/mobipocket/common/util/BitSet;->recalculateUnitsInUse()V

    .line 856
    return-void
.end method
