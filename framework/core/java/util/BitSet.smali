.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ELM_SIZE:I = 0x40

.field private static final OFFSET:I = 0x6

.field private static final RIGHT_BITS:I = 0x3f

.field private static final TWO_N_ARRAY:[J = null

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient actualArrayLength:I

.field private bits:[J

.field private transient isLengthActual:Z

.field private transient needClear:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    return-void

    :array_a
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x4t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x8t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x20t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x80t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x20t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x4t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x8t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x1t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x2t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x8t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x10t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-array v0, v1, [J

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 77
    iput-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .parameter "nbits"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-gez p1, :cond_d

    .line 99
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 101
    :cond_d
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, p1, 0x3f

    if-lez v1, :cond_1e

    move v1, v3

    :goto_14
    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 102
    iput v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 103
    iput-boolean v3, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 104
    return-void

    :cond_1e
    move v1, v2

    .line 101
    goto :goto_14
.end method

.method private constructor <init>([JZIZ)V
    .registers 5
    .parameter "bits"
    .parameter "needClear"
    .parameter "actualArrayLength"
    .parameter "isLengthActual"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Ljava/util/BitSet;->bits:[J

    .line 114
    iput-boolean p2, p0, Ljava/util/BitSet;->needClear:Z

    .line 115
    iput p3, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 116
    iput-boolean p4, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 117
    return-void
.end method

.method private checkIndex(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 247
    if-gez p1, :cond_1b

    .line 248
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1b
    return-void
.end method

.method private checkRange(II)V
    .registers 6
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 253
    or-int v0, p1, p2

    if-ltz v0, :cond_6

    if-ge p2, p1, :cond_29

    .line 254
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_29
    return-void
.end method

.method private final getActualArrayLength()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 786
    iget-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    if-eqz v1, :cond_8

    .line 787
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 795
    :goto_7
    return v1

    .line 789
    :cond_8
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    sub-int v0, v1, v5

    .line 790
    .local v0, idx:I
    :goto_c
    if-ltz v0, :cond_1b

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    .line 791
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 793
    :cond_1b
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 794
    iput-boolean v5, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 795
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    goto :goto_7
.end method

.method private final growLength(I)V
    .registers 6
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [J

    .line 197
    .local v0, tempBits:[J
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 199
    return-void
.end method

.method private needClear()V
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->needClear:Z

    .line 421
    return-void
.end method

.method private final pop(J)I
    .registers 9
    .parameter "x"

    .prologue
    const-wide/32 v4, 0x33333333

    .line 961
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/32 v2, 0x55555555

    and-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 962
    and-long v0, p1, v4

    const/4 v2, 0x2

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    add-long p1, v0, v2

    .line 963
    const/4 v0, 0x4

    ushr-long v0, p1, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0xf0f0f0f

    and-long p1, v0, v2

    .line 964
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    add-long/2addr p1, v0

    .line 965
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    add-long/2addr p1, v0

    .line 966
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 971
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 972
    iput-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 973
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 974
    invoke-direct {p0}, Ljava/util/BitSet;->getActualArrayLength()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Ljava/util/BitSet;->needClear:Z

    .line 975
    return-void

    :cond_15
    move v0, v1

    .line 974
    goto :goto_12
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .registers 14
    .parameter "bs"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 642
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 643
    .local v0, bsBits:[J
    iget-boolean v4, p0, Ljava/util/BitSet;->needClear:Z

    if-nez v4, :cond_a

    .line 661
    :goto_9
    return-void

    .line 646
    :cond_a
    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    .local v2, length1:I
    iget v3, p1, Ljava/util/BitSet;->actualArrayLength:I

    .line 647
    .local v3, length2:I
    if-gt v2, v3, :cond_1f

    .line 648
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_3a

    .line 649
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    and-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 652
    .end local v1           #i:I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_20
    if-ge v1, v3, :cond_2e

    .line 653
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    and-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 655
    :cond_2e
    move v1, v3

    :goto_2f
    if-ge v1, v2, :cond_38

    .line 656
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aput-wide v10, v4, v1

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 658
    :cond_38
    iput v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 660
    :cond_3a
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-lez v4, :cond_49

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    iget v5, p0, Ljava/util/BitSet;->actualArrayLength:I

    sub-int/2addr v5, v9

    aget-wide v4, v4, v5

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4d

    :cond_49
    move v4, v9

    :goto_4a
    iput-boolean v4, p0, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_9

    :cond_4d
    const/4 v4, 0x0

    goto :goto_4a
.end method

.method public andNot(Ljava/util/BitSet;)V
    .registers 13
    .parameter "bs"

    .prologue
    const/4 v10, 0x1

    .line 671
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 672
    .local v0, bsBits:[J
    iget-boolean v3, p0, Ljava/util/BitSet;->needClear:Z

    if-nez v3, :cond_8

    .line 685
    :goto_7
    return-void

    .line 675
    :cond_8
    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    iget v4, p1, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v3, v4, :cond_23

    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    move v2, v3

    .line 677
    .local v2, range:I
    :goto_11
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_27

    .line 678
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v1

    aget-wide v6, v0, v1

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 675
    .end local v1           #i:I
    .end local v2           #range:I
    :cond_23
    iget v3, p1, Ljava/util/BitSet;->actualArrayLength:I

    move v2, v3

    goto :goto_11

    .line 681
    .restart local v1       #i:I
    .restart local v2       #range:I
    :cond_27
    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v3, v2, :cond_2d

    .line 682
    iput v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 684
    :cond_2d
    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-lez v3, :cond_3e

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    sub-int/2addr v4, v10

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_42

    :cond_3e
    move v3, v10

    :goto_3f
    iput-boolean v3, p0, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_7

    :cond_42
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public cardinality()I
    .registers 8

    .prologue
    .line 943
    iget-boolean v3, p0, Ljava/util/BitSet;->needClear:Z

    if-nez v3, :cond_6

    .line 944
    const/4 v3, 0x0

    .line 954
    :goto_5
    return v3

    .line 946
    :cond_6
    const/4 v0, 0x0

    .line 947
    .local v0, count:I
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v3

    .line 950
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_b
    if-ge v1, v2, :cond_2b

    .line 951
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Ljava/util/BitSet;->pop(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 952
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Ljava/util/BitSet;->pop(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2b
    move v3, v0

    .line 954
    goto :goto_5
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-boolean v1, p0, Ljava/util/BitSet;->needClear:Z

    if-eqz v1, :cond_1b

    .line 454
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 455
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 457
    :cond_14
    iput v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 459
    iput-boolean v4, p0, Ljava/util/BitSet;->needClear:Z

    .line 461
    .end local v0           #i:I
    :cond_1b
    return-void
.end method

.method public clear(I)V
    .registers 10
    .parameter "index"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 475
    iget-boolean v1, p0, Ljava/util/BitSet;->needClear:Z

    if-nez v1, :cond_8

    .line 485
    :cond_7
    :goto_7
    return-void

    .line 478
    :cond_8
    shr-int/lit8 v0, p1, 0x6

    .line 479
    .local v0, arrayPos:I
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v0, v1, :cond_7

    .line 480
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    sget-object v4, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    and-int/lit8 v5, p1, 0x3f

    aget-wide v4, v4, v5

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 481
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v1, v1, v2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 482
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_7
.end method

.method public clear(II)V
    .registers 20
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 501
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/BitSet;->needClear:Z

    move v10, v0

    if-nez v10, :cond_b

    .line 531
    :cond_a
    :goto_a
    return-void

    .line 506
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/BitSet;->actualArrayLength:I

    move v10, v0

    shl-int/lit8 v9, v10, 0x6

    .line 507
    .local v9, last:I
    move/from16 v0, p1

    move v1, v9

    if-ge v0, v1, :cond_a

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    .line 510
    move/from16 v0, p2

    move v1, v9

    if-le v0, v1, :cond_24

    .line 511
    move/from16 p2, v9

    .line 514
    :cond_24
    shr-int/lit8 v7, p1, 0x6

    .line 515
    .local v7, idx1:I
    const/4 v10, 0x1

    sub-int v10, p2, v10

    shr-int/lit8 v8, v10, 0x6

    .line 516
    .local v8, idx2:I
    const-wide/16 v10, -0x1

    and-int/lit8 v12, p1, 0x3f

    shl-long v2, v10, v12

    .line 517
    .local v2, factor1:J
    const-wide/16 v10, -0x1

    const/16 v12, 0x40

    and-int/lit8 v13, p2, 0x3f

    sub-int/2addr v12, v13

    ushr-long v4, v10, v12

    .line 519
    .local v4, factor2:J
    if-ne v7, v8, :cond_6d

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v7

    and-long v13, v2, v4

    const-wide/16 v15, -0x1

    xor-long/2addr v13, v15

    and-long/2addr v11, v13

    aput-wide v11, v10, v7

    .line 528
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/BitSet;->actualArrayLength:I

    move v10, v0

    if-lez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/BitSet;->actualArrayLength:I

    move v11, v0

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_a

    .line 529
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_a

    .line 522
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v7

    const-wide/16 v13, -0x1

    xor-long/2addr v13, v2

    and-long/2addr v11, v13

    aput-wide v11, v10, v7

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v8

    const-wide/16 v13, -0x1

    xor-long/2addr v13, v4

    and-long/2addr v11, v13

    aput-wide v11, v10, v8

    .line 524
    add-int/lit8 v6, v7, 0x1

    .local v6, i:I
    :goto_89
    if-ge v6, v8, :cond_4b

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v6

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_89
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 127
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 128
    .local v0, clone:Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [J

    iput-object p0, v0, Ljava/util/BitSet;->bits:[J
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 129
    return-object v0

    .line 130
    .end local v0           #clone:Ljava/util/BitSet;
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 131
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .parameter "obj"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 148
    if-ne p0, p1, :cond_8

    move v5, v10

    .line 185
    .end local p1
    :goto_7
    return v5

    .line 151
    .restart local p1
    :cond_8
    instance-of v5, p1, Ljava/util/BitSet;

    if-eqz v5, :cond_6e

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/util/BitSet;

    move-object v5, v0

    iget-object v1, v5, Ljava/util/BitSet;->bits:[J

    .line 153
    .local v1, bsBits:[J
    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    .local v3, length1:I
    move-object v0, p1

    check-cast v0, Ljava/util/BitSet;

    move-object v5, v0

    iget v4, v5, Ljava/util/BitSet;->actualArrayLength:I

    .line 154
    .local v4, length2:I
    iget-boolean v5, p0, Ljava/util/BitSet;->isLengthActual:Z

    if-eqz v5, :cond_28

    check-cast p1, Ljava/util/BitSet;

    .end local p1
    iget-boolean v5, p1, Ljava/util/BitSet;->isLengthActual:Z

    if-eqz v5, :cond_28

    if-eq v3, v4, :cond_28

    move v5, v9

    .line 156
    goto :goto_7

    .line 160
    :cond_28
    if-gt v3, v4, :cond_4a

    .line 161
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v3, :cond_3c

    .line 162
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    aget-wide v7, v1, v2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_39

    move v5, v9

    .line 163
    goto :goto_7

    .line 161
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 166
    :cond_3c
    move v2, v3

    :goto_3d
    if-ge v2, v4, :cond_6c

    .line 167
    aget-wide v5, v1, v2

    cmp-long v5, v5, v11

    if-eqz v5, :cond_47

    move v5, v9

    .line 168
    goto :goto_7

    .line 166
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 172
    .end local v2           #i:I
    :cond_4a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    if-ge v2, v4, :cond_5c

    .line 173
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    aget-wide v7, v1, v2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_59

    move v5, v9

    .line 174
    goto :goto_7

    .line 172
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 177
    :cond_5c
    move v2, v4

    :goto_5d
    if-ge v2, v3, :cond_6c

    .line 178
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    cmp-long v5, v5, v11

    if-eqz v5, :cond_69

    move v5, v9

    .line 179
    goto :goto_7

    .line 177
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6c
    move v5, v10

    .line 183
    goto :goto_7

    .end local v1           #bsBits:[J
    .end local v2           #i:I
    .end local v3           #length1:I
    .end local v4           #length2:I
    .restart local p1
    :cond_6e
    move v5, v9

    .line 185
    goto :goto_7
.end method

.method public flip(I)V
    .registers 10
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 544
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 545
    shr-int/lit8 v1, p1, 0x6

    add-int/lit8 v0, v1, 0x1

    .line 546
    .local v0, len:I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 547
    invoke-direct {p0, v0}, Ljava/util/BitSet;->growLength(I)V

    .line 549
    :cond_10
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    sub-int v2, v0, v7

    aget-wide v3, v1, v2

    sget-object v5, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    and-int/lit8 v6, p1, 0x3f

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 550
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v0, v1, :cond_25

    .line 551
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 553
    :cond_25
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-lez v1, :cond_36

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    sub-int/2addr v2, v7

    aget-wide v1, v1, v2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3d

    :cond_36
    move v1, v7

    :goto_37
    iput-boolean v1, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 554
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    .line 555
    return-void

    .line 553
    :cond_3d
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public flip(II)V
    .registers 16
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 573
    if-ne p1, p2, :cond_6

    .line 600
    :goto_5
    return-void

    .line 576
    :cond_6
    const/4 v8, 0x1

    sub-int v8, p2, v8

    shr-int/lit8 v8, v8, 0x6

    add-int/lit8 v7, v8, 0x1

    .line 577
    .local v7, len2:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-le v7, v8, :cond_15

    .line 578
    invoke-direct {p0, v7}, Ljava/util/BitSet;->growLength(I)V

    .line 581
    :cond_15
    shr-int/lit8 v5, p1, 0x6

    .line 582
    .local v5, idx1:I
    const/4 v8, 0x1

    sub-int v8, p2, v8

    shr-int/lit8 v6, v8, 0x6

    .line 583
    .local v6, idx2:I
    const-wide/16 v8, -0x1

    and-int/lit8 v10, p1, 0x3f

    shl-long v0, v8, v10

    .line 584
    .local v0, factor1:J
    const-wide/16 v8, -0x1

    const/16 v10, 0x40

    and-int/lit8 v11, p2, 0x3f

    sub-int/2addr v10, v11

    ushr-long v2, v8, v10

    .line 586
    .local v2, factor2:J
    if-ne v5, v6, :cond_55

    .line 587
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v5

    and-long v11, v0, v2

    xor-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 595
    :cond_36
    iget v8, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v7, v8, :cond_3c

    .line 596
    iput v7, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 598
    :cond_3c
    iget v8, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-lez v8, :cond_4e

    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    iget v9, p0, Ljava/util/BitSet;->actualArrayLength:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_73

    :cond_4e
    const/4 v8, 0x1

    :goto_4f
    iput-boolean v8, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 599
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    goto :goto_5

    .line 589
    :cond_55
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v5

    xor-long/2addr v9, v0

    aput-wide v9, v8, v5

    .line 590
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v6

    xor-long/2addr v9, v2

    aput-wide v9, v8, v6

    .line 591
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    :goto_65
    if-ge v4, v6, :cond_36

    .line 592
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v4

    const-wide/16 v11, -0x1

    xor-long/2addr v9, v11

    aput-wide v9, v8, v4

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 598
    .end local v4           #i:I
    :cond_73
    const/4 v8, 0x0

    goto :goto_4f
.end method

.method public get(II)Ljava/util/BitSet;
    .registers 27
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 273
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/BitSet;->actualArrayLength:I

    move/from16 v18, v0

    shl-int/lit8 v13, v18, 0x6

    .line 276
    .local v13, last:I
    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_16

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1e

    .line 277
    :cond_16
    new-instance v18, Ljava/util/BitSet;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    .line 324
    :goto_1d
    return-object v18

    .line 279
    :cond_1e
    move/from16 v0, p2

    move v1, v13

    if-le v0, v1, :cond_25

    .line 280
    move/from16 p2, v13

    .line 283
    :cond_25
    shr-int/lit8 v11, p1, 0x6

    .line 284
    .local v11, idx1:I
    const/16 v18, 0x1

    sub-int v18, p2, v18

    shr-int/lit8 v12, v18, 0x6

    .line 285
    .local v12, idx2:I
    const-wide/16 v18, -0x1

    and-int/lit8 v20, p1, 0x3f

    shl-long v6, v18, v20

    .line 286
    .local v6, factor1:J
    const-wide/16 v18, -0x1

    const/16 v20, 0x40

    and-int/lit8 v21, p2, 0x3f

    sub-int v20, v20, v21

    ushr-long v8, v18, v20

    .line 288
    .local v8, factor2:J
    if-ne v11, v12, :cond_79

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v11

    and-long v20, v6, v8

    and-long v18, v18, v20

    rem-int/lit8 v20, p1, 0x40

    ushr-long v16, v18, v20

    .line 290
    .local v16, result:J
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-nez v18, :cond_5d

    .line 291
    new-instance v18, Ljava/util/BitSet;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    goto :goto_1d

    .line 293
    :cond_5d
    new-instance v18, Ljava/util/BitSet;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-wide v16, v19, v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/BitSet;->needClear:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-direct/range {v18 .. v22}, Ljava/util/BitSet;-><init>([JZIZ)V

    goto :goto_1d

    .line 295
    .end local v16           #result:J
    :cond_79
    sub-int v18, v12, v11

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object v14, v0

    .line 297
    .local v14, newbits:[J
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v11

    and-long v19, v19, v6

    aput-wide v19, v14, v18

    .line 298
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v12

    and-long v19, v19, v8

    aput-wide v19, v14, v18

    .line 301
    const/4 v10, 0x1

    .local v10, i:I
    :goto_a5
    sub-int v18, v12, v11

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_bb

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v18, v0

    add-int v19, v11, v10

    aget-wide v18, v18, v19

    aput-wide v18, v14, v10

    .line 301
    add-int/lit8 v10, v10, 0x1

    goto :goto_a5

    .line 306
    :cond_bb
    and-int/lit8 v15, p1, 0x3f

    .line 307
    .local v15, numBitsToShift:I
    array-length v5, v14

    .line 308
    .local v5, actualLen:I
    if-eqz v15, :cond_fa

    .line 309
    const/4 v10, 0x0

    :goto_c1
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_fa

    .line 312
    aget-wide v18, v14, v10

    ushr-long v18, v18, v15

    aput-wide v18, v14, v10

    .line 316
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move v0, v10

    move/from16 v1, v18

    if-eq v0, v1, :cond_ed

    .line 317
    aget-wide v18, v14, v10

    add-int/lit8 v20, v10, 0x1

    aget-wide v20, v14, v20

    const/16 v22, 0x40

    sub-int v22, v22, v15

    shl-long v20, v20, v22

    or-long v18, v18, v20

    aput-wide v18, v14, v10

    .line 319
    :cond_ed
    aget-wide v18, v14, v10

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_f7

    .line 320
    add-int/lit8 v5, v10, 0x1

    .line 309
    :cond_f7
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    .line 324
    :cond_fa
    new-instance v18, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/BitSet;->needClear:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v5, v20

    aget-wide v20, v14, v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_11d

    const/16 v20, 0x1

    :goto_110
    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move v3, v5

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/BitSet;-><init>([JZIZ)V

    goto/16 :goto_1d

    :cond_11d
    const/16 v20, 0x0

    goto :goto_110
.end method

.method public get(I)Z
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 239
    shr-int/lit8 v0, p1, 0x6

    .line 240
    .local v0, arrayPos:I
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v0, v1, :cond_1f

    .line 241
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    sget-object v3, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    and-int/lit8 v4, p1, 0x3f

    aget-wide v3, v3, v4

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 243
    :goto_1c
    return v1

    :cond_1d
    move v1, v5

    .line 241
    goto :goto_1c

    :cond_1f
    move v1, v5

    .line 243
    goto :goto_1c
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 212
    const-wide/16 v2, 0x4d2

    .line 213
    .local v2, x:J
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    .local v1, length:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 214
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 216
    :cond_13
    const/16 v4, 0x20

    shr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    return v4
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .registers 13
    .parameter "bs"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 612
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 613
    .local v0, bsBits:[J
    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    .local v2, length1:I
    iget v3, p1, Ljava/util/BitSet;->actualArrayLength:I

    .line 615
    .local v3, length2:I
    if-gt v2, v3, :cond_1e

    .line 616
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_31

    .line 617
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1b

    move v4, v8

    .line 629
    :goto_1a
    return v4

    .line 616
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 622
    .end local v1           #i:I
    :cond_1e
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1f
    if-ge v1, v3, :cond_31

    .line 623
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_2e

    move v4, v8

    .line 624
    goto :goto_1a

    .line 622
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 629
    :cond_31
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method public isEmpty()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 925
    iget-boolean v2, p0, Ljava/util/BitSet;->needClear:Z

    if-nez v2, :cond_7

    move v2, v6

    .line 934
    :goto_6
    return v2

    .line 928
    :cond_7
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v2

    .line 929
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_b
    if-ge v0, v1, :cond_1c

    .line 930
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    .line 931
    const/4 v2, 0x0

    goto :goto_6

    .line 929
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    move v2, v6

    .line 934
    goto :goto_6
.end method

.method public length()I
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 769
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 770
    .local v1, idx:I
    :goto_7
    if-ltz v1, :cond_14

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 771
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 773
    :cond_14
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 774
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    .line 775
    const/4 v4, 0x0

    .line 782
    :goto_1c
    return v4

    .line 777
    :cond_1d
    const/16 v0, 0x3f

    .line 778
    .local v0, i:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v4, v1

    .line 779
    .local v2, val:J
    :goto_23
    sget-object v4, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_31

    if-lez v0, :cond_31

    .line 780
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 782
    :cond_31
    shl-int/lit8 v4, v1, 0x6

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c
.end method

.method public nextClearBit(I)I
    .registers 15
    .parameter "index"

    .prologue
    const-wide/16 v11, 0x0

    const-wide/16 v9, -0x1

    const/16 v8, 0x40

    .line 882
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 884
    iget v3, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 885
    .local v3, length:I
    shl-int/lit8 v0, v3, 0x6

    .line 886
    .local v0, bssize:I
    if-lt p1, v0, :cond_11

    move v4, p1

    .line 915
    :goto_10
    return v4

    .line 890
    :cond_11
    shr-int/lit8 v1, p1, 0x6

    .line 892
    .local v1, idx:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v9

    if-eqz v4, :cond_33

    .line 893
    rem-int/lit8 v2, p1, 0x40

    .local v2, j:I
    :goto_1d
    if-ge v2, v8, :cond_33

    .line 894
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    sget-object v6, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v6, v6, v2

    and-long/2addr v4, v6

    cmp-long v4, v4, v11

    if-nez v4, :cond_30

    .line 895
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v2

    goto :goto_10

    .line 893
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 899
    .end local v2           #j:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 900
    :goto_35
    if-ge v1, v3, :cond_42

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v9

    if-nez v4, :cond_42

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 903
    :cond_42
    if-ne v1, v3, :cond_46

    move v4, v0

    .line 904
    goto :goto_10

    .line 909
    :cond_46
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_47
    if-ge v2, v8, :cond_5d

    .line 910
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    sget-object v6, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v6, v6, v2

    and-long/2addr v4, v6

    cmp-long v4, v4, v11

    if-nez v4, :cond_5a

    .line 911
    shl-int/lit8 v4, v1, 0x6

    add-int/2addr v4, v2

    goto :goto_10

    .line 909
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5d
    move v4, v0

    .line 915
    goto :goto_10
.end method

.method public nextSetBit(I)I
    .registers 12
    .parameter "index"

    .prologue
    const/16 v9, 0x40

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 838
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 840
    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    shl-int/lit8 v2, v2, 0x6

    if-lt p1, v2, :cond_10

    move v2, v8

    .line 870
    :goto_f
    return v2

    .line 844
    :cond_10
    shr-int/lit8 v0, p1, 0x6

    .line 846
    .local v0, idx:I
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_32

    .line 847
    and-int/lit8 v1, p1, 0x3f

    .local v1, j:I
    :goto_1c
    if-ge v1, v9, :cond_32

    .line 848
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    sget-object v4, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v4, v4, v1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2f

    .line 849
    shl-int/lit8 v2, v0, 0x6

    add-int/2addr v2, v1

    goto :goto_f

    .line 847
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 854
    .end local v1           #j:I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 855
    :goto_34
    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v0, v2, :cond_43

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_43

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 858
    :cond_43
    iget v2, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ne v0, v2, :cond_49

    move v2, v8

    .line 859
    goto :goto_f

    .line 864
    :cond_49
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4a
    if-ge v1, v9, :cond_60

    .line 865
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    sget-object v4, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v4, v4, v1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5d

    .line 866
    shl-int/lit8 v2, v0, 0x6

    add-int/2addr v2, v1

    goto :goto_f

    .line 864
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_60
    move v2, v8

    .line 870
    goto :goto_f
.end method

.method public or(Ljava/util/BitSet;)V
    .registers 12
    .parameter "bs"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 697
    invoke-direct {p1}, Ljava/util/BitSet;->getActualArrayLength()I

    move-result v0

    .line 698
    .local v0, bsActualLen:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v4, v4

    if-le v0, v4, :cond_2f

    .line 699
    new-array v3, v0, [J

    .line 700
    .local v3, tempBits:[J
    iget-object v4, p1, Ljava/util/BitSet;->bits:[J

    iget v5, p1, Ljava/util/BitSet;->actualArrayLength:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v2, v4, :cond_25

    .line 702
    aget-wide v4, v3, v2

    iget-object v6, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v2

    or-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 704
    :cond_25
    iput-object v3, p0, Ljava/util/BitSet;->bits:[J

    .line 705
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 706
    iput-boolean v9, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 717
    .end local v3           #tempBits:[J
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    .line 718
    return-void

    .line 708
    .end local v2           #i:I
    :cond_2f
    iget-object v1, p1, Ljava/util/BitSet;->bits:[J

    .line 709
    .local v1, bsBits:[J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    if-ge v2, v0, :cond_40

    .line 710
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v2

    aget-wide v7, v1, v2

    or-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 712
    :cond_40
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v0, v4, :cond_2b

    .line 713
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 714
    iput-boolean v9, p0, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_2b
.end method

.method public set(I)V
    .registers 10
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 341
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 342
    shr-int/lit8 v1, p1, 0x6

    add-int/lit8 v0, v1, 0x1

    .line 343
    .local v0, len:I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 344
    invoke-direct {p0, v0}, Ljava/util/BitSet;->growLength(I)V

    .line 346
    :cond_10
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    sub-int v2, v0, v7

    aget-wide v3, v1, v2

    sget-object v5, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    and-int/lit8 v6, p1, 0x3f

    aget-wide v5, v5, v6

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 347
    iget v1, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v0, v1, :cond_27

    .line 348
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 349
    iput-boolean v7, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 351
    :cond_27
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    .line 352
    return-void
.end method

.method public set(II)V
    .registers 16
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 390
    if-ne p1, p2, :cond_6

    .line 417
    :goto_5
    return-void

    .line 393
    :cond_6
    const/4 v8, 0x1

    sub-int v8, p2, v8

    shr-int/lit8 v8, v8, 0x6

    add-int/lit8 v7, v8, 0x1

    .line 394
    .local v7, len2:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-le v7, v8, :cond_15

    .line 395
    invoke-direct {p0, v7}, Ljava/util/BitSet;->growLength(I)V

    .line 398
    :cond_15
    shr-int/lit8 v5, p1, 0x6

    .line 399
    .local v5, idx1:I
    const/4 v8, 0x1

    sub-int v8, p2, v8

    shr-int/lit8 v6, v8, 0x6

    .line 400
    .local v6, idx2:I
    const-wide/16 v8, -0x1

    and-int/lit8 v10, p1, 0x3f

    shl-long v0, v8, v10

    .line 401
    .local v0, factor1:J
    const-wide/16 v8, -0x1

    const/16 v10, 0x40

    and-int/lit8 v11, p2, 0x3f

    sub-int/2addr v10, v11

    ushr-long v2, v8, v10

    .line 403
    .local v2, factor2:J
    if-ne v5, v6, :cond_47

    .line 404
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v5

    and-long v11, v0, v2

    or-long/2addr v9, v11

    aput-wide v9, v8, v5

    .line 412
    :cond_36
    add-int/lit8 v8, v6, 0x1

    iget v9, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v8, v9, :cond_43

    .line 413
    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 414
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 416
    :cond_43
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    goto :goto_5

    .line 406
    :cond_47
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v5

    or-long/2addr v9, v0

    aput-wide v9, v8, v5

    .line 407
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v6

    or-long/2addr v9, v2

    aput-wide v9, v8, v6

    .line 408
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    :goto_57
    if-ge v4, v6, :cond_36

    .line 409
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v4

    const-wide/16 v11, -0x1

    or-long/2addr v9, v11

    aput-wide v9, v8, v4

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_57
.end method

.method public set(IIZ)V
    .registers 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "val"

    .prologue
    .line 439
    if-eqz p3, :cond_6

    .line 440
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 444
    :goto_5
    return-void

    .line 442
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_5
.end method

.method public set(IZ)V
    .registers 3
    .parameter "index"
    .parameter "val"

    .prologue
    .line 367
    if-eqz p2, :cond_6

    .line 368
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 372
    :goto_5
    return-void

    .line 370
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v9, 0x0

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 807
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 808
    .local v0, bitCount:I
    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, comma:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    array-length v5, v5

    if-ge v2, v5, :cond_48

    .line 811
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    cmp-long v5, v5, v9

    if-nez v5, :cond_26

    .line 812
    add-int/lit8 v0, v0, 0x40

    .line 810
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 815
    :cond_26
    const/4 v3, 0x0

    .local v3, j:I
    :goto_27
    const/16 v5, 0x40

    if-ge v3, v5, :cond_23

    .line 816
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    sget-object v7, Ljava/util/BitSet;->TWO_N_ARRAY:[J

    aget-wide v7, v7, v3

    and-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-eqz v5, :cond_43

    .line 817
    if-eqz v1, :cond_3f

    .line 818
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_3f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    const/4 v1, 0x1

    .line 823
    :cond_43
    add-int/lit8 v0, v0, 0x1

    .line 815
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 826
    .end local v3           #j:I
    :cond_48
    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public xor(Ljava/util/BitSet;)V
    .registers 12
    .parameter "bs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 730
    invoke-direct {p1}, Ljava/util/BitSet;->getActualArrayLength()I

    move-result v0

    .line 731
    .local v0, bsActualLen:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v4, v4

    if-le v0, v4, :cond_43

    .line 732
    new-array v3, v0, [J

    .line 733
    .local v3, tempBits:[J
    iget-object v4, p1, Ljava/util/BitSet;->bits:[J

    iget v5, p1, Ljava/util/BitSet;->actualArrayLength:I

    invoke-static {v4, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-ge v2, v4, :cond_25

    .line 735
    aget-wide v4, v3, v2

    iget-object v6, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 737
    :cond_25
    iput-object v3, p0, Ljava/util/BitSet;->bits:[J

    .line 738
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 739
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-lez v4, :cond_3a

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    iget v5, p0, Ljava/util/BitSet;->actualArrayLength:I

    sub-int/2addr v5, v9

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    :cond_3a
    move v4, v9

    :goto_3b
    iput-boolean v4, p0, Ljava/util/BitSet;->isLengthActual:Z

    .line 750
    .end local v3           #tempBits:[J
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Ljava/util/BitSet;->needClear()V

    .line 751
    return-void

    .restart local v3       #tempBits:[J
    :cond_41
    move v4, v8

    .line 739
    goto :goto_3b

    .line 741
    .end local v2           #i:I
    .end local v3           #tempBits:[J
    :cond_43
    iget-object v1, p1, Ljava/util/BitSet;->bits:[J

    .line 742
    .local v1, bsBits:[J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    if-ge v2, v0, :cond_54

    .line 743
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v2

    aget-wide v7, v1, v2

    xor-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 745
    :cond_54
    iget v4, p0, Ljava/util/BitSet;->actualArrayLength:I

    if-le v0, v4, :cond_3d

    .line 746
    iput v0, p0, Ljava/util/BitSet;->actualArrayLength:I

    .line 747
    iput-boolean v9, p0, Ljava/util/BitSet;->isLengthActual:Z

    goto :goto_3d
.end method
