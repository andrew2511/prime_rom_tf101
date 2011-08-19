.class public Lorg/apache/harmony/security/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Lorg/apache/harmony/security/x509/Certificate;

.field private volatile encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private volatile issuer:Ljavax/security/auth/x500/X500Principal;

.field private volatile notAfter:J

.field private volatile notBefore:J

.field private volatile nullSigAlgParams:Z

.field private volatile publicKey:Ljava/security/PublicKey;

.field private volatile serialNumber:Ljava/math/BigInteger;

.field private volatile sigAlgName:Ljava/lang/String;

.field private volatile sigAlgOID:Ljava/lang/String;

.field private volatile sigAlgParams:[B

.field private volatile signature:[B

.field private volatile subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

.field private volatile tbsCertificate:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .line 105
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 78
    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 79
    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 108
    :try_start_9
    sget-object v1, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 110
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 111
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_24

    .line 115
    return-void

    .line 112
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/Certificate;)V
    .registers 4
    .parameter "certificate"

    .prologue
    const-wide/16 v0, -0x1

    .line 121
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 78
    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 79
    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 122
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 124
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 125
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 126
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 136
    return-void
.end method

.method private checkValidity(J)V
    .registers 8
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_39

    .line 163
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", validation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_39
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_72

    .line 167
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiration time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_72
    return-void
.end method

.method private fastVerify(Ljava/security/PublicKey;)V
    .registers 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 540
    instance-of v6, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v6, :cond_c

    .line 541
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "key is not an instance of RSAPublicKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 543
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v3, v0

    .line 545
    .local v3, rsaKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, algorithm:Ljava/lang/String;
    const-string v6, "MD2withRSA"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string v6, "MD2withRSAEncryption"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string v6, "1.2.840.113549.1.1.2"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    const-string v6, "MD2/RSA"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 553
    :cond_34
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v6, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 556
    :cond_3a
    const-string v6, "with"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 557
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v5

    .line 560
    .local v5, tbsCertificateLocal:[B
    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v4

    .line 561
    .local v4, sig:[B
    invoke-static {v5, v4, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->verifySignature([B[BLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 562
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Signature was not verified"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 564
    :cond_7a
    return-void
.end method

.method private getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 451
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_e

    .line 452
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 454
    :cond_e
    return-object v0
.end method

.method private getNotAfterInternal()J
    .registers 5

    .prologue
    .line 257
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 258
    .local v0, result:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 259
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 261
    :cond_18
    return-wide v0
.end method

.method private getNotBeforeInternal()J
    .registers 5

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 243
    .local v0, result:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 244
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 246
    :cond_18
    return-wide v0
.end method

.method private getSignatureInternal()[B
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 288
    .local v0, result:[B
    if-nez v0, :cond_c

    .line 289
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 291
    :cond_c
    return-object v0
.end method

.method private getTbsCertificateInternal()[B
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 273
    .local v0, result:[B
    if-nez v0, :cond_c

    .line 274
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 276
    :cond_c
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 149
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 4
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 158
    return-void
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_8

    .line 395
    const v0, 0x7fffffff

    .line 397
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_7
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 588
    const/4 v0, 0x0

    .line 591
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 380
    const/4 v1, 0x0

    .line 383
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 384
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 385
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 604
    :goto_6
    return-object v1

    .line 603
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 604
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_11

    move-object v1, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_6
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 426
    const/4 v1, 0x0

    .line 432
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 433
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 434
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 206
    .local v0, result:Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_10

    .line 208
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 210
    :cond_10
    return-object v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_5
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 576
    const/4 v0, 0x0

    .line 579
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 4

    .prologue
    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 4

    .prologue
    .line 239
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 463
    .local v0, result:Ljava/security/PublicKey;
    if-nez v0, :cond_10

    .line 464
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 466
    :cond_10
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 186
    .local v0, result:Ljava/math/BigInteger;
    if-nez v0, :cond_c

    .line 187
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 189
    :cond_c
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 300
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 301
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, sigAlgOIDLocal:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-nez v0, :cond_f

    .line 306
    move-object v0, v1

    .line 308
    :cond_f
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 310
    .end local v1           #sigAlgOIDLocal:Ljava/lang/String;
    :cond_11
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 319
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 321
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 323
    :cond_10
    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v1, :cond_7

    move-object v1, v2

    .line 343
    :goto_6
    return-object v1

    .line 334
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    .line 335
    .local v0, result:[B
    if-nez v0, :cond_1e

    .line 336
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    .line 337
    if-nez v0, :cond_1c

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    move-object v1, v2

    .line 339
    goto :goto_6

    .line 341
    :cond_1c
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    :cond_1e
    move-object v1, v0

    .line 343
    goto :goto_6
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 284
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSignatureInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 407
    const/4 v1, 0x0

    .line 413
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 414
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 415
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 227
    .local v0, result:Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_10

    .line 229
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 231
    :cond_10
    return-object v0
.end method

.method public getTBSCertificate()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 613
    const/4 v0, 0x0

    .line 616
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "withRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 487
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->fastVerify(Ljava/security/PublicKey;)V

    .line 500
    :cond_f
    return-void

    .line 491
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 492
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 494
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v1

    .line 496
    .local v1, tbsCertificateLocal:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 497
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 498
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "withRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 512
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->fastVerify(Ljava/security/PublicKey;)V

    .line 526
    :cond_f
    return-void

    .line 516
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 518
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 520
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v1

    .line 522
    .local v1, tbsCertificateLocal:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 523
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 524
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
