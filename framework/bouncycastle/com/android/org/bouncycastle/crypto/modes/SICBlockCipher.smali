.class public Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Ljava/lang/Object;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private final cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 31
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 32
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 53
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_23

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v2, v0

    .line 56
    .local v2, ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 57
    .local v1, iv:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 60
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 66
    return-void

    .line 64
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SIC mode requires ParametersWithIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processBlock([BI[BI)I
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

    .line 82
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 87
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    array-length v3, v3

    if-ge v1, v3, :cond_21

    .line 89
    add-int v3, p4, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte v4, v4, v1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 92
    :cond_21
    const/4 v0, 0x1

    .line 94
    .local v0, carry:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_28
    if-ltz v1, :cond_41

    .line 96
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v2, v3, v0

    .line 98
    .local v2, x:I
    const/16 v3, 0xff

    if-le v2, v3, :cond_3f

    .line 100
    const/4 v0, 0x1

    .line 107
    :goto_37
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 94
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 104
    :cond_3f
    const/4 v0, 0x0

    goto :goto_37

    .line 110
    .end local v2           #x:I
    :cond_41
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    return v3
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 118
    return-void
.end method
