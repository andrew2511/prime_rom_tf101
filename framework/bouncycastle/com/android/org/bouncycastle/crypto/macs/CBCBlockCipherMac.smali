.class public Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 34
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 6
    .parameter "cipher"
    .parameter "macSizeInBits"
    .parameter "padding"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_f
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 96
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 97
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    .line 99
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    .line 101
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 49
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 178
    .local v0, blockSize:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_1c

    .line 183
    :goto_b
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_34

    .line 185
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 186
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_b

    .line 191
    :cond_1c
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_2b

    .line 193
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 194
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 197
    :cond_2b
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 200
    :cond_34
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 202
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 206
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 116
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 219
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_e
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 228
    return-void
.end method

.method public update(B)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 129
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 132
    :cond_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 133
    return-void
.end method

.method public update([BII)V
    .registers 10
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 140
    if-gez p3, :cond_b

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 146
    .local v0, blockSize:I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v1, v0, v2

    .line 148
    .local v1, gapLen:I
    if-le p3, v1, :cond_37

    .line 150
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 154
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 155
    sub-int/2addr p3, v1

    .line 156
    add-int/2addr p2, v1

    .line 158
    :goto_2b
    if-le p3, v0, :cond_37

    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 162
    sub-int/2addr p3, v0

    .line 163
    add-int/2addr p2, v0

    goto :goto_2b

    .line 167
    :cond_37
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 170
    return-void
.end method
