.class public Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "JDKX509CertificateFactory.java"


# static fields
.field private static final PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

.field private static final PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sCrlDataObjectCount:I

.field private sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 43
    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    .line 44
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 46
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 47
    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    .line 48
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 155
    :cond_e
    const/4 v0, 0x0

    .line 158
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    goto :goto_f
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_28

    .line 77
    :cond_4
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 81
    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_4

    .line 83
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    .line 89
    .end local v0           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :goto_27
    return-object v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .registers 6
    .parameter "aIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 132
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 134
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_3c

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_3c

    .line 137
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 139
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 142
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object v1

    .line 146
    :goto_3b
    return-object v1

    :cond_3c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    goto :goto_3b
.end method

.method private readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_3c

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_3c

    .line 59
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 61
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 64
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    .line 68
    :goto_3b
    return-object v1

    :cond_3c
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    goto :goto_3b
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 119
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_11

    .line 121
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    .line 125
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 98
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_12

    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    .line 104
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .registers 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 254
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-nez v4, :cond_1f

    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 257
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 258
    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    .line 269
    :cond_c
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_32

    .line 271
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_2a

    .line 273
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCRL()Ljava/security/cert/CRL;
    :try_end_1d
    .catch Ljava/security/cert/CRLException; {:try_start_c .. :try_end_1d} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_5e

    move-result-object v4

    .line 301
    :goto_1e
    return-object v4

    .line 260
    :cond_1f
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-eq v4, p1, :cond_c

    .line 262
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 263
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 264
    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_c

    .line 277
    :cond_2a
    const/4 v4, 0x0

    :try_start_2b
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 278
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    move-object v4, v6

    .line 279
    goto :goto_1e

    .line 283
    :cond_32
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getReadLimit(Ljava/io/InputStream;)I

    move-result v1

    .line 285
    .local v1, limit:I
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v2, pis:Ljava/io/PushbackInputStream;
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 288
    .local v3, tag:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_44

    move-object v4, v6

    .line 290
    goto :goto_1e

    .line 293
    :cond_44
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 295
    const/16 v4, 0x30

    if-eq v3, v4, :cond_50

    .line 297
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    goto :goto_1e

    .line 301
    :cond_50
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_59
    .catch Ljava/security/cert/CRLException; {:try_start_2b .. :try_end_59} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_59} :catch_5e

    move-result-object v4

    goto :goto_1e

    .line 304
    .end local v1           #limit:I
    .end local v2           #pis:Ljava/io/PushbackInputStream;
    .end local v3           #tag:I
    :catch_5b
    move-exception v4

    move-object v0, v4

    .line 306
    .local v0, e:Ljava/security/cert/CRLException;
    throw v0

    .line 308
    .end local v0           #e:Ljava/security/cert/CRLException;
    :catch_5e
    move-exception v4

    move-object v0, v4

    .line 310
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, crls:Ljava/util/List;
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    .local v0, crl:Ljava/security/cert/CRL;
    if-eqz v0, :cond_f

    .line 332
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 335
    :cond_f
    return-object v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 7
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    .local v0, iter:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 369
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    .line 371
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    .end local v1           #obj:Ljava/lang/Object;
    :cond_31
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-nez v4, :cond_1f

    .line 173
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 174
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 175
    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    .line 186
    :cond_c
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_32

    .line 188
    iget v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_2a

    .line 190
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_5a

    move-result-object v4

    .line 218
    :goto_1e
    return-object v4

    .line 177
    :cond_1f
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v4, p1, :cond_c

    .line 179
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 180
    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 181
    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    goto :goto_c

    .line 194
    :cond_2a
    const/4 v4, 0x0

    :try_start_2b
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 195
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    move-object v4, v6

    .line 196
    goto :goto_1e

    .line 200
    :cond_32
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getReadLimit(Ljava/io/InputStream;)I

    move-result v1

    .line 202
    .local v1, limit:I
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v2, pis:Ljava/io/PushbackInputStream;
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 205
    .local v3, tag:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_44

    move-object v4, v6

    .line 207
    goto :goto_1e

    .line 210
    :cond_44
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 212
    const/16 v4, 0x30

    if-eq v3, v4, :cond_50

    .line 214
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    goto :goto_1e

    .line 218
    :cond_50
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_58} :catch_5a

    move-result-object v4

    goto :goto_1e

    .line 221
    .end local v1           #limit:I
    .end local v2           #pis:Ljava/io/PushbackInputStream;
    .end local v3           #tag:I
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 223
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, certs:Ljava/util/List;
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_f

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 243
    :cond_f
    return-object v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 340
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
