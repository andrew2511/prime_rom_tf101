.class public Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 37
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 5

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v2, :cond_24

    .line 99
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 106
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 107
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 112
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    .local v1, validity:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 115
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 117
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 119
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 121
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 123
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v2
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "endDate"

    .prologue
    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 79
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "endDate"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 73
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "issuer"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 55
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .registers 2
    .parameter "serialNumber"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 43
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "startDate"

    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 67
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "startDate"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 61
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 85
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .parameter "pubKeyInfo"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 91
    return-void
.end method
