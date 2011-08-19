.class public Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 32
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 35
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 36
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 37
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .registers 11
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
    .line 207
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v3, p2

    array-length v4, p1

    if-le v3, v4, :cond_e

    .line 209
    new-instance v3, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v4, "input buffer too short"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 219
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v3, :cond_30

    .line 221
    add-int v3, p4, v0

    aget-byte v4, p3, v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 229
    :cond_30
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 230
    .local v2, tmp:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 231
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 233
    return v1
.end method

.method private encryptBlock([BI[BI)I
    .registers 11
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
    const/4 v5, 0x0

    .line 164
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_f

    .line 166
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_23

    .line 175
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 178
    :cond_23
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {v2, v3, v5, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 183
    .local v1, length:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .parameter "encrypting"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 66
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2f

    .line 68
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v2, v0

    .line 69
    .local v2, ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 71
    .local v1, iv:[B
    array-length v3, v1

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-eq v3, v4, :cond_1c

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "initialisation vector must be the same length as block size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_1c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 80
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 88
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :goto_2e
    return-void

    .line 84
    :cond_2f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 86
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2e
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
    .line 130
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_8
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 143
    return-void
.end method
