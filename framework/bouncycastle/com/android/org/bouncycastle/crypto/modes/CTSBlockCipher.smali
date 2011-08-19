.class public Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 25
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    if-eqz v0, :cond_13

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_13
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 32
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 36
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 14
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 192
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    array-length v8, p1

    if-le v7, v8, :cond_f

    .line 194
    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer to small in doFinal"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 197
    :cond_f
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    .line 198
    .local v1, blockSize:I
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int v5, v7, v1

    .line 199
    .local v5, len:I
    new-array v0, v1, [B

    .line 201
    .local v0, block:[B
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    if-eqz v7, :cond_7e

    .line 203
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 205
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_32

    .line 207
    new-instance v7, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for CTS"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_32
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .local v3, i:I
    :goto_34
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v7, v7

    if-eq v3, v7, :cond_44

    .line 212
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 215
    :cond_44
    move v3, v1

    :goto_45
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_58

    .line 217
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v7, v3

    sub-int v9, v3, v1

    aget-byte v9, v0, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 220
    :cond_58
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_76

    .line 222
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    .line 224
    .local v2, c:Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v2, v7, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 231
    .end local v2           #c:Lcom/android/org/bouncycastle/crypto/BlockCipher;
    :goto_6b
    add-int v7, p2, v1

    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :goto_70
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 261
    .local v6, offset:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 263
    return v6

    .line 228
    .end local v6           #offset:I
    :cond_76
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_6b

    .line 235
    .end local v3           #i:I
    :cond_7e
    new-array v4, v1, [B

    .line 237
    .local v4, lastBlock:[B
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_a9

    .line 239
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    .line 241
    .restart local v2       #c:Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v2, v7, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 248
    .end local v2           #c:Lcom/android/org/bouncycastle/crypto/BlockCipher;
    :goto_93
    move v3, v1

    .restart local v3       #i:I
    :goto_94
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_b1

    .line 250
    sub-int v7, v3, v1

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v9, v9, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 245
    .end local v3           #i:I
    :cond_a9
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_93

    .line 253
    .restart local v3       #i:I
    :cond_b1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 256
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_70
.end method

.method public getOutputSize(I)I
    .registers 3
    .parameter "len"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 5
    .parameter "len"

    .prologue
    .line 49
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 50
    .local v1, total:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 52
    .local v0, leftOver:I
    if-nez v0, :cond_11

    .line 54
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 57
    :goto_10
    return v2

    :cond_11
    sub-int v2, v1, v0

    goto :goto_10
.end method

.method public processByte(B[BI)I
    .registers 10
    .parameter "in"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, resultLen:I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_20

    .line 94
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v1, v2, v5, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 100
    :cond_20
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 102
    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 14
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 125
    if-gez p3, :cond_b

    .line 127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 131
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 133
    .local v2, length:I
    if-lez v2, :cond_22

    .line 135
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_22

    .line 137
    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_22
    const/4 v3, 0x0

    .line 142
    .local v3, resultLen:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 144
    .local v1, gapLen:I
    if-le p3, v1, :cond_65

    .line 146
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 149
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 153
    sub-int/2addr p3, v1

    .line 154
    add-int/2addr p2, v1

    .line 156
    :goto_47
    if-le p3, v0, :cond_65

    .line 158
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 160
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    sub-int/2addr p3, v0

    .line 163
    add-int/2addr p2, v0

    goto :goto_47

    .line 167
    :cond_65
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 171
    return v3
.end method
