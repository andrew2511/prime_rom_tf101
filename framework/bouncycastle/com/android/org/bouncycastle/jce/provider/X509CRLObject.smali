.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

.field private isIndirect:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    .line 70
    :try_start_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 74
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDEREncoded()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    .line 81
    :goto_29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    .line 87
    return-void

    .line 78
    :cond_30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_29

    .line 83
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 9
    .parameter "critical"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3c

    .line 112
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 114
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3c

    .line 116
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 117
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 119
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 122
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 124
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_1c

    .line 126
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a
    move-object v5, v4

    .line 134
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_3b
    return-object v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method private isIndirectCRL()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 511
    .local v1, idp:[B
    const/4 v2, 0x0

    .line 514
    .local v2, isIndirect:Z
    if-eqz v1, :cond_19

    .line 516
    :try_start_d
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    move-result v2

    .line 527
    :cond_19
    return v2

    .line 521
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 523
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;

    const-string v4, "Exception reading IssuingDistributionPoint"

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private loadCRLEntries()Ljava/util/Set;
    .registers 7

    .prologue
    .line 254
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v3, entrySet:Ljava/util/Set;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 257
    .local v0, certs:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 258
    .local v4, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 260
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 261
    .local v2, entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v1, v2, v5, v4}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 262
    .local v1, crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 264
    goto :goto_f

    .line 266
    .end local v1           #crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_2a
    return-object v3
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 178
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 151
    .local v2, exts:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3f

    .line 153
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 155
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3f

    .line 159
    :try_start_17
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 168
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_1f
    return-object v3

    .line 161
    .restart local v1       #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 163
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

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 217
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 229
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 231
    .end local v0           #aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 233
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 246
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 249
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 7
    .parameter "serialNumber"

    .prologue
    .line 271
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 273
    .local v0, certs:Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 274
    .local v3, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 276
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 277
    .local v2, entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirect:Z

    invoke-direct {v1, v2, v4, v3}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 279
    .local v1, crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object v4, v1

    .line 287
    .end local v1           #crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :goto_2c
    return-object v4

    .line 284
    .restart local v1       #crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .restart local v2       #entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_2d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 285
    goto :goto_a

    .line 287
    .end local v1           #crlEntry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #entry:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_32
    const/4 v4, 0x0

    goto :goto_2c
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->loadCRLEntries()Ljava/util/Set;

    move-result-object v0

    .line 294
    .local v0, entrySet:Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 296
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 299
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    if-eqz v1, :cond_12

    .line 334
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 336
    .local v0, tmp:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 341
    .end local v0           #tmp:[B
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 309
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 311
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 97
    .local v0, extns:Ljava/util/Set;
    if-nez v0, :cond_9

    move v1, v2

    .line 105
    :goto_8
    return v1

    .line 102
    :cond_9
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_8

    :cond_1b
    move v1, v2

    goto :goto_8
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 7
    .parameter "cert"

    .prologue
    .line 484
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X.509"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 486
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 489
    :cond_14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 491
    .local v0, certs:[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    if-eqz v0, :cond_3b

    .line 493
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 495
    .local v2, serial:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    .line 497
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 499
    const/4 v3, 0x1

    .line 504
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :goto_37
    return v3

    .line 495
    .restart local v1       #i:I
    .restart local v2       #serial:Ljava/math/BigInteger;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 504
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public toString()Ljava/lang/String;
    .registers 21

    .prologue
    .line 351
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v3, buf:Ljava/lang/StringBuffer;
    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 354
    .local v11, nl:Ljava/lang/String;
    const-string v16, "              Version: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v16, "             IssuerDN: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v16, "          This update: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getThisUpdate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string v16, "          Next update: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getNextUpdate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const-string v16, "  Signature Algorithm: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v15

    .line 367
    .local v15, sig:[B
    const-string v16, "            Signature: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x14

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const/16 v9, 0x14

    .local v9, i:I
    :goto_a9
    move-object v0, v15

    array-length v0, v0

    move/from16 v16, v0

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_10b

    .line 371
    move-object v0, v15

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x14

    sub-int v16, v16, v17

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_e4

    .line 373
    const-string v16, "                       "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x14

    move-object v0, v15

    move v1, v9

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    :goto_e1
    add-int/lit8 v9, v9, 0x14

    goto :goto_a9

    .line 378
    :cond_e4
    const-string v16, "                       "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v17, Ljava/lang/String;

    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v9

    move-object v0, v15

    move v1, v9

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e1

    .line 383
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v8

    .line 385
    .local v8, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v8, :cond_29d

    .line 387
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v5

    .line 389
    .local v5, e:Ljava/util/Enumeration;
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_134

    .line 391
    const-string v16, "           Extensions: "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_134
    :goto_134
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_29d

    .line 396
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 397
    .local v13, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v8, v13}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v7

    .line 399
    .local v7, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v16

    if-eqz v16, :cond_298

    .line 401
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    .line 402
    .local v12, octs:[B
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 403
    .local v4, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string v16, "                       critical("

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :try_start_16d
    sget-object v16, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1bb

    .line 409
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_196} :catch_197

    goto :goto_134

    .line 450
    .end local v4           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_197
    move-exception v16

    move-object/from16 v6, v16

    .line 452
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    const-string v16, " value = "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "*****"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 414
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v4       #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_1bb
    :try_start_1bb
    sget-object v16, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f9

    .line 416
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Base CRL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 422
    :cond_1f9
    sget-object v16, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_221

    .line 425
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .end local v4           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 429
    .restart local v4       #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_221
    sget-object v16, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_249

    .line 432
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .end local v4           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 436
    .restart local v4       #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_249
    sget-object v16, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_271

    .line 438
    new-instance v16, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .end local v4           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 444
    .restart local v4       #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_271
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string v16, " value = "

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_296} :catch_197

    goto/16 :goto_134

    .line 458
    .end local v4           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12           #octs:[B
    :cond_298
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_134

    .line 462
    .end local v5           #e:Ljava/util/Enumeration;
    .end local v7           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v13           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_29d
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v14

    .line 463
    .local v14, set:Ljava/util/Set;
    if-eqz v14, :cond_2bb

    .line 465
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 466
    .local v10, it:Ljava/util/Iterator;
    :goto_2a7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2bb

    .line 468
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a7

    .line 472
    .end local v10           #it:Ljava/util/Iterator;
    :cond_2bb
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 188
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->c:Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 197
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 202
    .local v0, sig:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_42

    .line 206
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "CRL does not verify with supplied public key."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_42
    return-void
.end method
