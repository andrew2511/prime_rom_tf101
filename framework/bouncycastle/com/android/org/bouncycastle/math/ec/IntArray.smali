.class Lcom/android/org/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "intLen"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "bigInt"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 20
    .parameter "bigInt"
    .parameter "minIntLen"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_12

    .line 32
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Only positive Integers allowed"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 34
    :cond_12
    sget-object v14, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 36
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 94
    :cond_2a
    return-void

    .line 40
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 41
    .local v2, barr:[B
    array-length v6, v2

    .line 42
    .local v6, barrLen:I
    const/4 v7, 0x0

    .line 43
    .local v7, barrStart:I
    const/4 v14, 0x0

    aget-byte v14, v2, v14

    if-nez v14, :cond_39

    .line 47
    add-int/lit8 v6, v6, -0x1

    .line 48
    const/4 v7, 0x1

    .line 50
    :cond_39
    add-int/lit8 v14, v6, 0x3

    div-int/lit8 v11, v14, 0x4

    .line 51
    .local v11, intLen:I
    move v0, v11

    move/from16 v1, p2

    if-ge v0, v1, :cond_65

    .line 53
    move/from16 v0, p2

    new-array v0, v0, [I

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 60
    :goto_4c
    const/4 v14, 0x1

    sub-int v9, v11, v14

    .line 61
    .local v9, iarrJ:I
    rem-int/lit8 v14, v6, 0x4

    add-int v12, v14, v7

    .line 62
    .local v12, rem:I
    const/4 v13, 0x0

    .line 63
    .local v13, temp:I
    move v4, v7

    .line 64
    .local v4, barrI:I
    if-ge v7, v12, :cond_77

    .line 66
    :goto_57
    if-ge v4, v12, :cond_6d

    .line 68
    shl-int/lit8 v13, v13, 0x8

    .line 69
    aget-byte v3, v2, v4

    .line 70
    .local v3, barrBarrI:I
    if-gez v3, :cond_61

    .line 72
    add-int/lit16 v3, v3, 0x100

    .line 74
    :cond_61
    or-int/2addr v13, v3

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 57
    .end local v3           #barrBarrI:I
    .end local v4           #barrI:I
    .end local v9           #iarrJ:I
    .end local v12           #rem:I
    .end local v13           #temp:I
    :cond_65
    new-array v14, v11, [I

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_4c

    .line 76
    .restart local v4       #barrI:I
    .restart local v9       #iarrJ:I
    .restart local v12       #rem:I
    .restart local v13       #temp:I
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    move-object v14, v0

    add-int/lit8 v10, v9, -0x1

    .end local v9           #iarrJ:I
    .local v10, iarrJ:I
    aput v13, v14, v9

    move v9, v10

    .line 79
    .end local v10           #iarrJ:I
    .restart local v9       #iarrJ:I
    :cond_77
    :goto_77
    if-ltz v9, :cond_2a

    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v8, 0x0

    .local v8, i:I
    move v5, v4

    .end local v4           #barrI:I
    .local v5, barrI:I
    :goto_7c
    const/4 v14, 0x4

    if-ge v8, v14, :cond_8e

    .line 84
    shl-int/lit8 v13, v13, 0x8

    .line 85
    add-int/lit8 v4, v5, 0x1

    .end local v5           #barrI:I
    .restart local v4       #barrI:I
    aget-byte v3, v2, v5

    .line 86
    .restart local v3       #barrBarrI:I
    if-gez v3, :cond_89

    .line 88
    add-int/lit16 v3, v3, 0x100

    .line 90
    :cond_89
    or-int/2addr v13, v3

    .line 82
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4           #barrI:I
    .restart local v5       #barrI:I
    goto :goto_7c

    .line 92
    .end local v3           #barrBarrI:I
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    move-object v14, v0

    aput v13, v14, v9

    .line 79
    add-int/lit8 v9, v9, -0x1

    move v4, v5

    .end local v5           #barrI:I
    .restart local v4       #barrI:I
    goto :goto_77
.end method

.method public constructor <init>([I)V
    .registers 2
    .parameter "ints"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 21
    return-void
.end method

.method private resizedInts(I)[I
    .registers 7
    .parameter "newLen"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-array v1, p1, [I

    .line 177
    .local v1, newInts:[I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v3

    .line 178
    .local v2, oldLen:I
    if-ge v2, p1, :cond_f

    move v0, v2

    .line 179
    .local v0, copyLen:I
    :goto_9
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-object v1

    .end local v0           #copyLen:I
    :cond_f
    move v0, p1

    .line 178
    goto :goto_9
.end method


# virtual methods
.method public addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V
    .registers 10
    .parameter "other"
    .parameter "shift"

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 293
    .local v2, usedLenOther:I
    add-int v1, v2, p2

    .line 294
    .local v1, newMinUsedLen:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v3, v3

    if-le v1, v3, :cond_11

    .line 296
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 300
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v2, :cond_24

    .line 302
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v4, v0, p2

    aget v5, v3, v4

    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 304
    :cond_24
    return-void
.end method

.method public bitLength()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 136
    .local v2, intLen:I
    if-nez v2, :cond_9

    .line 138
    const/4 v4, 0x0

    .line 171
    :goto_8
    return v4

    .line 141
    :cond_9
    sub-int v3, v2, v5

    .line 142
    .local v3, last:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v4, v3

    .line 143
    .local v1, highest:I
    shl-int/lit8 v4, v3, 0x5

    add-int/lit8 v0, v4, 0x1

    .line 146
    .local v0, bits:I
    const/high16 v4, -0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_2d

    .line 148
    const/high16 v4, -0x100

    and-int/2addr v4, v1

    if-eqz v4, :cond_28

    .line 150
    add-int/lit8 v0, v0, 0x18

    .line 151
    ushr-int/lit8 v1, v1, 0x18

    .line 165
    :cond_21
    :goto_21
    if-eq v1, v5, :cond_36

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 155
    :cond_28
    add-int/lit8 v0, v0, 0x10

    .line 156
    ushr-int/lit8 v1, v1, 0x10

    goto :goto_21

    .line 159
    :cond_2d
    const/16 v4, 0xff

    if-le v1, v4, :cond_21

    .line 161
    add-int/lit8 v0, v0, 0x8

    .line 162
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_21

    :cond_36
    move v4, v0

    .line 171
    goto :goto_8
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 492
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 459
    instance-of v4, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    if-nez v4, :cond_7

    move v4, v6

    .line 476
    :goto_6
    return v4

    .line 463
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object v2, v0

    .line 464
    .local v2, other:Lcom/android/org/bouncycastle/math/ec/IntArray;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 465
    .local v3, usedLen:I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-eq v4, v3, :cond_17

    move v4, v6

    .line 467
    goto :goto_6

    .line 469
    :cond_17
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v3, :cond_29

    .line 471
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    iget-object v5, v2, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v1

    if-eq v4, v5, :cond_26

    move v4, v6

    .line 473
    goto :goto_6

    .line 469
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 476
    :cond_29
    const/4 v4, 0x1

    goto :goto_6
.end method

.method public flipBit(I)V
    .registers 7
    .parameter "n"

    .prologue
    .line 324
    shr-int/lit8 v2, p1, 0x5

    .line 326
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 327
    .local v1, theBit:I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 328
    .local v0, flipper:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/2addr v4, v0

    aput v4, v3, v2

    .line 329
    return-void
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v1

    .line 106
    .local v0, highestIntPos:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    move v1, v2

    .line 129
    :goto_8
    return v1

    .line 112
    :cond_9
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v2

    if-eqz v1, :cond_1a

    .line 114
    :cond_f
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_f

    .line 117
    add-int/lit8 v1, v0, 0x1

    goto :goto_8

    .line 122
    :cond_1a
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_25

    .line 124
    add-int/lit8 v1, v0, 0x1

    goto :goto_8

    .line 127
    :cond_25
    if-gtz v0, :cond_1a

    move v1, v2

    .line 129
    goto :goto_8
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    .line 482
    .local v2, usedLen:I
    const/4 v0, 0x1

    .line 483
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_13

    .line 485
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    add-int v0, v3, v4

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 487
    :cond_13
    return v0
.end method

.method public isZero()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/IntArray;I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .registers 10
    .parameter "other"
    .parameter "m"

    .prologue
    .line 344
    add-int/lit8 v6, p2, 0x1f

    shr-int/lit8 v4, v6, 0x5

    .line 345
    .local v4, t:I
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v6, v6

    if-ge v6, v4, :cond_f

    .line 347
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 350
    :cond_f
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p1, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    .line 351
    .local v0, b:Lcom/android/org/bouncycastle/math/ec/IntArray;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    add-int v6, p2, p2

    add-int/lit8 v6, v6, 0x1f

    shr-int/lit8 v6, v6, 0x5

    invoke-direct {v1, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 353
    .local v1, c:Lcom/android/org/bouncycastle/math/ec/IntArray;
    const/4 v5, 0x1

    .line 354
    .local v5, testBit:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2b
    const/16 v6, 0x20

    if-ge v3, v6, :cond_47

    .line 356
    const/4 v2, 0x0

    .local v2, j:I
    :goto_30
    if-ge v2, v4, :cond_3f

    .line 358
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v2

    and-int/2addr v6, v5

    if-eqz v6, :cond_3c

    .line 361
    invoke-virtual {v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    .line 356
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 364
    :cond_3f
    shl-int/lit8 v5, v5, 0x1

    .line 365
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft()V

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 367
    .end local v2           #j:I
    :cond_47
    return-object v1
.end method

.method public reduce(I[I)V
    .registers 8
    .parameter "m"
    .parameter "redPol"

    .prologue
    .line 399
    add-int v3, p1, p1

    const/4 v4, 0x2

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_5
    if-lt v1, p1, :cond_24

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 403
    sub-int v0, v1, p1

    .line 404
    .local v0, bit:I
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    .line 405
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    .line 406
    array-length v2, p2

    .line 407
    .local v2, l:I
    :goto_16
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_21

    .line 409
    aget v3, p2, v2

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_16

    .line 399
    .end local v0           #bit:I
    .end local v2           #l:I
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 413
    :cond_24
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 414
    return-void
.end method

.method public setBit(I)V
    .registers 7
    .parameter "n"

    .prologue
    .line 334
    shr-int/lit8 v2, p1, 0x5

    .line 336
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 337
    .local v1, theBit:I
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 338
    .local v0, setter:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    .line 339
    return-void
.end method

.method public shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .registers 10
    .parameter "n"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 261
    .local v3, usedLen:I
    if-nez v3, :cond_a

    move-object v4, p0

    .line 287
    :goto_9
    return-object v4

    .line 266
    :cond_a
    if-nez p1, :cond_e

    move-object v4, p0

    .line 268
    goto :goto_9

    .line 271
    :cond_e
    const/16 v4, 0x1f

    if-le p1, v4, :cond_31

    .line 273
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shiftLeft() for max 31 bits , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bit shift is not possible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_31
    add-int/lit8 v4, v3, 0x1

    new-array v1, v4, [I

    .line 279
    .local v1, newInts:[I
    const/16 v4, 0x20

    sub-int v2, v4, p1

    .line 280
    .local v2, nm32:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v5

    shl-int/2addr v4, p1

    aput v4, v1, v5

    .line 281
    const/4 v0, 0x1

    .local v0, i:I
    :goto_41
    if-ge v0, v3, :cond_55

    .line 283
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    sub-int v6, v0, v7

    aget v5, v5, v6

    ushr-int/2addr v5, v2

    or-int/2addr v4, v5

    aput v4, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 285
    :cond_55
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    sub-int v5, v3, v7

    aget v4, v4, v5

    ushr-int/2addr v4, v2

    aput v4, v1, v3

    .line 287
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-direct {v4, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_9
.end method

.method public shiftLeft()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    .line 226
    .local v3, usedLen:I
    if-nez v3, :cond_8

    .line 256
    :cond_7
    return-void

    .line 230
    :cond_8
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    sub-int v5, v3, v6

    aget v4, v4, v5

    if-gez v4, :cond_22

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    if-le v3, v4, :cond_22

    .line 239
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 243
    :cond_22
    const/4 v0, 0x0

    .line 244
    .local v0, carry:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-ge v1, v3, :cond_7

    .line 247
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    if-gez v4, :cond_43

    move v2, v6

    .line 248
    .local v2, nextCarry:Z
    :goto_2d
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 249
    if-eqz v0, :cond_3f

    .line 252
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    or-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 254
    :cond_3f
    move v0, v2

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 247
    .end local v2           #nextCarry:Z
    :cond_43
    const/4 v4, 0x0

    move v2, v4

    goto :goto_2d
.end method

.method public square(I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .registers 14
    .parameter "m"

    .prologue
    const/4 v11, 0x4

    .line 419
    const/16 v9, 0x10

    new-array v4, v9, [I

    fill-array-data v4, :array_64

    .line 422
    .local v4, table:[I
    add-int/lit8 v9, p1, 0x1f

    shr-int/lit8 v3, v9, 0x5

    .line 423
    .local v3, t:I
    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v9, v9

    if-ge v9, v3, :cond_17

    .line 425
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    .line 428
    :cond_17
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    add-int v9, v3, v3

    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 431
    .local v0, c:Lcom/android/org/bouncycastle/math/ec/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v3, :cond_63

    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, v0:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_23
    if-ge v2, v11, :cond_38

    .line 436
    ushr-int/lit8 v7, v7, 0x8

    .line 437
    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    mul-int/lit8 v10, v2, 0x4

    ushr-int/2addr v9, v10

    and-int/lit8 v5, v9, 0xf

    .line 438
    .local v5, u:I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 439
    .local v8, w:I
    or-int/2addr v7, v8

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 441
    .end local v5           #u:I
    .end local v8           #w:I
    :cond_38
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    aput v7, v9, v10

    .line 443
    const/4 v7, 0x0

    .line 444
    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    ushr-int/lit8 v6, v9, 0x10

    .line 445
    .local v6, upper:I
    const/4 v2, 0x0

    :goto_46
    if-ge v2, v11, :cond_58

    .line 447
    ushr-int/lit8 v7, v7, 0x8

    .line 448
    mul-int/lit8 v9, v2, 0x4

    ushr-int v9, v6, v9

    and-int/lit8 v5, v9, 0xf

    .line 449
    .restart local v5       #u:I
    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    .line 450
    .restart local v8       #w:I
    or-int/2addr v7, v8

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 452
    .end local v5           #u:I
    .end local v8           #w:I
    :cond_58
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    add-int/lit8 v10, v10, 0x1

    aput v7, v9, v10

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 454
    .end local v2           #j:I
    .end local v6           #upper:I
    .end local v7           #v0:I
    :cond_63
    return-object v0

    .line 419
    :array_64
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public testBit(I)Z
    .registers 7
    .parameter "n"

    .prologue
    const/4 v4, 0x1

    .line 314
    shr-int/lit8 v2, p1, 0x5

    .line 316
    .local v2, theInt:I
    and-int/lit8 v1, p1, 0x1f

    .line 317
    .local v1, theBit:I
    shl-int v0, v4, v1

    .line 318
    .local v0, tester:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v3, v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_10

    move v3, v4

    :goto_f
    return v3

    :cond_10
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v10

    .line 186
    .local v10, usedLen:I
    if-nez v10, :cond_a

    .line 188
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 220
    :goto_9
    return-object v11

    .line 191
    :cond_a
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    sub-int v12, v10, v13

    aget v4, v11, v12

    .line 192
    .local v4, highestInt:I
    const/4 v11, 0x4

    new-array v7, v11, [B

    .line 193
    .local v7, temp:[B
    const/4 v1, 0x0

    .line 194
    .local v1, barrI:I
    const/4 v9, 0x0

    .line 195
    .local v9, trailingZeroBytesDone:Z
    const/4 v6, 0x3

    .local v6, j:I
    move v2, v1

    .end local v1           #barrI:I
    .local v2, barrI:I
    :goto_17
    if-ltz v6, :cond_2b

    .line 197
    mul-int/lit8 v11, v6, 0x8

    ushr-int v11, v4, v11

    int-to-byte v8, v11

    .line 198
    .local v8, thisByte:B
    if-nez v9, :cond_22

    if-eqz v8, :cond_61

    .line 200
    :cond_22
    const/4 v9, 0x1

    .line 201
    add-int/lit8 v1, v2, 0x1

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    aput-byte v8, v7, v2

    .line 195
    :goto_27
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    goto :goto_17

    .line 205
    .end local v8           #thisByte:B
    :cond_2b
    sub-int v11, v10, v13

    mul-int/lit8 v11, v11, 0x4

    add-int v3, v11, v2

    .line 206
    .local v3, barrLen:I
    new-array v0, v3, [B

    .line 207
    .local v0, barr:[B
    const/4 v6, 0x0

    :goto_34
    if-ge v6, v2, :cond_3d

    .line 209
    aget-byte v11, v7, v6

    aput-byte v11, v0, v6

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 213
    :cond_3d
    const/4 v11, 0x2

    sub-int v5, v10, v11

    .local v5, iarrJ:I
    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    :goto_41
    if-ltz v5, :cond_5b

    .line 215
    const/4 v6, 0x3

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    :goto_45
    if-ltz v6, :cond_57

    .line 217
    add-int/lit8 v1, v2, 0x1

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v11, v11, v5

    mul-int/lit8 v12, v6, 0x8

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v2

    .line 215
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    .end local v1           #barrI:I
    .restart local v2       #barrI:I
    goto :goto_45

    .line 213
    :cond_57
    add-int/lit8 v5, v5, -0x1

    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    goto :goto_41

    .line 220
    :cond_5b
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v13, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_9

    .end local v0           #barr:[B
    .end local v1           #barrI:I
    .end local v3           #barrLen:I
    .end local v5           #iarrJ:I
    .restart local v2       #barrI:I
    .restart local v8       #thisByte:B
    :cond_61
    move v1, v2

    .end local v2           #barrI:I
    .restart local v1       #barrI:I
    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    .line 498
    .local v4, usedLen:I
    if-nez v4, :cond_9

    .line 500
    const-string v5, "0"

    .line 516
    :goto_8
    return-object v5

    .line 503
    :cond_9
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    const/4 v6, 0x1

    sub-int v6, v4, v6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 505
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x2

    sub-int v2, v4, v5

    .local v2, iarrJ:I
    :goto_1c
    if-ltz v2, :cond_4a

    .line 507
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_2a
    const/16 v5, 0x8

    if-ge v1, v5, :cond_44

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 514
    :cond_44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 516
    .end local v0           #hexString:Ljava/lang/String;
    .end local v1           #i:I
    :cond_4a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8
.end method
