.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.super Ljava/security/Signature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;
    }
.end annotation


# static fields
.field private static jdkToOpenSsl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:I

.field private dsa:I

.field private final evpAlgorithm:Ljava/lang/String;

.field private rsa:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    .line 44
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "MD5/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA-1/RSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.5"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.29"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA256WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA256WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.11"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA384WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA384WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.12"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA512WithRSAEncryption"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA512WithRSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.13"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA1withDSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "SHA/DSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "DSA"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.10040.4.1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26with1.2.840.10040.4.3"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "DSAWithSHA1"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    const-string v1, "1.2.840.10040.4.3"

    const-class v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    .line 139
    const-string v0, "RSA-MD2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 140
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_16
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 118
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;>;"
    if-nez v1, :cond_10

    .line 119
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_10
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;

    move-object p0, v0
    :try_end_18
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_18} :catch_21

    .end local p0
    return-object p0

    .line 123
    .restart local p0
    :catch_19
    move-exception v3

    move-object v2, v3

    .line 124
    .local v2, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, p0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 125
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_21
    move-exception v3

    move-object v2, v3

    .line 126
    .local v2, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, p0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 12
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 176
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_48

    .line 178
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 179
    .local v2, dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 180
    .local v1, dsaParams:Ljava/security/interfaces/DSAParams;
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3c

    .line 201
    .end local v1           #dsaParams:Ljava/security/interfaces/DSAParams;
    .end local v2           #dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    :goto_33
    :try_start_33
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyInit(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_7e

    .line 205
    return-void

    .line 184
    :catch_3c
    move-exception v5

    move-object v3, v5

    .line 185
    .local v3, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_48
    instance-of v5, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_76

    .line 189
    :try_start_4c
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v4, v0

    .line 190
    .local v4, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_69} :catch_6a

    goto :goto_33

    .line 193
    .end local v4           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :catch_6a
    move-exception v5

    move-object v3, v5

    .line 194
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 197
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_76
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Need DSA or RSA public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :catch_7e
    move-exception v5

    move-object v3, v5

    .line 203
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method protected engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineUpdate([BII)V

    .line 150
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 6
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 157
    :cond_b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyUpdate(I[BII)V

    .line 159
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 10
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v3, :cond_13

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    move v1, v3

    .line 220
    .local v1, handle:I
    :goto_9
    if-nez v1, :cond_17

    .line 222
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Need DSA or RSA public key"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    .end local v1           #handle:I
    :cond_13
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    move v1, v3

    goto :goto_9

    .line 226
    .restart local v1       #handle:I
    :cond_17
    :try_start_17
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {v3, p1, v4, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyFinal(I[BIII)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_25

    move-result v2

    .line 227
    .local v2, result:I
    if-ne v2, v7, :cond_23

    move v3, v7

    :goto_22
    return v3

    :cond_23
    move v3, v6

    goto :goto_22

    .line 228
    .end local v2           #result:I
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 229
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    if-eqz v0, :cond_9

    .line 237
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 240
    :cond_9
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v0, :cond_12

    .line 241
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 244
    :cond_12
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_1b

    .line 245
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1f

    .line 248
    :cond_1b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 250
    return-void

    .line 248
    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
