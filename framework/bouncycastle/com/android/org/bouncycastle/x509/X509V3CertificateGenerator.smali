.class public Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# instance fields
.field private extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    .line 55
    return-void
.end method

.method private booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 10
    .parameter "id"

    .prologue
    .line 202
    array-length v3, p1

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v0, v3, [B

    .line 204
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v3, p1

    if-eq v1, v3, :cond_22

    .line 206
    div-int/lit8 v3, v1, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p1, v1

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    const/4 v6, 0x7

    rem-int/lit8 v7, v1, 0x8

    sub-int/2addr v6, v7

    shl-int/2addr v5, v6

    :goto_19
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 206
    :cond_20
    const/4 v5, 0x0

    goto :goto_19

    .line 209
    :cond_22
    array-length v3, p1

    rem-int/lit8 v2, v3, 0x8

    .line 211
    .local v2, pad:I
    if-nez v2, :cond_2d

    .line 213
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 217
    :goto_2c
    return-object v3

    :cond_2d
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    const/16 v4, 0x8

    sub-int/2addr v4, v2

    invoke-direct {v3, v0, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_2c
.end method

.method private generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;[B)Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "tbsCert"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 509
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 510
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 511
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 513
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    return-object v1
.end method

.method private generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 498
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)V

    .line 501
    :cond_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "oid"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 241
    return-void
.end method

.method public addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Z[B)V
    .registers 5
    .parameter "oid"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 265
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "oid"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 229
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 230
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .registers 5
    .parameter "oid"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 253
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 254
    return-void
.end method

.method public copyAndAddExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;ZLjava/security/cert/X509Certificate;)V
    .registers 5
    .parameter "oid"
    .parameter "critical"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    .line 309
    return-void
.end method

.method public copyAndAddExtension(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .registers 10
    .parameter "oid"
    .parameter "critical"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 280
    .local v1, extValue:[B
    if-nez v1, :cond_25

    .line 282
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :cond_25
    :try_start_25
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    .line 289
    .local v2, value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->addExtension(Ljava/lang/String;ZLcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 295
    return-void

    .line 291
    .end local v2           #value:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 293
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 12
    .parameter "key"
    .parameter "provider"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    .line 477
    .local v5, tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_start_4
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_14

    move-result-object v7

    .line 486
    .local v7, signature:[B
    :try_start_f
    invoke-direct {p0, v5, v7}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;[B)Ljava/security/cert/X509Certificate;
    :try_end_12
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_f .. :try_end_12} :catch_1e

    move-result-object v0

    return-object v0

    .line 479
    .end local v7           #signature:[B
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 481
    .local v6, e:Ljava/io/IOException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v1, "exception encoding TBS cert"

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 488
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #signature:[B
    :catch_1e
    move-exception v6

    .line 490
    .local v6, e:Ljava/security/cert/CertificateParsingException;
    new-instance v0, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v1, "exception producing certificate object"

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateTbsCert()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    .line 432
    .local v2, tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_start_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v3, v4, p1, p2, v2}, Lcom/android/org/bouncycastle/x509/X509Util;->calculateSignature(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_11

    move-result-object v1

    .line 441
    .local v1, signature:[B
    :try_start_c
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateJcaObject(Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;[B)Ljava/security/cert/X509Certificate;
    :try_end_f
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_c .. :try_end_f} :catch_1b

    move-result-object v3

    return-object v3

    .line 434
    .end local v1           #signature:[B
    :catch_11
    move-exception v3

    move-object v0, v3

    .line 436
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v4, "exception encoding TBS cert"

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 443
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #signature:[B
    :catch_1b
    move-exception v0

    .line 445
    .local v0, e:Ljava/security/cert/CertificateParsingException;
    new-instance v3, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v4, "exception producing certificate object"

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 324
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "key"
    .parameter "provider"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_3} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v1

    return-object v1

    .line 380
    :catch_5
    move-exception v0

    .line 382
    .local v0, e:Ljava/security/NoSuchProviderException;
    throw v0

    .line 384
    .end local v0           #e:Ljava/security/NoSuchProviderException;
    :catch_7
    move-exception v0

    .line 386
    .local v0, e:Ljava/security/SignatureException;
    throw v0

    .line 388
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_9
    move-exception v0

    .line 390
    .local v0, e:Ljava/security/InvalidKeyException;
    throw v0

    .line 392
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_b
    move-exception v0

    .line 394
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 6
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    const-string v1, "BC"

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 345
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 347
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 523
    invoke-static {}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->extGenerator:Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    .line 64
    return-void
.end method

.method public setIssuerDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 105
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .parameter "issuer"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 95
    return-void

    .line 91
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuerUniqueID([Z)V
    .registers 4
    .parameter "uniqueID"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuerUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    .line 198
    return-void
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 117
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 111
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 157
    return-void

    .line 153
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process key - "

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

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 4
    .parameter "serialNumber"

    .prologue
    .line 72
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_10

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serial number must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    .line 78
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 6
    .parameter "signatureAlgorithm"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 172
    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_18

    .line 179
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigOID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/x509/X509Util;->getSigAlgID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 181
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 182
    return-void

    .line 174
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown signature type requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectDN(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "subject"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 142
    return-void
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .parameter "subject"

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v2, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 133
    return-void

    .line 129
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectUniqueID([Z)V
    .registers 4
    .parameter "uniqueID"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->tbsGen:Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->booleanToBitString([Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectUniqueID(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    .line 190
    return-void
.end method
