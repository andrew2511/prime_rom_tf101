.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_a
    .array-data 0x1
        0x4at
        0xddt
        0xa2t
        0x2ct
        0x79t
        0xe8t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 56
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .registers 7
    .parameter "key"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 316
    new-array v0, v4, [B

    .line 318
    .local v0, result:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 319
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 321
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .registers 4
    .parameter "key"
    .parameter "checksum"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .registers 5
    .parameter "bs"

    .prologue
    .line 341
    array-length v2, p0

    new-array v1, v2, [B

    .line 342
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 344
    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 346
    :cond_12
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    const/16 v5, 0x8

    .line 67
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 68
    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v4, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 71
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_41

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 74
    .local v1, pr:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 75
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 82
    .end local v1           #pr:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v2, sr:Ljava/security/SecureRandom;
    :goto_20
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_47

    .line 84
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 86
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v3, :cond_40

    .line 91
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 92
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 116
    :cond_40
    return-void

    .line 79
    .end local v2           #sr:Ljava/security/SecureRandom;
    .restart local p2
    :cond_41
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .restart local v2       #sr:Ljava/security/SecureRandom;
    goto :goto_20

    .line 97
    :cond_47
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_40

    .line 99
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 100
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 101
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 103
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v3, :cond_76

    .line 105
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v3, v3

    if-eq v3, v5, :cond_40

    .line 107
    :cond_6e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "IV is not 8 octets"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You should not supply an IV for unwrapping"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public unwrap([BII)[B
    .registers 22
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    move v14, v0

    if-eqz v14, :cond_f

    .line 213
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Not set for unwrapping"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 216
    :cond_f
    if-nez p1, :cond_19

    .line 218
    new-instance v14, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v15, "Null pointer as ciphertext"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 221
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v10

    .line 222
    .local v10, blockSize:I
    rem-int v14, p3, v10

    if-eqz v14, :cond_3f

    .line 224
    new-instance v14, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ciphertext not multiple of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 245
    :cond_3f
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-object v14, v0

    sget-object v15, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v12, v14, v15}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 247
    .local v12, param2:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 249
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v8, v0

    .line 251
    .local v8, TEMP3:[B
    const/4 v11, 0x0

    .local v11, currentBytePos:I
    :goto_5a
    move v0, v11

    move/from16 v1, p3

    if-eq v0, v1, :cond_71

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    add-int v15, p2, v11

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v15

    move-object v3, v8

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 251
    add-int/2addr v11, v10

    goto :goto_5a

    .line 257
    :cond_71
    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v7

    .line 260
    .local v7, TEMP2:[B
    const/16 v14, 0x8

    new-array v14, v14, [B

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 262
    array-length v14, v7

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    new-array v6, v14, [B

    .line 264
    .local v6, TEMP1:[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x8

    move-object v0, v7

    move v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x8

    sub-int v16, v16, v17

    move-object v0, v7

    move v1, v14

    move-object v2, v6

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    new-instance v14, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 273
    array-length v14, v6

    new-array v9, v14, [B

    .line 275
    .local v9, WKCKS:[B
    const/4 v11, 0x0

    :goto_d4
    array-length v14, v9

    if-eq v11, v14, :cond_e1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14, v6, v11, v9, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 275
    add-int/2addr v11, v10

    goto :goto_d4

    .line 282
    :cond_e1
    array-length v14, v9

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    new-array v13, v14, [B

    .line 283
    .local v13, result:[B
    const/16 v14, 0x8

    new-array v5, v14, [B

    .line 285
    .local v5, CKStoBeVerified:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x8

    sub-int v16, v16, v17

    move-object v0, v9

    move v1, v14

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length v14, v9

    const/16 v15, 0x8

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object v0, v9

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v14

    if-nez v14, :cond_120

    .line 292
    new-instance v14, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v15, "Checksum inside ciphertext is corrupted"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 297
    :cond_120
    return-object v13
.end method

.method public wrap([BII)[B
    .registers 22
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    move v14, v0

    if-nez v14, :cond_f

    .line 140
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Not initialized for wrapping"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 143
    :cond_f
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v12, v0

    .line 145
    .local v12, keyToBeWrapped:[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v12

    move v3, v14

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v5

    .line 151
    .local v5, CKS:[B
    array-length v14, v12

    array-length v15, v5

    add-int/2addr v14, v15

    new-array v9, v14, [B

    .line 153
    .local v9, WKCKS:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v12

    move v1, v14

    move-object v2, v9

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    const/4 v14, 0x0

    array-length v15, v12

    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v5

    move v1, v14

    move-object v2, v9

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v10

    .line 161
    .local v10, blockSize:I
    array-length v14, v9

    rem-int/2addr v14, v10

    if-eqz v14, :cond_5f

    .line 163
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Not multiple of block length"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 166
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 168
    array-length v14, v9

    new-array v6, v14, [B

    .line 170
    .local v6, TEMP1:[B
    const/4 v11, 0x0

    .local v11, currentBytePos:I
    :goto_72
    array-length v14, v9

    if-eq v11, v14, :cond_7f

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14, v9, v11, v6, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 170
    add-int/2addr v11, v10

    goto :goto_72

    .line 176
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object v14, v0

    array-length v14, v14

    array-length v15, v6

    add-int/2addr v14, v15

    new-array v7, v14, [B

    .line 178
    .local v7, TEMP2:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    move v1, v15

    move-object v2, v7

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    move-object v15, v0

    array-length v15, v15

    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v6

    move v1, v14

    move-object v2, v7

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-static {v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v8

    .line 187
    .local v8, TEMP3:[B
    new-instance v13, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-object v14, v0

    sget-object v15, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v13, v14, v15}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 189
    .local v13, param2:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v13}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 191
    const/4 v11, 0x0

    :goto_d4
    array-length v14, v8

    if-eq v11, v14, :cond_e1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    move-object v14, v0

    invoke-virtual {v14, v8, v11, v8, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 191
    add-int/2addr v11, v10

    goto :goto_d4

    .line 196
    :cond_e1
    return-object v8
.end method
