.class public Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .parameter "cipher"

    .prologue
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 4
    .parameter "cipher"
    .parameter "hash"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 7
    .parameter "cipher"
    .parameter "hash"
    .parameter "mgf1Hash"
    .parameter "encodingParams"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 55
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 56
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 58
    if-eqz p4, :cond_18

    .line 60
    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 63
    :cond_18
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 4
    .parameter "cipher"
    .parameter "hash"
    .parameter "encodingParams"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 45
    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .parameter "i"
    .parameter "sp"

    .prologue
    .line 301
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 302
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 303
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 305
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 13
    .parameter "Z"
    .parameter "zOff"
    .parameter "zLen"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 316
    new-array v3, p4, [B

    .line 317
    .local v3, mask:[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 318
    .local v2, hashBuf:[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 319
    .local v0, C:[B
    const/4 v1, 0x0

    .line 321
    .local v1, counter:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 325
    :cond_14
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 327
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 328
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 329
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 331
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    array-length v4, v2

    div-int v4, p4, v4

    if-lt v1, v4, :cond_14

    .line 335
    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_54

    .line 337
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 339
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 340
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 341
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 343
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    :cond_54
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .registers 15
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 216
    .local v1, data:[B
    array-length v6, v1

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v7

    if-ge v6, v7, :cond_32

    .line 218
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    new-array v0, v6, [B

    .line 220
    .local v0, block:[B
    array-length v6, v0

    array-length v7, v1

    sub-int/2addr v6, v7

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_20
    array-length v6, v0

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_34

    .line 229
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 224
    .end local v0           #block:[B
    :cond_32
    move-object v0, v1

    .restart local v0       #block:[B
    goto :goto_20

    .line 235
    :cond_34
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 238
    .local v3, mask:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_54

    .line 240
    aget-byte v6, v0, v2

    aget-byte v7, v3, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 246
    :cond_54
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    array-length v7, v0

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v0, v9, v6, v7}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 248
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v6

    :goto_63
    array-length v6, v0

    if-eq v2, v6, :cond_76

    .line 250
    aget-byte v6, v0, v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int v7, v2, v7

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 256
    :cond_76
    const/4 v2, 0x0

    :goto_77
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v2, v6, :cond_93

    .line 258
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v6, v6, v2

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    add-int/2addr v7, v2

    aget-byte v7, v0, v7

    if-eq v6, v7, :cond_90

    .line 260
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data hash wrong"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 269
    :cond_93
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/lit8 v5, v6, 0x2

    .local v5, start:I
    :goto_98
    array-length v6, v0

    if-eq v5, v6, :cond_9f

    .line 271
    aget-byte v6, v0, v5

    if-eqz v6, :cond_c0

    .line 277
    :cond_9f
    array-length v6, v0

    sub-int/2addr v6, v10

    if-ge v5, v6, :cond_a7

    aget-byte v6, v0, v5

    if-eq v6, v10, :cond_c3

    .line 279
    :cond_a7
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data start wrong "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 269
    :cond_c0
    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    .line 282
    :cond_c3
    add-int/lit8 v5, v5, 0x1

    .line 287
    array-length v6, v0

    sub-int/2addr v6, v5

    new-array v4, v6, [B

    .line 289
    .local v4, output:[B
    array-length v6, v4

    invoke-static {v0, v5, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    return-object v4
.end method

.method public encodeBlock([BII)[B
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 146
    .local v0, block:[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v6

    aput-byte v6, v0, v4

    .line 160
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 167
    .local v3, seed:[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 174
    .local v2, mask:[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, i:I
    :goto_3c
    array-length v4, v0

    if-eq v1, v4, :cond_4f

    .line 176
    aget-byte v4, v0, v1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 182
    :cond_4f
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 190
    const/4 v1, 0x0

    :goto_65
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_75

    .line 192
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 195
    :cond_75
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 95
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_14

    .line 97
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 101
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public getOutputBlockSize()I
    .registers 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 109
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_c

    move v1, v0

    .line 115
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_b
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 75
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_16

    .line 77
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 79
    .local v1, rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 86
    .end local v1           #rParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 88
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 89
    return-void

    .line 83
    :cond_16
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_e
.end method

.method public processBlock([BII)[B
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 131
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method
