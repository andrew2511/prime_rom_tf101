.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 73
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_3f

    .line 84
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 85
    .local v0, tagobj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 88
    .end local v0           #tagobj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_3f
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v1, :cond_53

    .line 90
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_53
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 6
    .parameter "subject"
    .parameter "pkInfo"
    .parameter "attributes"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 60
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 61
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 62
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 64
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v0, :cond_26

    .line 66
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_26
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    if-eqz v0, :cond_8

    .line 45
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .end local p0
    move-object v0, p0

    .line 49
    :goto_7
    return-object v0

    .line 47
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 52
    .restart local p0
    :cond_14
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
.end method


# virtual methods
.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 118
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 119
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 120
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 122
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_23

    .line 124
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 127
    :cond_23
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
