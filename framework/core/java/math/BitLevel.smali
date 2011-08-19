.class Ljava/math/BitLevel;
.super Ljava/lang/Object;
.source "BitLevel.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitCount(Ljava/math/BigInteger;)I
    .registers 4
    .parameter "val"

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, bCount:I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_a

    .line 67
    const/4 v2, 0x0

    .line 84
    :goto_9
    return v2

    .line 70
    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 71
    .local v1, i:I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_22

    .line 72
    :goto_12
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_46

    .line 73
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 77
    :cond_22
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    :goto_2e
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_40

    .line 79
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 82
    :cond_40
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v2, v2, 0x5

    sub-int v0, v2, v0

    :cond_46
    move v2, v0

    .line 84
    goto :goto_9
.end method

.method static bitLength(Ljava/math/BigInteger;)I
    .registers 7
    .parameter "val"

    .prologue
    const/4 v5, 0x1

    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 43
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-nez v3, :cond_a

    .line 44
    const/4 v3, 0x0

    .line 58
    :goto_9
    return v3

    .line 46
    :cond_a
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v0, v3, 0x5

    .line 47
    .local v0, bLength:I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v4, v5

    aget v1, v3, v4

    .line 49
    .local v1, highDigit:I
    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-gez v3, :cond_24

    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 52
    .local v2, i:I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_24

    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 57
    .end local v2           #i:I
    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v0, v3

    move v3, v0

    .line 58
    goto :goto_9
.end method

