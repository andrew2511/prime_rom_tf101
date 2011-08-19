.class public Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source "EAXBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final cTAG:B = 0x2t

.field private static final hTAG:B = 0x1t

.field private static final nTAG:B


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

.field private forEncryption:Z

.field private mac:Lcom/android/org/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/macs/CMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 60
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    .line 61
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    .line 65
    return-void
.end method

.method private calculateMac()V
    .registers 6

    .prologue
    .line 134
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v2, [B

    .line 135
    .local v1, outC:[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 139
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    aget-byte v4, v1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 141
    :cond_24
    return-void
.end method

.method private process(B[BI)I
    .registers 10
    .parameter "b"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v5, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 266
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v2

    if-ne v1, v2, :cond_48

    .line 270
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_36

    .line 272
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v1, v2, v5, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 274
    .local v0, size:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, p2, p3, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 283
    :goto_25
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 284
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 289
    .end local v0           #size:I
    :goto_35
    return v1

    .line 278
    :cond_36
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v2, v5, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 280
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v1, v2, v5, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .restart local v0       #size:I
    goto :goto_25

    .end local v0           #size:I
    :cond_48
    move v1, v5

    .line 289
    goto :goto_35
.end method

.method private reset(Z)V
    .registers 6
    .parameter "clearMac"

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    .line 154
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 157
    if-eqz p1, :cond_19

    .line 159
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 162
    :cond_19
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v1, [B

    .line 163
    .local v0, tag:[B
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 164
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 165
    return-void
.end method

.method private verifyMac([BI)Z
    .registers 6
    .parameter "mac"
    .parameter "off"

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_14

    .line 296
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v1, v1, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_11

    .line 298
    const/4 v1, 0x0

    .line 302
    :goto_10
    return v1

    .line 294
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_14
    const/4 v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 190
    .local v0, extra:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 192
    .local v1, tmp:[B
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 194
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_3b

    .line 196
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v6, v1, v6}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 197
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 199
    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v6, v0}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 203
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 205
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int v3, p2, v0

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 209
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v2, v0

    .line 232
    :goto_3a
    return v2

    .line 213
    :cond_3b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v2, :cond_63

    .line 215
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v4, v0, v4

    invoke-interface {v2, v3, v6, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 217
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v6, v1, v6}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 218
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 220
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    invoke-static {v1, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    :cond_63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 225
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v3, v0, v3

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 227
    new-instance v2, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in EAX failed"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_7a
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 232
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    goto :goto_3a
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/EAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getMac()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 238
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    new-array v0, v1, [B

    .line 240
    .local v0, mac:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 4
    .parameter "len"

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_b

    .line 254
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 258
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_a
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 4
    .parameter "len"

    .prologue
    .line 247
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 13
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    .line 90
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v6, :cond_75

    .line 92
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    move-object v4, v0

    .line 94
    .local v4, param:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    .line 95
    .local v3, nonce:[B
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    .line 96
    .local v1, associatedText:[B
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 97
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 113
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v2, keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_20
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v5, v6, [B

    .line 115
    .local v5, tag:[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v6, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 116
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    sub-int/2addr v6, v9

    aput-byte v9, v5, v6

    .line 117
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v6, v5, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 118
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v7, v1

    invoke-interface {v6, v1, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 119
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    invoke-interface {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 121
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    sub-int/2addr v6, v9

    aput-byte v8, v5, v6

    .line 122
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v6, v5, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 123
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v7, v3

    invoke-interface {v6, v3, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 124
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 126
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    sub-int/2addr v6, v9

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    .line 127
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v6, v5, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 129
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v7, v2, v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v6, v9, v7}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 130
    return-void

    .line 99
    .end local v1           #associatedText:[B
    .end local v2           #keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v3           #nonce:[B
    .end local v5           #tag:[B
    :cond_75
    instance-of v6, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_92

    .line 101
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 103
    .local v4, param:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 104
    .restart local v3       #nonce:[B
    new-array v1, v8, [B

    .line 105
    .restart local v1       #associatedText:[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 106
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 107
    .restart local v2       #keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_20

    .line 110
    .end local v1           #associatedText:[B
    .end local v2           #keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v3           #nonce:[B
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid parameters passed to EAX"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public processByte(B[BI)I
    .registers 5
    .parameter "in"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
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
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, resultLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-eq v0, p3, :cond_12

    .line 180
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_12
    return v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 146
    return-void
.end method
