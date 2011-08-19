.class public Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 8
    .parameter "provider"
    .parameter "keyAlgorithm"
    .parameter "certAlgorithm"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 83
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 84
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 85
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 86
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 105
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 157
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 158
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 162
    if-eqz p1, :cond_3d

    .line 164
    :try_start_34
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 175
    :goto_3c
    return-void

    .line 168
    :cond_3d
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_3c

    .line 171
    :catch_46
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .registers 13
    .parameter "oid"
    .parameter "salt"
    .parameter "itCount"
    .parameter "password"
    .parameter "wrongPkcs12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1491
    .local v2, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1492
    .local v0, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1493
    .local v4, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 1494
    .local v1, key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1496
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1497
    .local v3, mac:Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1498
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1499
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 6
    .parameter "pubKey"

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 185
    .local v1, info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v2

    .line 187
    .end local v1           #info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 189
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .registers 20
    .parameter "forEncryption"
    .parameter "algId"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, algorithm:Ljava/lang/String;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v9, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 640
    .local v9, pbeParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 644
    .local v10, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_1b
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v2, v11}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v7

    .line 645
    .local v7, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-direct {v4, v11, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 648
    .local v4, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v7, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 650
    .local v6, key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 652
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v2, v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 653
    .local v3, cipher:Ljavax/crypto/Cipher;
    if-eqz p1, :cond_53

    const/4 v11, 0x1

    move v8, v11

    .line 654
    .local v8, mode:I
    :goto_48
    invoke-virtual {v3, v8, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 655
    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_51} :catch_56

    move-result-object v11

    return-object v11

    .line 653
    .end local v8           #mode:I
    :cond_53
    const/4 v11, 0x2

    move v8, v11

    goto :goto_48

    .line 657
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6           #key:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .end local v7           #keyFact:Ljavax/crypto/SecretKeyFactory;
    :catch_56
    move-exception v11

    move-object v5, v11

    .line 659
    .local v5, e:Ljava/lang/Exception;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception decrypting data - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .registers 6

    .prologue
    .line 201
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 203
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 204
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 206
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 209
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 212
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 215
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 219
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 8
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 238
    .local v2, k:Ljava/security/Key;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 240
    .local v0, c:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_20

    .line 242
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_20
    if-eqz v2, :cond_44

    .line 247
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 250
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 252
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_34
    if-eqz v0, :cond_44

    .line 254
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v1           #id:Ljava/lang/String;
    :cond_44
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "alias"

    .prologue
    .line 273
    if-nez p1, :cond_a

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 283
    .local v0, c:Ljava/security/cert/Certificate;
    if-nez v0, :cond_26

    .line 285
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 288
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 296
    .end local v1           #id:Ljava/lang/String;
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_26
    :goto_26
    return-object v0

    .line 292
    .restart local v1       #id:Ljava/lang/String;
    :cond_27
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0       #c:Ljava/security/cert/Certificate;
    goto :goto_26
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .parameter "cert"

    .prologue
    .line 302
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 303
    .local v0, c:Ljava/util/Enumeration;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 305
    .local v1, k:Ljava/util/Enumeration;
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 307
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 308
    .local v3, tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    .local v2, ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v2

    .line 330
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :goto_25
    return-object v4

    .line 316
    :cond_26
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 317
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 319
    :cond_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 321
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 322
    .restart local v3       #tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .restart local v2       #ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object v4, v2

    .line 326
    goto :goto_25

    .line 330
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :cond_4c
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 22
    .parameter "alias"

    .prologue
    .line 336
    if-nez p1, :cond_a

    .line 338
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 341
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 343
    const/16 v17, 0x0

    .line 434
    .end local p0
    .end local p1
    :goto_12
    return-object v17

    .line 346
    .restart local p0
    .restart local p1
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 348
    .local v6, c:Ljava/security/cert/Certificate;
    if-eqz v6, :cond_f1

    .line 350
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 352
    .end local p1
    .local v9, cs:Ljava/util/Vector;
    :goto_1e
    if-eqz v6, :cond_cf

    .line 354
    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    .line 355
    .local v16, x509c:Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 357
    .local v13, nextC:Ljava/security/cert/Certificate;
    sget-object v17, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 358
    .local v5, bytes:[B
    if-eqz v5, :cond_75

    .line 362
    :try_start_32
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 364
    .local v3, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 365
    .local v4, authBytes:[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v3           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 367
    .restart local v3       #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 368
    .local v12, id:Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_75

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #nextC:Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_75} :catch_bf

    .line 380
    .end local v3           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #authBytes:[B
    .end local v12           #id:Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_75
    if-nez v13, :cond_b7

    .line 385
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 386
    .local v11, i:Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 388
    .local v14, s:Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b7

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 392
    .local v10, e:Ljava/util/Enumeration;
    :cond_8f
    :goto_8f
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_b7

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 395
    .local v8, crt:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 396
    .local v15, sub:Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8f

    .line 400
    :try_start_af
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_f5

    .line 401
    move-object v13, v8

    .line 413
    .end local v8           #crt:Ljava/security/cert/X509Certificate;
    .end local v10           #e:Ljava/util/Enumeration;
    .end local v11           #i:Ljava/security/Principal;
    .end local v14           #s:Ljava/security/Principal;
    .end local v15           #sub:Ljava/security/Principal;
    :cond_b7
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 414
    if-eq v13, v6, :cond_cc

    .line 416
    move-object v6, v13

    goto/16 :goto_1e

    .line 374
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    :catch_bf
    move-exception v17

    move-object/from16 v10, v17

    .line 376
    .local v10, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 420
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_cc
    const/4 v6, 0x0

    goto/16 :goto_1e

    .line 424
    .end local v5           #bytes:[B
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    .end local v16           #x509c:Ljava/security/cert/X509Certificate;
    :cond_cf
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object v7, v0

    .line 426
    .local v7, certChain:[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .end local p0
    .local v11, i:I
    :goto_d9
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_ed

    .line 428
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    aput-object p0, v7, v11

    .line 426
    add-int/lit8 v11, v11, 0x1

    goto :goto_d9

    :cond_ed
    move-object/from16 v17, v7

    .line 431
    goto/16 :goto_12

    .line 434
    .end local v7           #certChain:[Ljava/security/cert/Certificate;
    .end local v9           #cs:Ljava/util/Vector;
    .end local v11           #i:I
    .restart local p0
    .restart local p1
    :cond_f1
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 404
    .end local p1
    .restart local v5       #bytes:[B
    .restart local v8       #crt:Ljava/security/cert/X509Certificate;
    .restart local v9       #cs:Ljava/util/Vector;
    .local v10, e:Ljava/util/Enumeration;
    .local v11, i:Ljava/security/Principal;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    .restart local v14       #s:Ljava/security/Principal;
    .restart local v15       #sub:Ljava/security/Principal;
    .restart local v16       #x509c:Ljava/security/cert/X509Certificate;
    :catch_f5
    move-exception v17

    goto :goto_8f
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "alias"

    .prologue
    .line 440
    if-nez p1, :cond_a

    .line 441
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 444
    const/4 v0, 0x0

    .line 447
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1b
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 455
    if-nez p1, :cond_a

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Key;

    return-object p0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 59
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    if-nez p1, :cond_3

    .line 1103
    .end local p1
    :cond_2
    return-void

    .line 673
    .restart local p1
    :cond_3
    if-nez p2, :cond_d

    .line 675
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 678
    :cond_d
    new-instance v27, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 680
    .local v27, bufIn:Ljava/io/BufferedInputStream;
    const/16 v5, 0xa

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 682
    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedInputStream;->read()I

    move-result v40

    .line 684
    .local v40, head:I
    const/16 v5, 0x30

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_31

    .line 686
    new-instance v5, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 689
    :cond_31
    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedInputStream;->reset()V

    .line 691
    new-instance v24, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 692
    .local v24, bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v47

    check-cast v47, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 693
    .local v47, obj:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 694
    .local v25, bag:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v42

    .line 695
    .local v42, info:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v32, Ljava/util/Vector;

    invoke-direct/range {v32 .. v32}, Ljava/util/Vector;-><init>()V

    .line 696
    .local v32, chain:Ljava/util/Vector;
    const/16 v55, 0x0

    .line 697
    .local v55, unmarkedKey:Z
    const/4 v15, 0x0

    .line 699
    .local v15, wrongPKCS12Zero:Z
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 701
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v45

    .line 702
    .local v45, mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v35

    .line 703
    .local v35, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v18

    .line 704
    .local v18, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v6

    .line 705
    .local v6, salt:[B
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 707
    .local v7, itCount:I
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    .line 711
    .local v10, data:[B
    :try_start_80
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v10}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v52

    .line 712
    .local v52, res:[B
    invoke-virtual/range {v35 .. v35}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v36

    .line 714
    .local v36, dig:[B
    move-object/from16 v0, v52

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 716
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_ab

    .line 718
    new-instance v5, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    .end local v6           #salt:[B
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a7} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a7} :catch_c8

    .line 732
    .end local v36           #dig:[B
    .end local v52           #res:[B
    :catch_a7
    move-exception v5

    move-object/from16 v37, v5

    .line 734
    .local v37, e:Ljava/io/IOException;
    throw v37

    .line 722
    .end local v37           #e:Ljava/io/IOException;
    .restart local v6       #salt:[B
    .restart local v36       #dig:[B
    .restart local v52       #res:[B
    :cond_ab
    :try_start_ab
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v10}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v52

    .line 724
    move-object/from16 v0, v52

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_e8

    .line 726
    new-instance v5, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    .end local v6           #salt:[B
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c8} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c8} :catch_c8

    .line 736
    .end local v36           #dig:[B
    .end local v52           #res:[B
    :catch_c8
    move-exception v5

    move-object/from16 v37, v5

    .line 738
    .local v37, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    .end local v7           #itCount:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 729
    .end local v37           #e:Ljava/lang/Exception;
    .restart local v6       #salt:[B
    .restart local v7       #itCount:I
    .restart local v36       #dig:[B
    .restart local v52       #res:[B
    :cond_e8
    const/4 v15, 0x1

    .line 742
    .end local v6           #salt:[B
    .end local v7           #itCount:I
    .end local v10           #data:[B
    .end local v18           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v35           #dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v36           #dig:[B
    .end local v45           #mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v52           #res:[B
    :cond_e9
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 743
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 745
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_596

    .line 747
    new-instance v24, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v24           #bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 749
    .restart local v24       #bIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v22, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 750
    .local v22, authSafe:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v28

    .line 752
    .local v28, c:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v41, 0x0

    .local v41, i:I
    :goto_131
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move/from16 v0, v41

    move v1, v5

    if-eq v0, v1, :cond_596

    .line 754
    aget-object v5, v28, v41

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d0

    .line 756
    new-instance v34, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    aget-object v5, v28, v41

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 757
    .local v34, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v53

    check-cast v53, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 759
    .local v53, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v43, 0x0

    .local v43, j:I
    :goto_164
    invoke-virtual/range {v53 .. v53}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    move/from16 v0, v43

    move v1, v5

    if-eq v0, v1, :cond_592

    .line 761
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v53

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 762
    .local v23, b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_296

    .line 764
    new-instance v38, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 765
    .local v38, eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p2

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v51

    .line 770
    .local v51, privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v51

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v26, v0

    .line 771
    .local v26, bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v19, 0x0

    .line 772
    .local v19, alias:Ljava/lang/String;
    const/16 v44, 0x0

    .line 774
    .local v44, localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    if-eqz v5, :cond_252

    .line 776
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v37

    .line 777
    .local v37, e:Ljava/util/Enumeration;
    :cond_1c6
    :goto_1c6
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_252

    .line 779
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 780
    .local v54, sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 781
    .local v17, aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 782
    .local v21, attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v20, 0x0

    .line 784
    .local v20, attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-lez v5, :cond_220

    .line 786
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 788
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v39

    .line 789
    .local v39, existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v39, :cond_217

    .line 792
    invoke-interface/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_220

    .line 794
    new-instance v5, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 800
    :cond_217
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 804
    .end local v39           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_220
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23f

    .line 806
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c6

    .line 809
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_23f
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c6

    .line 811
    move-object/from16 v0, v20

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v44, v0

    goto/16 :goto_1c6

    .line 816
    .end local v17           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v21           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v37           #e:Ljava/util/Enumeration;
    .end local v54           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_252
    if-eqz v44, :cond_285

    .line 818
    new-instance v46, Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 820
    .local v46, name:Ljava/lang/String;
    if-nez v19, :cond_277

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    .end local v19           #alias:Ljava/lang/String;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v38           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v44           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v46           #name:Ljava/lang/String;
    .end local v51           #privKey:Ljava/security/PrivateKey;
    :goto_273
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_164

    .line 826
    .restart local v19       #alias:Ljava/lang/String;
    .restart local v26       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v38       #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v44       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v46       #name:Ljava/lang/String;
    .restart local v51       #privKey:Ljava/security/PrivateKey;
    :cond_277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_273

    .line 831
    .end local v46           #name:Ljava/lang/String;
    :cond_285
    const/16 v55, 0x1

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    const-string v6, "unmarked"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_273

    .line 835
    .end local v19           #alias:Ljava/lang/String;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v38           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v44           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v51           #privKey:Ljava/security/PrivateKey;
    :cond_296
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2aa

    .line 837
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_273

    .line 841
    :cond_2aa
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 842
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_273

    .line 846
    .end local v23           #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v34           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v43           #j:I
    .end local v53           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_2d0
    aget-object v5, v28, v41

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54e

    .line 848
    new-instance v33, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v5, v28, v41

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 849
    .local v33, d:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v12, 0x0

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v14, p2

    invoke-virtual/range {v11 .. v16}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v48

    .line 851
    .local v48, octets:[B
    invoke-static/range {v48 .. v48}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v53

    check-cast v53, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 853
    .restart local v53       #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v43, 0x0

    .restart local v43       #j:I
    :goto_30c
    invoke-virtual/range {v53 .. v53}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    move/from16 v0, v43

    move v1, v5

    if-eq v0, v1, :cond_592

    .line 855
    new-instance v23, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v53

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 857
    .restart local v23       #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33e

    .line 859
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 853
    :goto_33b
    add-int/lit8 v43, v43, 0x1

    goto :goto_30c

    .line 861
    :cond_33e
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43a

    .line 863
    new-instance v38, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 864
    .restart local v38       #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p2

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v51

    .line 869
    .restart local v51       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v51

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v26, v0

    .line 870
    .restart local v26       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v19, 0x0

    .line 871
    .restart local v19       #alias:Ljava/lang/String;
    const/16 v44, 0x0

    .line 873
    .restart local v44       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v37

    .line 874
    .restart local v37       #e:Ljava/util/Enumeration;
    :cond_37e
    :goto_37e
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_40a

    .line 876
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 877
    .restart local v54       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 878
    .restart local v17       #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 879
    .restart local v21       #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v20, 0x0

    .line 881
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-lez v5, :cond_3d8

    .line 883
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 885
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v39

    .line 886
    .restart local v39       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v39, :cond_3cf

    .line 889
    invoke-interface/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d8

    .line 891
    new-instance v5, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 897
    :cond_3cf
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 901
    .end local v39           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_3d8
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f7

    .line 903
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37e

    .line 906
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_3f7
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37e

    .line 908
    move-object/from16 v0, v20

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v44, v0

    goto/16 :goto_37e

    .line 912
    .end local v17           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v21           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v54           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_40a
    new-instance v46, Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 914
    .restart local v46       #name:Ljava/lang/String;
    if-nez v19, :cond_42b

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_33b

    .line 920
    :cond_42b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_33b

    .line 923
    .end local v19           #alias:Ljava/lang/String;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v37           #e:Ljava/util/Enumeration;
    .end local v38           #eIn:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v44           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v46           #name:Ljava/lang/String;
    .end local v51           #privKey:Ljava/security/PrivateKey;
    :cond_43a
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_527

    .line 925
    new-instance v50, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 926
    .local v50, pIn:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v50 .. v50}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v51

    .line 931
    .restart local v51       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v51

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v26, v0

    .line 932
    .restart local v26       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v19, 0x0

    .line 933
    .restart local v19       #alias:Ljava/lang/String;
    const/16 v44, 0x0

    .line 935
    .restart local v44       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v37

    .line 936
    .restart local v37       #e:Ljava/util/Enumeration;
    :cond_46b
    :goto_46b
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4f7

    .line 938
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 939
    .restart local v54       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 940
    .restart local v17       #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 941
    .restart local v21       #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v20, 0x0

    .line 943
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-lez v5, :cond_4c5

    .line 945
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 947
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v39

    .line 948
    .restart local v39       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v39, :cond_4bc

    .line 951
    invoke-interface/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c5

    .line 953
    new-instance v5, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 959
    :cond_4bc
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 963
    .end local v39           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_4c5
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 965
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_46b

    .line 968
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_4e4
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46b

    .line 970
    move-object/from16 v0, v20

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v44, v0

    goto/16 :goto_46b

    .line 974
    .end local v17           #aOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v21           #attrSet:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v54           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_4f7
    new-instance v46, Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 976
    .restart local v46       #name:Ljava/lang/String;
    if-nez v19, :cond_518

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_33b

    .line 982
    :cond_518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_33b

    .line 987
    .end local v19           #alias:Ljava/lang/String;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v37           #e:Ljava/util/Enumeration;
    .end local v44           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v46           #name:Ljava/lang/String;
    .end local v50           #pIn:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v51           #privKey:Ljava/security/PrivateKey;
    :cond_527
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_33b

    .line 994
    .end local v23           #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v33           #d:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v43           #j:I
    .end local v48           #octets:[B
    .end local v53           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_54e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v28, v41

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v28, v41

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    :cond_592
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_131

    .line 1000
    .end local v22           #authSafe:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v28           #c:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v41           #i:I
    :cond_596
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 1001
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 1002
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 1004
    const/16 v41, 0x0

    .restart local v41       #i:I
    :goto_5b7
    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v41

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 1006
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1007
    .restart local v23       #b:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v30, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1009
    .local v30, cb:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_602

    .line 1011
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1018
    :cond_602
    :try_start_602
    new-instance v29, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1020
    .local v29, cIn:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_61f
    .catch Ljava/lang/Exception; {:try_start_602 .. :try_end_61f} :catch_68a

    move-result-object v31

    .line 1030
    .local v31, cert:Ljava/security/cert/Certificate;
    const/16 v44, 0x0

    .line 1031
    .restart local v44       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/16 v19, 0x0

    .line 1033
    .restart local v19       #alias:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    if-eqz v5, :cond_6c5

    .line 1035
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v37

    .line 1036
    .restart local v37       #e:Ljava/util/Enumeration;
    :cond_632
    :goto_632
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6c5

    .line 1038
    invoke-interface/range {v37 .. v37}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1039
    .restart local v54       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v49

    check-cast v49, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1040
    .local v49, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 1041
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    const/16 v26, 0x0

    .line 1043
    .restart local v26       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move v5, v0

    if-eqz v5, :cond_6a0

    .line 1045
    move-object/from16 v0, v31

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v26, v0

    .line 1047
    move-object/from16 v0, v26

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v39

    .line 1048
    .restart local v39       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v39, :cond_697

    .line 1051
    invoke-interface/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a0

    .line 1053
    new-instance v5, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1022
    .end local v19           #alias:Ljava/lang/String;
    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #cIn:Ljava/io/ByteArrayInputStream;
    .end local v31           #cert:Ljava/security/cert/Certificate;
    .end local v37           #e:Ljava/util/Enumeration;
    .end local v39           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .end local v44           #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v49           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v54           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_68a
    move-exception v5

    move-object/from16 v37, v5

    .line 1024
    .local v37, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1059
    .restart local v19       #alias:Ljava/lang/String;
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .restart local v26       #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v29       #cIn:Ljava/io/ByteArrayInputStream;
    .restart local v31       #cert:Ljava/security/cert/Certificate;
    .local v37, e:Ljava/util/Enumeration;
    .restart local v39       #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .restart local v44       #localId:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v49       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v54       #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_697
    move-object/from16 v0, v26

    move-object/from16 v1, v49

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1063
    .end local v39           #existing:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_6a0
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b2

    .line 1065
    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v19

    goto :goto_632

    .line 1067
    .restart local v20       #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_6b2
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_632

    .line 1069
    move-object/from16 v0, v20

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v44, v0

    goto/16 :goto_632

    .line 1074
    .end local v20           #attr:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v26           #bagAttr:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v37           #e:Ljava/util/Enumeration;
    .end local v49           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v54           #sq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object v5, v0

    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    if-eqz v55, :cond_72e

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_72a

    .line 1080
    new-instance v46, Ljava/lang/String;

    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1082
    .restart local v46       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v6, v0

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v46

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    .end local v46           #name:Ljava/lang/String;
    :cond_72a
    :goto_72a
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_5b7

    .line 1091
    :cond_72e
    if-eqz v44, :cond_74d

    .line 1093
    new-instance v46, Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1095
    .restart local v46       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .end local v46           #name:Ljava/lang/String;
    :cond_74d
    if-eqz v19, :cond_72a

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_72a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 482
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_27
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 506
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-nez v1, :cond_c

    .line 507
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_c
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1a

    if-nez p4, :cond_1a

    .line 512
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 520
    :cond_25
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    if-eqz p4, :cond_4d

    .line 524
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    array-length v1, p4

    if-eq v0, v1, :cond_4d

    .line 528
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 533
    .end local v0           #i:I
    :cond_4d
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .registers 6

    .prologue
    .line 537
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 539
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 540
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 542
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 545
    :cond_1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 546
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 548
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 551
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 555
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 65
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    if-nez p2, :cond_a

    .line 1110
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1116
    :cond_a
    new-instance v48, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v48 .. v48}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1119
    .local v48, keyS:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v51

    .line 1121
    .local v51, ks:Ljava/util/Enumeration;
    :goto_18
    invoke-interface/range {v51 .. v51}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1b3

    .line 1123
    const/16 v5, 0x14

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v46, v0

    .line 1125
    .local v46, kSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1127
    invoke-interface/range {v51 .. v51}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 1128
    .local v54, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/security/PrivateKey;

    .line 1129
    .local v59, privKey:Ljava/security/PrivateKey;
    new-instance v45, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v5, 0x400

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1130
    .local v45, kParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v59

    move-object/from16 v3, v45

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v42

    .line 1131
    .local v42, kBytes:[B
    new-instance v40, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v5, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1132
    .local v40, kAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v43, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1133
    .local v43, kInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v18, 0x0

    .line 1134
    .local v18, attrSet:Z
    new-instance v44, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v44 .. v44}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1136
    .local v44, kName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v59

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move v5, v0

    if-eqz v5, :cond_129

    .line 1138
    move-object/from16 v0, v59

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1142
    .local v21, bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1143
    .local v55, nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v55, :cond_b1

    invoke-virtual/range {v55 .. v55}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 1145
    :cond_b1
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1151
    :cond_c2
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    if-nez v5, :cond_e9

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v33

    .line 1155
    .local v33, ct:Ljava/security/cert/Certificate;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1158
    .end local v33           #ct:Ljava/security/cert/Certificate;
    :cond_e9
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v36

    .line 1160
    .local v36, e:Ljava/util/Enumeration;
    :goto_ed
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 1162
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1163
    .local v56, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1165
    .local v47, kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v47

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1166
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v47

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1168
    const/16 v18, 0x1

    .line 1170
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_ed

    .line 1174
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #e:Ljava/util/Enumeration;
    .end local v47           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v56           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_129
    if-nez v18, :cond_192

    .line 1179
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1180
    .restart local v47       #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v33

    .line 1182
    .restart local v33       #ct:Ljava/security/cert/Certificate;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v47

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1183
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v47

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1185
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1187
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v47           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1189
    .restart local v47       #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v47

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1190
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v47

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1192
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v44

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1195
    .end local v33           #ct:Ljava/security/cert/Certificate;
    .end local v47           #kSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_192
    new-instance v41, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object v0, v7

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v41

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1196
    .local v41, kBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 1199
    .end local v18           #attrSet:Z
    .end local v40           #kAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v41           #kBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v42           #kBytes:[B
    .end local v43           #kInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v44           #kName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v45           #kParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v46           #kSalt:[B
    .end local v54           #name:Ljava/lang/String;
    .end local v59           #privKey:Ljava/security/PrivateKey;
    :cond_1b3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v49

    .line 1200
    .local v49, keySEncoded:[B
    new-instance v50, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 1205
    .local v50, keyString:Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    const/16 v5, 0x14

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 1207
    .local v27, cSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1209
    new-instance v31, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1210
    .local v31, certSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v26, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v5, 0x400

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1211
    .local v26, cParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v5, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-direct {v7, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1212
    .local v7, cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v35, Ljava/util/Hashtable;

    invoke-direct/range {v35 .. v35}, Ljava/util/Hashtable;-><init>()V

    .line 1214
    .local v35, doneCerts:Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v32

    .line 1215
    .local v32, cs:Ljava/util/Enumeration;
    :goto_207
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_378

    .line 1219
    :try_start_20d
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 1220
    .restart local v54       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v28

    .line 1221
    .local v28, cert:Ljava/security/cert/Certificate;
    const/16 v23, 0x0

    .line 1222
    .local v23, cAttrSet:Z
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1225
    .local v24, cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1227
    .local v37, fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move v5, v0

    if-eqz v5, :cond_2cd

    .line 1229
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1233
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1234
    .restart local v55       #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v55, :cond_25d

    invoke-virtual/range {v55 .. v55}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26e

    .line 1236
    :cond_25d
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1242
    :cond_26e
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    if-nez v5, :cond_28d

    .line 1244
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1247
    :cond_28d
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v36

    .line 1249
    .restart local v36       #e:Ljava/util/Enumeration;
    :goto_291
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2cd

    .line 1251
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1252
    .restart local v56       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1254
    .local v38, fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1255
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1256
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1258
    const/16 v23, 0x1

    .line 1259
    goto :goto_291

    .line 1262
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #e:Ljava/util/Enumeration;
    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v56           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2cd
    if-nez v23, :cond_32e

    .line 1264
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1266
    .restart local v38       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1267
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1268
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1270
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1272
    .restart local v38       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1273
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1275
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1278
    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_32e
    new-instance v61, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object v0, v8

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v61

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1280
    .local v61, sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1282
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_356
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_20d .. :try_end_356} :catch_358

    goto/16 :goto_207

    .line 1284
    .end local v23           #cAttrSet:Z
    .end local v24           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28           #cert:Ljava/security/cert/Certificate;
    .end local v37           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54           #name:Ljava/lang/String;
    .end local v61           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_358
    move-exception v5

    move-object/from16 v36, v5

    .line 1286
    .local v36, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    .end local v7           #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1290
    .end local v36           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v7       #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v32

    .line 1291
    :cond_381
    :goto_381
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 1295
    :try_start_387
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1296
    .local v30, certId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/security/cert/Certificate;

    .line 1297
    .restart local v28       #cert:Ljava/security/cert/Certificate;
    const/16 v23, 0x0

    .line 1299
    .restart local v23       #cAttrSet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_381

    .line 1304
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1307
    .restart local v24       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1309
    .restart local v37       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move v5, v0

    if-eqz v5, :cond_447

    .line 1311
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1315
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v55

    check-cast v55, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1316
    .restart local v55       #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v55, :cond_3eb

    invoke-virtual/range {v55 .. v55}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3fc

    .line 1318
    :cond_3eb
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1321
    :cond_3fc
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v36

    .line 1323
    .local v36, e:Ljava/util/Enumeration;
    :cond_400
    :goto_400
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_447

    .line 1325
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1331
    .restart local v56       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v56

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_400

    .line 1336
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1338
    .restart local v38       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1339
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1340
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1342
    const/16 v23, 0x1

    .line 1343
    goto :goto_400

    .line 1346
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36           #e:Ljava/util/Enumeration;
    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v55           #nm:Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v56           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_447
    if-nez v23, :cond_477

    .line 1348
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1350
    .restart local v38       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1351
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1353
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1356
    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_477
    new-instance v61, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object v0, v8

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v61

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1358
    .restart local v61       #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1360
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_387 .. :try_end_49f} :catch_4a1

    goto/16 :goto_381

    .line 1362
    .end local v23           #cAttrSet:Z
    .end local v24           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28           #cert:Ljava/security/cert/Certificate;
    .end local v30           #certId:Ljava/lang/String;
    .end local v37           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v61           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :catch_4a1
    move-exception v5

    move-object/from16 v36, v5

    .line 1364
    .local v36, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    .end local v7           #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1368
    .end local v36           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v7       #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_4c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v32

    .line 1369
    :cond_4ca
    :goto_4ca
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_59e

    .line 1373
    :try_start_4d0
    invoke-interface/range {v32 .. v32}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1374
    .local v30, certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/security/cert/Certificate;

    .line 1376
    .restart local v28       #cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4ca

    .line 1381
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 1384
    .restart local v24       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v37, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1386
    .restart local v37       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move v5, v0

    if-eqz v5, :cond_57d

    .line 1388
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1389
    .restart local v21       #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v21 .. v21}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v36

    .line 1391
    .local v36, e:Ljava/util/Enumeration;
    :cond_518
    :goto_518
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_57d

    .line 1393
    invoke-interface/range {v36 .. v36}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 1399
    .restart local v56       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v56

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_518

    .line 1404
    new-instance v38, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1406
    .restart local v38       #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1407
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1408
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_55c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4d0 .. :try_end_55c} :catch_55d

    goto :goto_518

    .line 1416
    .end local v21           #bagAttrs:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v24           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28           #cert:Ljava/security/cert/Certificate;
    .end local v30           #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v36           #e:Ljava/util/Enumeration;
    .end local v37           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v38           #fSeq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v56           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_55d
    move-exception v5

    move-object/from16 v36, v5

    .line 1418
    .local v36, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    .end local v7           #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1412
    .end local v36           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v7       #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v24       #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v28       #cert:Ljava/security/cert/Certificate;
    .restart local v30       #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v37       #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_57d
    :try_start_57d
    new-instance v61, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object v0, v8

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v61

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1414
    .restart local v61       #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_59c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_57d .. :try_end_59c} :catch_55d

    goto/16 :goto_4ca

    .line 1422
    .end local v24           #cBag:Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28           #cert:Ljava/security/cert/Certificate;
    .end local v30           #certId:Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v37           #fName:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v61           #sBag:Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_59e
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v10

    .line 1423
    .local v10, certSeqEncoded:[B
    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v29

    .line 1424
    .local v29, certBytes:[B
    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1426
    .local v25, cInfo:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v39, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v7           #cAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v6, v39, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    aput-object v6, v39, v5

    .line 1432
    .local v39, info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v19, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1434
    .local v19, auth:Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1435
    .local v20, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v22, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1437
    .local v22, berOut:Lcom/android/org/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1439
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v58

    .line 1441
    .local v58, pkg:[B
    new-instance v53, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-object v0, v6

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v53

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1446
    .local v53, mainInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v5, 0x14

    new-array v12, v5, [B

    .line 1447
    .local v12, mSalt:[B
    const/16 v13, 0x400

    .line 1449
    .local v13, itCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1451
    invoke-virtual/range {v53 .. v53}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v16

    .line 1457
    .local v16, data:[B
    :try_start_637
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v15, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v11 .. v16}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v60

    .line 1460
    .local v60, res:[B
    new-instance v17, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 1462
    .local v17, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1464
    .local v34, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v52, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    move-object v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_663
    .catch Ljava/lang/Exception; {:try_start_637 .. :try_end_663} :catch_67f

    .line 1474
    .local v52, mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    new-instance v57, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1476
    .local v57, pfx:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    new-instance v22, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    .end local v22           #berOut:Lcom/android/org/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1478
    .restart local v22       #berOut:Lcom/android/org/bouncycastle/asn1/BEROutputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1479
    return-void

    .line 1466
    .end local v17           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v34           #dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v52           #mData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v57           #pfx:Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v60           #res:[B
    :catch_67f
    move-exception v5

    move-object/from16 v36, v5

    .line 1468
    .local v36, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "rand"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 197
    return-void
.end method

.method protected unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 21
    .parameter "algId"
    .parameter "data"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, algorithm:Ljava/lang/String;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 568
    .local v11, pbeParams:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v12, Ljavax/crypto/spec/PBEKeySpec;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 573
    .local v12, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_1e
    sget-object v13, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v4, v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v9

    .line 575
    .local v9, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-direct {v6, v13, v14}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 579
    .local v6, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v9, v12}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 581
    .local v8, k:Ljavax/crypto/SecretKey;
    move-object v0, v8

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    move-object v9, v0

    .end local v9           #keyFact:Ljavax/crypto/SecretKeyFactory;
    move-object v0, v9

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 583
    sget-object v13, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v4, v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 585
    .local v5, cipher:Ljavax/crypto/Cipher;
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 588
    const-string v13, ""

    const/4 v14, 0x2

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v10

    check-cast v10, Ljava/security/PrivateKey;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5b} :catch_5c

    .line 595
    .local v10, out:Ljava/security/PrivateKey;
    return-object v10

    .line 590
    .end local v5           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v8           #k:Ljavax/crypto/SecretKey;
    .end local v10           #out:Ljava/security/PrivateKey;
    :catch_5c
    move-exception v13

    move-object v7, v13

    .line 592
    .local v7, e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception unwrapping private key - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 14
    .parameter "algorithm"
    .parameter "key"
    .parameter "pbeParams"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 610
    .local v5, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_5
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 612
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 616
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 618
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 620
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2f

    move-result-object v4

    .line 627
    .local v4, out:[B
    return-object v4

    .line 622
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #out:[B
    :catch_2f
    move-exception v6

    move-object v2, v6

    .line 624
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