.method static flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 15
    .parameter "val"
    .parameter "n"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 215
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    if-nez v8, :cond_34

    move v7, v11

    .line 216
    .local v7, resSign:I
    :goto_b
    shr-int/lit8 v4, p1, 0x5

    .line 217
    .local v4, intCount:I
    and-int/lit8 v0, p1, 0x1f

    .line 218
    .local v0, bitN:I
    add-int/lit8 v8, v4, 0x1

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 219
    .local v6, resLength:I
    new-array v5, v6, [I

    .line 222
    .local v5, resDigits:[I
    shl-int v1, v11, v0

    .line 223
    .local v1, bitNumber:I
    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v10, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    if-gez v8, :cond_79

    .line 226
    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v4, v8, :cond_38

    .line 227
    aput v1, v5, v4

    .line 253
    :cond_2e
    :goto_2e
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v8

    .line 215
    .end local v0           #bitN:I
    .end local v1           #bitNumber:I
    .end local v4           #intCount:I
    .end local v5           #resDigits:[I
    .end local v6           #resLength:I
    .end local v7           #resSign:I
    :cond_34
    iget v8, p0, Ljava/math/BigInteger;->sign:I

    move v7, v8

    goto :goto_b

    .line 230
    .restart local v0       #bitN:I
    .restart local v1       #bitNumber:I
    .restart local v4       #intCount:I
    .restart local v5       #resDigits:[I
    .restart local v6       #resLength:I
    .restart local v7       #resSign:I
    :cond_38
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 231
    .local v2, firstNonZeroDigit:I
    if-le v4, v2, :cond_44

    .line 232
    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_2e

    .line 233
    :cond_44
    if-ge v4, v2, :cond_5b

    .line 234
    neg-int v8, v1

    aput v8, v5, v4

    .line 235
    add-int/lit8 v3, v4, 0x1

    .local v3, i:I
    :goto_4b
    if-ge v3, v2, :cond_52

    .line 236
    aput v12, v5, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 238
    :cond_52
    aget v8, v5, v3

    sub-int v9, v8, v11

    aput v9, v5, v3

    aput v8, v5, v3

    goto :goto_2e

    .line 240
    .end local v3           #i:I
    :cond_5b
    move v3, v4

    .line 241
    .restart local v3       #i:I
    aget v8, v5, v4

    neg-int v8, v8

    xor-int/2addr v8, v1

    neg-int v8, v8

    aput v8, v5, v3

    .line 242
    aget v8, v5, v3

    if-nez v8, :cond_2e

    .line 243
    add-int/lit8 v3, v3, 0x1

    :goto_69
    aget v8, v5, v3

    if-ne v8, v12, :cond_72

    .line 244
    aput v10, v5, v3

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 246
    :cond_72
    aget v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v3

    goto :goto_2e

    .line 251
    .end local v2           #firstNonZeroDigit:I
    .end local v3           #i:I
    :cond_79
    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_2e
.end method

.method static nonZeroDroppedBits(I[I)Z
    .registers 7
    .parameter "numberOfBits"
    .parameter "digits"

    .prologue
    .line 104
    shr-int/lit8 v2, p0, 0x5

    .line 105
    .local v2, intCount:I
    and-int/lit8 v0, p0, 0x1f

    .line 108
    .local v0, bitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_e

    aget v3, p1, v1

    if-nez v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 111
    :cond_e
    if-ne v1, v2, :cond_18

    aget v3, p1, v1

    const/16 v4, 0x20

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    if-eqz v3, :cond_1a

    :cond_18
    const/4 v3, 0x1

    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method static shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .parameter "source"

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 128
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 129
    .local v2, srcLen:I
    add-int/lit8 v1, v2, 0x1

    .line 130
    .local v1, resLen:I
    new-array v0, v1, [I

    .line 131
    .local v0, resDigits:[I
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v0, v3, v2}, Ljava/math/BitLevel;->shiftLeftOneBit([I[II)V

    .line 132
    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static shiftLeftOneBit([I[II)V
    .registers 7
    .parameter "result"
    .parameter "source"
    .parameter "srcLen"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, carry:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p2, :cond_10

    .line 117
    aget v2, p1, v1

    .line 118
    .local v2, val:I
    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v0

    aput v3, p0, v1

    .line 119
    ushr-int/lit8 v0, v2, 0x1f

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v2           #val:I
    :cond_10
    if-eqz v0, :cond_14

    .line 122
    aput v0, p0, p2

    .line 124
    :cond_14
    return-void
.end method

.method static shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 8
    .parameter "source"
    .parameter "count"

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 138
    shr-int/lit8 v1, p1, 0x5

    .line 139
    .local v1, intCount:I
    and-int/lit8 p1, p1, 0x1f

    .line 140
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v4, :cond_15

    .line 141
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_12

    sget-object v4, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 166
    :goto_11
    return-object v4

    .line 141
    :cond_12
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_11

    .line 144
    :cond_15
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int v3, v4, v1

    .line 145
    .local v3, resLength:I
    add-int/lit8 v4, v3, 0x1

    new-array v2, v4, [I

    .line 147
    .local v2, resDigits:[I
    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v2, v3, v4, v1, p1}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    .line 148
    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_58

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v1, :cond_32

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    if-nez v4, :cond_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 155
    :cond_32
    if-lt v0, v1, :cond_40

    if-lez p1, :cond_58

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    const/16 v5, 0x20

    sub-int/2addr v5, p1

    shl-int/2addr v4, v5

    if-eqz v4, :cond_58

    .line 157
    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-ge v0, v3, :cond_4e

    aget v4, v2, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4e

    .line 158
    const/4 v4, 0x0

    aput v4, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 160
    :cond_4e
    if-ne v0, v3, :cond_52

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 163
    :cond_52
    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    .line 166
    .end local v0           #i:I
    :cond_58
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v4, v5, v3, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_11
.end method

.method static shiftRight([II[III)Z
    .registers 11
    .parameter "result"
    .parameter "resultLen"
    .parameter "source"
    .parameter "intCount"
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    const/4 v0, 0x1

    .line 188
    .local v0, allZero:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, p3, :cond_11

    .line 189
    aget v3, p2, v1

    if-nez v3, :cond_f

    move v3, v5

    :goto_b
    and-int/2addr v0, v3

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    move v3, v4

    .line 189
    goto :goto_b

    .line 190
    :cond_11
    if-nez p4, :cond_18

    .line 191
    invoke-static {p2, p3, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    move v1, p1

    .line 205
    :goto_17
    return v0

    .line 194
    :cond_18
    const/16 v3, 0x20

    sub-int v2, v3, p4

    .line 196
    .local v2, leftShiftCount:I
    aget v3, p2, v1

    shl-int/2addr v3, v2

    if-nez v3, :cond_3a

    move v3, v5

    :goto_22
    and-int/2addr v0, v3

    .line 197
    const/4 v1, 0x0

    :goto_24
    sub-int v3, p1, v5

    if-ge v1, v3, :cond_3c

    .line 198
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    add-int v4, v1, p3

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3a
    move v3, v4

    .line 196
    goto :goto_22

    .line 201
    :cond_3c
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    aput v3, p0, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method static testBit(Ljava/math/BigInteger;I)Z
    .registers 5
    .parameter "val"
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 94
    iget-object v0, p0, Ljava/math/BigInteger;->digits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move v0, v2

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
