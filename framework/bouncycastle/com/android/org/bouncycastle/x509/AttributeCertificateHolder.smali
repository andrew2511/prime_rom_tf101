.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .registers 9
    .parameter "digestedObjectType"
    .parameter "digestAlgorithm"
    .parameter "otherObjectTypeID"
    .parameter "objectDigest"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v1, p1, p3, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .registers 4
    .parameter "principal"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .registers 8
    .parameter "issuerName"
    .parameter "serialNumber"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v4, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 9
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_3
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_21

    move-result-object v1

    .line 86
    .local v1, name:Lcom/android/org/bouncycastle/jce/X509Principal;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    .line 88
    return-void

    .line 81
    .end local v1           #name:Lcom/android/org/bouncycastle/jce/X509Principal;
    :catch_21
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .parameter "principal"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "issuerName"
    .parameter "serialNumber"

    .prologue
    .line 69
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    .line 70
    return-void
.end method

.method private generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 5
    .parameter "principal"

    .prologue
    .line 202
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method private getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .registers 7
    .parameter "names"

    .prologue
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    array-length v3, p1

    if-eq v1, v3, :cond_34

    .line 238
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    .line 242
    :try_start_13
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_27} :catch_2a

    .line 236
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 245
    :catch_2a
    move-exception v3

    move-object v0, v3

    .line 247
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    :cond_34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .registers 6
    .parameter "names"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, v2

    if-eq v0, v3, :cond_1f

    .line 262
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_1c

    .line 264
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 268
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/Principal;

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method private matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 209
    .local v2, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_5
    array-length v3, v2

    if-eq v1, v3, :cond_2c

    .line 211
    aget-object v0, v2, v1

    .line 213
    .local v0, gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 217
    :try_start_11
    new-instance v3, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_28

    move-result v3

    if-eqz v3, :cond_29

    .line 220
    const/4 v3, 0x1

    .line 229
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_27
    return v3

    .line 223
    .restart local v0       #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_28
    move-exception v3

    .line 209
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 229
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_27
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 322
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 389
    if-ne p1, p0, :cond_4

    .line 391
    const/4 v2, 0x1

    .line 401
    :goto_3
    return v2

    .line 394
    :cond_4
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v2, :cond_a

    .line 396
    const/4 v2, 0x0

    goto :goto_3

    .line 399
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    move-object v1, v0

    .line 401
    .local v1, other:Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    iget-object v3, v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    .line 168
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDigestedObjectType()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 152
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 282
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 285
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getIssuer()[Ljava/security/Principal;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 300
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getObjectDigest()[B
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    .line 182
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtherObjectTypeID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    .line 197
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 317
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 411
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 413
    const/4 v0, 0x0

    .line 416
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 10
    .parameter "cert"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 328
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_8

    move v4, v6

    .line 384
    :goto_7
    return v4

    .line 333
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 337
    .local v3, x509Cert:Ljava/security/cert/X509Certificate;
    :try_start_c
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 339
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_42

    move v4, v7

    goto :goto_7

    :cond_42
    move v4, v6

    goto :goto_7

    .line 343
    :cond_44
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 345
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_5e

    move v4, v7

    .line 348
    goto :goto_7

    .line 351
    :cond_5e
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_63
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_63} :catch_99

    move-result-object v4

    if-eqz v4, :cond_a6

    .line 353
    const/4 v2, 0x0

    .line 356
    .local v2, md:Ljava/security/MessageDigest;
    :try_start_67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_88
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_67 .. :try_end_70} :catch_99

    move-result-object v2

    .line 363
    :try_start_71
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v4

    packed-switch v4, :pswitch_data_aa

    .line 373
    :goto_78
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_a6

    move v4, v6

    .line 375
    goto :goto_7

    .line 359
    :catch_88
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    move v4, v6

    .line 361
    goto/16 :goto_7

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_8d
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_78

    .line 379
    .end local v2           #md:Ljava/security/MessageDigest;
    :catch_99
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    move v4, v6

    .line 381
    goto/16 :goto_7

    .line 370
    .end local v1           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v2       #md:Ljava/security/MessageDigest;
    :pswitch_9e
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_a5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_71 .. :try_end_a5} :catch_99

    goto :goto_78

    .end local v2           #md:Ljava/security/MessageDigest;
    :cond_a6
    move v4, v6

    .line 384
    goto/16 :goto_7

    .line 363
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_9e
    .end packed-switch
.end method
