.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private associatedText:[B

.field private blockSize:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private data:Ljava/io/ByteArrayOutputStream;

.field private forEncryption:Z

.field private keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 43
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_26

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_26
    return-void
.end method

.method private calculateMac([BII[B)I
    .registers 15
    .parameter "data"
    .parameter "dataOff"
    .parameter "dataLen"
    .parameter "macBlock"

    .prologue
    .line 257
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v1, v6, v7}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 259
    .local v1, cMac:Lcom/android/org/bouncycastle/crypto/Mac;
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 264
    const/16 v6, 0x10

    new-array v0, v6, [B

    .line 266
    .local v0, b0:[B
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 268
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    or-int/lit8 v7, v7, 0x40

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 271
    :cond_22
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 273
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    const/16 v8, 0xf

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 275
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    move v5, p3

    .line 278
    .local v5, q:I
    const/4 v2, 0x1

    .line 279
    .local v2, count:I
    :goto_52
    if-lez v5, :cond_60

    .line 281
    array-length v6, v0

    sub-int/2addr v6, v2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 282
    ushr-int/lit8 v5, v5, 0x8

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 286
    :cond_60
    const/4 v6, 0x0

    array-length v7, v0

    invoke-interface {v1, v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 291
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 295
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    const v7, 0xff00

    if-ge v6, v7, :cond_a2

    .line 297
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 298
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 300
    const/4 v3, 0x2

    .line 314
    .local v3, extra:I
    :goto_84
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v8, v8

    invoke-interface {v1, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 316
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    add-int/2addr v6, v3

    rem-int/lit8 v3, v6, 0x10

    .line 317
    if-eqz v3, :cond_ce

    .line 319
    const/4 v4, 0x0

    .local v4, i:I
    :goto_96
    const/16 v6, 0x10

    sub-int/2addr v6, v3

    if-eq v4, v6, :cond_ce

    .line 321
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 304
    .end local v3           #extra:I
    .end local v4           #i:I
    :cond_a2
    const/4 v6, -0x1

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 305
    const/4 v6, -0x2

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 306
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 307
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 308
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 309
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 311
    const/4 v3, 0x6

    .restart local v3       #extra:I
    goto :goto_84

    .line 329
    .end local v3           #extra:I
    :cond_ce
    invoke-interface {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 331
    const/4 v6, 0x0

    invoke-interface {v1, p4, v6}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v6

    return v6
.end method

.method private hasAssociatedText()Z
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v0, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 116
    .local v1, text:[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII)[B

    move-result-object v0

    .line 118
    .local v0, enc:[B
    array-length v2, v0

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 122
    array-length v2, v0

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 139
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v1, [B

    .line 141
    .local v0, mac:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 4
    .parameter "len"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 159
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 3
    .parameter "len"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 67
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v2, :cond_25

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    move-object v1, v0

    .line 71
    .local v1, param:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 72
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    .line 73
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 74
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 89
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    :goto_24
    return-void

    .line 76
    :cond_25
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_44

    .line 78
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v1, v0

    .line 80
    .local v1, param:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    .line 82
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 83
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    goto :goto_24

    .line 87
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid parameters passed to CCM"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processByte(B[BI)I
    .registers 5
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
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 7
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII)[B
    .registers 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 166
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-nez v8, :cond_e

    .line 168
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "CCM cipher unitialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    :cond_e
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v8}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 172
    .local v2, ctrCipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v8, [B

    .line 175
    .local v5, iv:[B
    const/16 v8, 0xf

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    .line 177
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    invoke-static {v8, v11, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v9, v10, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v2, v8, v9}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 181
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v8, :cond_7c

    .line 183
    move v4, p2

    .line 184
    .local v4, index:I
    const/4 v7, 0x0

    .line 186
    .local v7, outOff:I
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v8, p3

    new-array v6, v8, [B

    .line 188
    .local v6, out:[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 190
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    :goto_50
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v8, p3, v8

    if-ge v4, v8, :cond_60

    .line 194
    invoke-interface {v2, p1, v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 195
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    .line 196
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_50

    .line 199
    :cond_60
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    .line 201
    .local v0, block:[B
    sub-int v8, p3, v4

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-interface {v2, v0, v11, v0, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 205
    sub-int v8, p3, v4

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    sub-int v8, p3, v4

    add-int/2addr v7, v8

    .line 209
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v9, v6

    sub-int/2addr v9, v7

    invoke-static {v8, v11, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :cond_7b
    return-object v6

    .line 213
    .end local v0           #block:[B
    .end local v4           #index:I
    .end local v6           #out:[B
    .end local v7           #outOff:I
    :cond_7c
    move v4, p2

    .line 214
    .restart local v4       #index:I
    const/4 v7, 0x0

    .line 216
    .restart local v7       #outOff:I
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v8, p3, v8

    new-array v6, v8, [B

    .line 218
    .restart local v6       #out:[B
    add-int v8, p2, p3

    iget v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v10, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {p1, v8, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 222
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v3, i:I
    :goto_99
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v8, v8

    if-eq v3, v8, :cond_a5

    .line 224
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v11, v8, v3

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 227
    :cond_a5
    :goto_a5
    array-length v8, v6

    iget v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_b5

    .line 229
    invoke-interface {v2, p1, v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 230
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    .line 231
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_a5

    .line 234
    :cond_b5
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    .line 236
    .restart local v0       #block:[B
    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-interface {v2, v0, v11, v0, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 240
    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v8, [B

    .line 244
    .local v1, calculatedMacBlock:[B
    array-length v8, v6

    invoke-direct {p0, v6, v11, v8, v1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 246
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_7b

    .line 248
    new-instance v8, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "mac check in CCM failed"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 129
    return-void
.end method
