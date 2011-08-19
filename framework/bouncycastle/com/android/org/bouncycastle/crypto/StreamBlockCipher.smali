.class public Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private oneByte:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    .line 24
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "block cipher block size != 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 30
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 43
    return-void
.end method

.method public processBytes([BII[BI)V
    .registers 10
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 89
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_d

    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too small in processBytes()"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-eq v0, p3, :cond_1c

    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v2, p2, v0

    add-int v3, p5, v0

    invoke-interface {v1, p1, v2, p4, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 98
    :cond_1c
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 107
    return-void
.end method

.method public returnByte(B)B
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    aput-byte p1, v0, v3

    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->oneByte:[B

    aget-byte v0, v0, v3

    return v0
.end method
