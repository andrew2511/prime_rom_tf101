.class public Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X509CertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 76
    return-void

    .line 74
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 4
    .parameter "obj"

    .prologue
    .line 40
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v0, :cond_8

    .line 42
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_7
    return-object v0

    .line 44
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 49
    .restart local p0
    :cond_14
    if-eqz p0, :cond_37

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
