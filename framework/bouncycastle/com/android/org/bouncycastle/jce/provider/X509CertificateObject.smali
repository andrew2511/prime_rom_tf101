.class public Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

.field private c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

.field private encoded:[B

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .registers 11
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    .line 71
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 66
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 76
    :try_start_e
    const-string v5, "2.5.29.19"

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 78
    .local v1, bytes:[B
    if-eqz v1, :cond_20

    .line 80
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_5b

    .line 90
    :cond_20
    :try_start_20
    const-string v5, "2.5.29.15"

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 91
    if-eqz v1, :cond_7a

    .line 93
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 95
    .local v0, bits:Lcom/android/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 96
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v6

    sub-int v4, v5, v6

    .line 98
    .local v4, length:I
    if-ge v4, v7, :cond_76

    move v5, v7

    :goto_40
    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    .line 100
    const/4 v3, 0x0

    .local v3, i:I
    :goto_45
    if-eq v3, v4, :cond_7d

    .line 102
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    div-int/lit8 v6, v3, 0x8

    aget-byte v6, v1, v6

    const/16 v7, 0x80

    rem-int/lit8 v8, v3, 0x8

    ushr-int/2addr v7, v8

    and-int/2addr v6, v7

    if-eqz v6, :cond_78

    const/4 v6, 0x1

    :goto_56
    aput-boolean v6, v5, v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_58} :catch_7e

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 83
    .end local v0           #bits:Lcom/android/org/bouncycastle/asn1/DERBitString;
    .end local v1           #bytes:[B
    .end local v3           #i:I
    .end local v4           #length:I
    :catch_5b
    move-exception v5

    move-object v2, v5

    .line 85
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot construct BasicConstraints: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bits:Lcom/android/org/bouncycastle/asn1/DERBitString;
    .restart local v1       #bytes:[B
    .restart local v4       #length:I
    :cond_76
    move v5, v4

    .line 98
    goto :goto_40

    .line 102
    .restart local v3       #i:I
    :cond_78
    const/4 v6, 0x0

    goto :goto_56

    .line 107
    .end local v0           #bits:Lcom/android/org/bouncycastle/asn1/DERBitString;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_7a
    const/4 v5, 0x0

    :try_start_7b
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7d} :catch_7e

    .line 114
    :cond_7d
    return-void

    .line 110
    :catch_7e
    move-exception v5

    move-object v2, v5

    .line 112
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot construct KeyUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private calculateHashCode()I
    .registers 3

    .prologue
    .line 585
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 589
    :goto_8
    return v1

    .line 587
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 589
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 6
    .parameter "key"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 747
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_1e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 753
    .local v0, params:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 755
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    .line 759
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_47

    .line 761
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Public key presented not for certificate signature"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_47
    return-void
.end method

