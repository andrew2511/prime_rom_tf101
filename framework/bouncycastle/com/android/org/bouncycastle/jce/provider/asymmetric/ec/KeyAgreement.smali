.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 57
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    .line 58
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    .line 62
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 63
    .local v0, i128:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0xc0

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 64
    .local v1, i192:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 66
    .local v2, i256:Ljava/lang/Integer;
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/BasicAgreement;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .registers 4
    .parameter "kaAlgorithm"
    .parameter "agreement"
    .parameter "kdf"

    .prologue
    .line 93
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    .line 99
    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .registers 5
    .parameter "r"

    .prologue
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter "clazz"

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, fullName:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 270
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-nez v1, :cond_2f

    .line 272
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for initialisation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_2f
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 277
    .local v0, privKey:Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 279
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 281
    return-void
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 7
    .parameter "key"
    .parameter "lastPhase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    if-nez v1, :cond_1f

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1f
    if-nez p2, :cond_3c

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be between two parties."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3c
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-nez v1, :cond_6b

    .line 141
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for doPhase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_6b
    check-cast p1, Ljava/security/PublicKey;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 150
    .local v0, pubKey:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    .line 152
    const/4 v1, 0x0

    return-object v1
.end method

.method protected engineGenerateSecret([BI)I
    .registers 7
    .parameter "sharedSecret"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->engineGenerateSecret()[B

    move-result-object v0

    .line 176
    .local v0, secret:[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 178
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement: need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_2f
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 215
    .local v0, secret:[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected engineGenerateSecret()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    .line 233
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
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
    .line 224
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    .line 225
    return-void
.end method
