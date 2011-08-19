.class public Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEStreamCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd40BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$PBEWithSHAAnd128BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher$RC4;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 8
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 64
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 66
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 67
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 84
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V
    .registers 8
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 64
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 66
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 67
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    .line 74
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 75
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"

    .prologue
    .line 371
    if-eqz p3, :cond_c

    .line 373
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 376
    :cond_c
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 378
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 350
    if-eqz p3, :cond_d

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    .line 354
    .local v0, out:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    move-object v1, v0

    .line 361
    .end local v0           #out:[B
    :goto_c
    return-object v1

    .line 359
    :cond_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 361
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_c
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 99
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 2
    .parameter "inputLen"

    .prologue
    .line 105
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_1b

    .line 112
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1b

    .line 116
    :try_start_8
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 117
    .local v1, engineParams:Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    move-object v2, v1

    .line 128
    .end local v1           #engineParams:Ljava/security/AlgorithmParameters;
    :goto_16
    return-object v2

    .line 121
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_16

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    goto :goto_16
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_35

    .line 274
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_11

    .line 278
    :try_start_9
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v2

    .line 287
    :cond_11
    if-nez v2, :cond_35

    .line 289
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    :catch_30
    move-exception v3

    move-object v0, v3

    .line 274
    .local v0, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_35
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 294
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 295
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 311
    return-void

    .line 307
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 15
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 165
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 166
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 168
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 173
    instance-of v6, p2, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_2f

    .line 175
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key for algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not suitable for symmetric enryption."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_2f
    instance-of v6, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v6, :cond_c1

    .line 180
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v3, v0

    .line 182
    .local v3, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    if-eqz v6, :cond_9f

    .line 184
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 191
    :goto_47
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    if-eqz v6, :cond_a6

    .line 193
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 194
    .local v4, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 206
    .end local p3
    :goto_60
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_6c

    .line 208
    move-object v0, v4

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 225
    .end local v3           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_6c
    :goto_6c
    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    if-eqz v6, :cond_94

    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v6, :cond_94

    .line 227
    move-object v2, p4

    .line 229
    .local v2, ivRandom:Ljava/security/SecureRandom;
    if-nez v2, :cond_7c

    .line 231
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 234
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    :cond_7c
    if-eq p1, v9, :cond_81

    const/4 v6, 0x3

    if-ne p1, v6, :cond_f4

    .line 236
    :cond_81
    iget v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-array v1, v6, [B

    .line 238
    .local v1, iv:[B
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 239
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v5, v4, v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 240
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v5, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v5

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v4, v5

    .line 248
    .end local v1           #iv:[B
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_94
    packed-switch p1, :pswitch_data_10a

    .line 259
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "eeek!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :goto_9e
    return-void

    .line 188
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p3
    :cond_9f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_47

    .line 196
    :cond_a6
    instance-of v6, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_b9

    .line 198
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p3, v6}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 199
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    .end local p3
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_60

    .line 203
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_b9
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "PBE requires PBE parameters to be set."

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 211
    .end local v3           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_c1
    if-nez p3, :cond_cd

    .line 213
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_6c

    .line 215
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_cd
    instance-of v6, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_ec

    .line 217
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 218
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v4

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_6c

    .line 222
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3
    :cond_ec
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unknown parameter type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    .end local p3
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_f4
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "no IV set when one expected"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_fc
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v6, v9, v4}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_9e

    .line 256
    :pswitch_102
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_9e

    .line 248
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_102
        :pswitch_fc
        :pswitch_102
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 137
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_21
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 152
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_27
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .registers 13
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V
    :try_end_a
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_a} :catch_b

    .line 337
    return p3

    .line 339
    :catch_b
    move-exception v0

    move-object v6, v0

    .line 341
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 10
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 318
    new-array v4, p3, [B

    .line 320
    .local v4, out:[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)V

    .line 322
    return-object v4
.end method
