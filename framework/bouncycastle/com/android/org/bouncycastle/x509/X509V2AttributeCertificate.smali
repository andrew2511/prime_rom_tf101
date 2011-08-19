.class public Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 5
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 66
    :try_start_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    .line 67
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_29} :catch_2a

    .line 73
    return-void

    .line 69
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "encIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 56
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .parameter "critical"

    .prologue
    .line 216
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 218
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_35

    .line 220
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 223
    .local v0, e:Ljava/util/Enumeration;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 226
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 228
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_15

    .line 230
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_33
    move-object v5, v4

    .line 237
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v4           #set:Ljava/util/Set;
    :goto_34
    return-object v5

    :cond_35
    const/4 v5, 0x0

    goto :goto_34
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
    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    .line 129
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 137
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 142
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_4e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 295
    if-ne p1, p0, :cond_5

    .line 297
    const/4 v5, 0x1

    .line 316
    :goto_4
    return v5

    .line 300
    :cond_5
    instance-of v5, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-nez v5, :cond_b

    move v5, v6

    .line 302
    goto :goto_4

    .line 305
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v4, v0

    .line 309
    .local v4, other:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :try_start_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    .line 310
    .local v1, b1:[B
    invoke-interface {v4}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v2

    .line 312
    .local v2, b2:[B
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v5

    goto :goto_4

    .line 314
    .end local v1           #b1:[B
    .end local v2           #b2:[B
    :catch_1c
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/io/IOException;
    move v5, v6

    .line 316
    goto :goto_4
.end method

.method public getAttributes()[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .registers 5

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 260
    .local v2, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    .line 262
    .local v0, attrs:[Lcom/android/org/bouncycastle/x509/X509Attribute;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_11
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_27

    .line 264
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 267
    :cond_27
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .registers 7
    .parameter "oid"

    .prologue
    .line 272
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 273
    .local v3, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, list:Ljava/util/List;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_10
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_31

    .line 277
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 278
    .local v0, attr:Lcom/android/org/bouncycastle/x509/X509Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 280
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 284
    .end local v0           #attr:Lcom/android/org/bouncycastle/x509/X509Attribute;
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_39

    .line 286
    const/4 v4, 0x0

    .line 289
    :goto_38
    return-object v4

    :cond_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    check-cast p0, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    move-object v4, p0

    goto :goto_38
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 193
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_41

    .line 195
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 197
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_41

    .line 201
    :try_start_17
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_22

    move-result-object v3

    .line 210
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_21
    return-object v3

    .line 203
    .restart local v1       #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :catch_22
    move-exception v3

    move-object v0, v3

    .line 205
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_41
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public getHolder()Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    .prologue
    .line 107
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 109
    .local v3, id:Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 111
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 112
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 114
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 116
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

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 116
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 122
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 254
    .local v0, extensions:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 328
    :goto_8
    return v1

    .line 326
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 328
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "provider"
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
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, signature:Ljava/security/Signature;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 161
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 166
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 170
    :try_start_34
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_53

    .line 177
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 179
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Public key presented not for certificate signature"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :cond_5d
    return-void
.end method
