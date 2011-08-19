.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.super Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECMQV;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDHC;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDH;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECGOST3410;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDSA;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$EC;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithm"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 7
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 99
    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_24

    .line 103
    :try_start_4
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 106
    .local v1, key:Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 119
    .end local v1           #key:Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
    :goto_17
    return-object v2

    .line 108
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_24
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_32

    .line 115
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V

    goto :goto_17

    .line 117
    .restart local p1
    :cond_32
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_40

    .line 119
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V

    goto :goto_17

    .line 122
    .restart local p1
    :cond_40
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 7
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 129
    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_24

    .line 133
    :try_start_4
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    .line 136
    .local v1, key:Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 149
    .end local v1           #key:Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    :goto_17
    return-object v2

    .line 138
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 140
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_24
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    if-eqz v2, :cond_32

    .line 145
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;)V

    goto :goto_17

    .line 147
    .restart local p1
    :cond_32
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v2, :cond_40

    .line 149
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V

    goto :goto_17

    .line 152
    .restart local p1
    :cond_40
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 10
    .parameter "key"
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 54
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PKCS#8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 56
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 88
    :goto_1d
    return-object v3

    .line 58
    :cond_1e
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X.509"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 60
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_1d

    .line 62
    :cond_3c
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7e

    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_7e

    .line 64
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    move-object v2, v0

    .line 65
    .local v2, k:Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 67
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_1d

    .line 71
    :cond_60
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 73
    .local v1, implicitSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_1d

    .line 76
    .end local v1           #implicitSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v2           #k:Ljava/security/interfaces/ECPublicKey;
    :cond_7e
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c2

    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v3, :cond_c2

    .line 78
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    move-object v2, v0

    .line 80
    .local v2, k:Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 82
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto/16 :goto_1d

    .line 86
    :cond_a3
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 88
    .restart local v1       #implicitSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto/16 :goto_1d

    .line 92
    .end local v1           #implicitSpec:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v2           #k:Ljava/security/interfaces/ECPrivateKey;
    :cond_c2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 37
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_c

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    .line 43
    :goto_b
    return-object v0

    .line 41
    .restart local p1
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_18

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    goto :goto_b

    .line 46
    .restart local p1
    :cond_18
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
