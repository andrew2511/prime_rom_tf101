.class public Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "JCESecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBKDF2WithHmacSHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And256BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And192BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And128BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd256BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd192BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitAESBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd40BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitRC4;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndTwofish;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd40BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAnd128BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndDES2Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndDES3Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA1AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA1AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESede;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DES;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;,
        Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 3
    .parameter "algName"
    .parameter "algOid"

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 35
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_7

    .line 43
    check-cast p1, Ljavax/crypto/SecretKey;

    .end local p1
    return-object p1

    .line 46
    .restart local p1
    :cond_7
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 10
    .parameter "key"
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p2, :cond_a

    .line 56
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string v5, "keySpec parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_a
    if-nez p1, :cond_14

    .line 60
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string v5, "key parameter is null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_14
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 65
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    .end local p0
    :goto_27
    return-object v4

    .line 70
    .restart local p0
    :cond_28
    const/4 v4, 0x1

    :try_start_29
    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    .line 72
    .local v3, parameters:[Ljava/lang/Class;
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 73
    .local v0, c:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 75
    .local v2, p:[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    aput-object v5, v2, v4

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/spec/KeySpec;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_44} :catch_46

    move-object v4, p0

    goto :goto_27

    .line 79
    .end local v0           #c:Ljava/lang/reflect/Constructor;
    .end local v2           #p:[Ljava/lang/Object;
    .end local v3           #parameters:[Ljava/lang/Class;
    :catch_46
    move-exception v4

    move-object v1, v4

    .line 81
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_a

    .line 91
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key parameter is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 96
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_37
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCESecretKeyFactory;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
