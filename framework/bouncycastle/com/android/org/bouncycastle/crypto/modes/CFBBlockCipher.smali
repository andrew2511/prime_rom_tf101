.class public Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Ljava/lang/Object;
.source "CFBBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .parameter "cipher"
    .parameter "bitBlockSize"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 34
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 37
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 38
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 39
    return-void
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 211
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_f

    .line 213
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_f
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1d

    .line 218
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 226
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_58

    .line 234
    add-int v1, p4, v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 237
    :cond_58
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v1
.end method

.method public encryptBlock([BI[BI)I
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 163
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_f

    .line 165
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_f
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1d

    .line 170
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3c

    .line 180
    add-int v1, p4, v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 186
    :cond_3c
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 12
    .parameter "encrypting"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 69
    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_45

    .line 71
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v3, v0

    .line 72
    .local v3, ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 74
    .local v2, iv:[B
    array-length v4, v2

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v5, v5

    if-ge v4, v5, :cond_30

    .line 77
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v5, v5

    array-length v6, v2

    sub-int/2addr v5, v6

    array-length v6, v2

    invoke-static {v2, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v2

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_38

    .line 80
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v7, v4, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 85
    .end local v1           #i:I
    :cond_30
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v5, v5

    invoke-static {v2, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 90
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 98
    .end local v2           #iv:[B
    .end local v3           #ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :goto_44
    return-void

    .line 94
    :cond_45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 96
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v8, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_44
.end method

.method public processBlock([BI[BI)I
    .registers 6
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_8
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 249
    return-void
.end method
