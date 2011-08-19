.class public abstract Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "WrapCipherSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeIvSize:I

.field protected pbeKeySize:I

.field protected pbeType:I

.field protected wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 55
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 65
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 66
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 70
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 72
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V
    .registers 3
    .parameter "wrapEngine"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Wrapper;I)V
    .registers 9
    .parameter "wrapEngine"
    .parameter "ivSize"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 90
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 55
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 65
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 66
    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 70
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 72
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 91
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    .line 92
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    .line 93
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .registers 5
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 108
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
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
    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_34

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_11

    .line 211
    :try_start_9
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v1

    .line 220
    :cond_11
    if-nez v1, :cond_34

    .line 222
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :catch_30
    move-exception v2

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 226
    .end local v0           #i:I
    :cond_34
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 227
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 228
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
    .line 238
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 244
    return-void

    .line 240
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 242
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
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
    .line 145
    instance-of v5, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v5, :cond_61

    .line 147
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v2, v0

    .line 149
    .local v2, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    instance-of v5, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v5, :cond_4e

    .line 151
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3, v5}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 167
    .end local v2           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .local v3, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_16
    instance-of v5, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_28

    .line 169
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v1, v0

    .line 170
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v4, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v3, v4

    .line 173
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_28
    instance-of v5, v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v5, :cond_43

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    if-eqz v5, :cond_43

    .line 175
    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    .line 176
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {p4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 177
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-direct {v4, v3, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v3, v4

    .line 180
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_43
    packed-switch p1, :pswitch_data_82

    .line 192
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "eeek!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :goto_4d
    return-void

    .line 153
    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v2       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_4e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 155
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_16

    .line 159
    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_59
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    .end local v2           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_61
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_16

    .line 183
    :pswitch_6b
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_4d

    .line 186
    :pswitch_72
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Lcom/android/org/bouncycastle/crypto/Wrapper;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_4d

    .line 190
    :pswitch_79
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "engine only valid for wrapping"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_79
        :pswitch_79
        :pswitch_6b
        :pswitch_72
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 133
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
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 16
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 329
    :try_start_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v9, :cond_13

    .line 331
    const/4 v9, 0x0

    array-length v10, p1

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B
    :try_end_9
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_9} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_28
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_34

    move-result-object v3

    .line 351
    .local v3, encoded:[B
    :goto_a
    const/4 v9, 0x3

    if-ne p3, v9, :cond_40

    .line 353
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v9, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 417
    :goto_12
    return-object v9

    .line 335
    .end local v3           #encoded:[B
    :cond_13
    :try_start_13
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lcom/android/org/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1a
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_13 .. :try_end_1a} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_1a} :catch_28
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_1a} :catch_34

    move-result-object v3

    .restart local v3       #encoded:[B
    goto :goto_a

    .line 338
    .end local v3           #encoded:[B
    :catch_1c
    move-exception v9

    move-object v1, v9

    .line 340
    .local v1, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 342
    .end local v1           #e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    :catch_28
    move-exception v9

    move-object v1, v9

    .line 344
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 346
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_34
    move-exception v9

    move-object v2, v9

    .line 348
    .local v2, e2:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 355
    .end local v2           #e2:Ljavax/crypto/IllegalBlockSizeException;
    .restart local v3       #encoded:[B
    :cond_40
    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const/4 v9, 0x2

    if-ne p3, v9, :cond_ac

    .line 361
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 366
    .local v0, bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_50
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 367
    .local v8, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 369
    .local v4, in:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 371
    .local v6, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 373
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .local v7, privKey:Ljava/security/PrivateKey;
    :goto_70
    move-object v9, v7

    .line 403
    goto :goto_12

    .line 381
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_72
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 383
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_70

    .line 385
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_80
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 387
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_70

    .line 389
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_8e
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 391
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_70

    .line 395
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_9c
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a1} :catch_a2

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_70

    .line 398
    .end local v4           #in:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v6           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v7           #privKey:Ljava/security/PrivateKey;
    .end local v8           #s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_a2
    move-exception v9

    move-object v1, v9

    .line 400
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Invalid key encoding."

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 409
    .end local v0           #bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_ac
    :try_start_ac
    const-string v9, "BC"

    invoke-static {p2, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 411
    .local v5, kf:Ljava/security/KeyFactory;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_c0

    .line 413
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    goto/16 :goto_12

    .line 415
    :cond_c0
    const/4 v9, 0x2

    if-ne p3, v9, :cond_10c

    .line 417
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_cb
    .catch Ljava/security/NoSuchProviderException; {:try_start_ac .. :try_end_cb} :catch_ce
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_ac .. :try_end_cb} :catch_ed

    move-result-object v9

    goto/16 :goto_12

    .line 420
    .end local v5           #kf:Ljava/security/KeyFactory;
    :catch_ce
    move-exception v9

    move-object v1, v9

    .line 422
    .local v1, e:Ljava/security/NoSuchProviderException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 430
    .end local v1           #e:Ljava/security/NoSuchProviderException;
    :catch_ed
    move-exception v9

    move-object v2, v9

    .line 432
    .local v2, e2:Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 435
    .end local v2           #e2:Ljava/security/spec/InvalidKeySpecException;
    .restart local v5       #kf:Ljava/security/KeyFactory;
    :cond_10c
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineUpdate([BII[BI)I
    .registers 8
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
    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 293
    .local v1, encoded:[B
    if-nez v1, :cond_e

    .line 295
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    if-nez v2, :cond_19

    .line 302
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B

    move-result-object v2

    .line 306
    :goto_18
    return-object v2

    :cond_19
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lcom/android/org/bouncycastle/crypto/Wrapper;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lcom/android/org/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_20
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_20} :catch_22

    move-result-object v2

    goto :goto_18

    .line 309
    :catch_22
    move-exception v2

    move-object v0, v2

    .line 311
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
