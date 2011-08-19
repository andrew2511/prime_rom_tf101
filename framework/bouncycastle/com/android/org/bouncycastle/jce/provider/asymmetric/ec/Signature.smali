.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.super Lcom/android/org/bouncycastle/jce/provider/DSABase;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$1;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA512;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA384;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA256;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSAnone;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V
    .registers 4
    .parameter "digest"
    .parameter "signer"
    .parameter "encoder"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/DSABase;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 93
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_1b

    .line 95
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 102
    .local v0, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 104
    if-eqz p2, :cond_23

    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 112
    :goto_1a
    return-void

    .line 99
    .end local v0           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1b
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .restart local v0       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v1, v3, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1a
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 7
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 55
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_14

    .line 57
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 82
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_8
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 83
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 84
    return-void

    .line 63
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_14
    :try_start_14
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 65
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 67
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_25

    .line 69
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_8

    .line 73
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_25
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2d

    .line 76
    .end local v0           #bytes:[B
    :catch_2d
    move-exception v3

    move-object v1, v3

    .line 78
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