.method private getExtensionBytes(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    .line 408
    .local v1, exts:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v1, :cond_20

    .line 410
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v0

    .line 411
    .local v0, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v0, :cond_20

    .line 413
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 417
    .end local v0           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_1f
    return-object v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 120
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 6
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 128
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_33
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_66

    .line 133
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_66
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 545
    if-ne p1, p0, :cond_5

    .line 547
    const/4 v5, 0x1

    .line 566
    :goto_4
    return v5

    .line 550
    :cond_5
    instance-of v5, p1, Ljava/security/cert/Certificate;

    if-nez v5, :cond_b

    move v5, v6

    .line 552
    goto :goto_4

    .line 555
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v4, v0

    .line 559
    .local v4, other:Ljava/security/cert/Certificate;
    :try_start_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v1

    .line 560
    .local v1, b1:[B
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 562
    .local v2, b2:[B
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v5

    goto :goto_4

    .line 564
    .end local v1           #b1:[B
    .end local v2           #b2:[B
    :catch_1c
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/security/cert/CertificateEncodingException;
    move v5, v6

    .line 566
    goto :goto_4
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .parameter "oid"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getBasicConstraints()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 353
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_26

    .line 355
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 357
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_19

    .line 359
    const v0, 0x7fffffff

    .line 372
    :goto_18
    return v0

    .line 363
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_18

    :cond_24
    move v0, v1

    .line 368
    goto :goto_18

    :cond_26
    move v0, v1

    .line 372
    goto :goto_18
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 8

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    .line 379
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 380
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 382
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3c

    .line 384
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 386
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 388
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 389
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 391
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 393
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a
    move-object v5, v4

    .line 401
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_3b
    return-object v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    if-nez v1, :cond_e

    .line 531
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    .line 533
    :cond_e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 536
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v6, "2.5.29.37"

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 327
    .local v0, bytes:[B
    if-eqz v0, :cond_3e

    .line 331
    :try_start_8
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 332
    .local v1, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 333
    .local v5, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v4, list:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_19
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-eq v3, v6, :cond_2f

    .line 337
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 340
    :cond_2f
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_34

    move-result-object v6

    .line 348
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;
    .end local v5           #seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :goto_33
    return-object v6

    .line 342
    :catch_34
    move-exception v6

    move-object v2, v6

    .line 344
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    const-string v7, "error processing extended key usage extension"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 348
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_3e
    const/4 v6, 0x0

    goto :goto_33
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 424
    .local v2, exts:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3f

    .line 426
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 428
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3f

    .line 432
    :try_start_17
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 441
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_1f
    return-object v3

    .line 434
    .restart local v1       #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 436
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 281
    .local v3, id:Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 283
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 284
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 286
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 288
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_2b
    aput-boolean v4, v0, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 288
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 294
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 161
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 163
    .end local v0           #aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 165
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getKeyUsage()[Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 8

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    .line 448
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 449
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 451
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3c

    .line 453
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 455
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 457
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 458
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 460
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 462
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a
    move-object v5, v4

    .line 470
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_3b
    return-object v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 225
    const-string v4, "BC"

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 227
    .local v2, prov:Ljava/security/Provider;
    if-eqz v2, :cond_27

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_27

    move-object v4, v0

    .line 251
    .end local v0           #algName:Ljava/lang/String;
    :goto_26
    return-object v4

    .line 237
    :cond_27
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 242
    .local v3, provs:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    array-length v4, v3

    if-eq v1, v4, :cond_53

    .line 244
    aget-object v4, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0       #algName:Ljava/lang/String;
    if-eqz v0, :cond_50

    move-object v4, v0

    .line 247
    goto :goto_26

    .line 242
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 251
    .end local v0           #algName:Ljava/lang/String;
    :cond_53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    goto :goto_26
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 269
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v0

    .line 273
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 8

    .prologue
    .line 299
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 301
    .local v3, id:Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 303
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 304
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 306
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 308
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_2b
    aput-boolean v4, v0, v2

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 308
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 314
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 178
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 183
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 185
    .end local v0           #aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 187
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTBSCertificate()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getEncoded(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 208
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 210
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 8

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8b

    .line 477
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 479
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_8b

    .line 481
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 483
    .local v0, e:Ljava/util/Enumeration;
    :cond_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 485
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 486
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, oidId:Ljava/lang/String;
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 503
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 505
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 507
    const/4 v5, 0x1

    .line 513
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #oidId:Ljava/lang/String;
    :goto_8a
    return v5

    :cond_8b
    const/4 v5, 0x0

    goto :goto_8a
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .prologue
    .line 572
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_e

    .line 574
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    .line 578
    :cond_e
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 572
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 598
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x14

    .line 613
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, nl:Ljava/lang/String;
    const-string v11, "  [0]         Version: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v11, "         SerialNumber: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    const-string v11, "             IssuerDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v11, "           Start Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    const-string v11, "           Final Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const-string v11, "            SubjectDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string v11, "           Public Key: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const-string v11, "  Signature Algorithm: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v10

    .line 627
    .local v10, sig:[B
    const-string v11, "            Signature: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v13, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const/16 v6, 0x14

    .local v6, i:I
    :goto_b2
    array-length v11, v10

    if-ge v6, v11, :cond_eb

    .line 630
    array-length v11, v10

    sub-int/2addr v11, v14

    if-ge v6, v11, :cond_d2

    .line 632
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-static {v10, v6, v14}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    :goto_cf
    add-int/lit8 v6, v6, 0x14

    goto :goto_b2

    .line 636
    :cond_d2
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    array-length v13, v10

    sub-int/2addr v13, v6

    invoke-static {v10, v6, v13}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_cf

    .line 640
    :cond_eb
    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    .line 642
    .local v5, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v5, :cond_203

    .line 644
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 646
    .local v2, e:Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_106

    .line 648
    const-string v11, "       Extensions: \n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    .end local p0
    :cond_106
    :goto_106
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_203

    .line 653
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 654
    .local v9, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    .line 656
    .local v4, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    if-eqz v11, :cond_1fe

    .line 658
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 659
    .local v8, octs:[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 660
    .local v1, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string v11, "                       critical("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    :try_start_13c
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_170

    .line 665
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_156} :catch_157

    goto :goto_106

    .line 690
    :catch_157
    move-exception v11

    move-object v3, v11

    .line 692
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "*****"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_106

    .line 667
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_170
    :try_start_170
    sget-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18c

    .line 669
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v11, p0}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_106

    .line 671
    :cond_18c
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a8

    .line 673
    new-instance v11, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v11, p0}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_106

    .line 675
    :cond_1a8
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c4

    .line 677
    new-instance v11, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v11, p0}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_106

    .line 679
    :cond_1c4
    sget-object v11, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e0

    .line 681
    new-instance v11, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v11, p0}, Lcom/android/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_106

    .line 685
    :cond_1e0
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1fc} :catch_157

    goto/16 :goto_106

    .line 699
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v8           #octs:[B
    :cond_1fe
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_106

    .line 704
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v9           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_203
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public final verify(Ljava/security/PublicKey;)V
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
    .line 713
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, sigName:Ljava/lang/String;
    :try_start_a
    const-string v3, "BC"

    invoke-static {v1, v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_14

    move-result-object v2

    .line 724
    .local v2, signature:Ljava/security/Signature;
    :goto_10
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 725
    return-void

    .line 719
    .end local v2           #signature:Ljava/security/Signature;
    :catch_14
    move-exception v3

    move-object v0, v3

    .line 721
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .restart local v2       #signature:Ljava/security/Signature;
    goto :goto_10
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
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
    .line 733
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, sigName:Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 736
    .local v1, signature:Ljava/security/Signature;
    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 737
    return-void
.end method
