.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field version:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 10
    .parameter "seq"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 74
    const/4 v3, 0x0

    .line 76
    .local v3, seqStart:I
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 81
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_90

    .line 83
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 91
    :goto_1a
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 93
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 94
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 99
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 101
    .local v0, dates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 102
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 104
    add-int/lit8 v4, v3, 0x5

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 109
    add-int/lit8 v4, v3, 0x6

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 111
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    sub-int/2addr v4, v5

    sub-int v2, v4, v7

    .local v2, extras:I
    :goto_7b
    if-lez v2, :cond_ae

    .line 113
    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 115
    .local v1, extra:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_b0

    .line 111
    :goto_8d
    add-int/lit8 v2, v2, -0x1

    goto :goto_7b

    .line 87
    .end local v0           #dates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1           #extra:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v2           #extras:I
    :cond_90
    const/4 v3, -0x1

    .line 88
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v4, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_1a

    .line 118
    .restart local v0       #dates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1       #extra:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v2       #extras:I
    :pswitch_99
    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_8d

    .line 121
    :pswitch_a0
    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_8d

    .line 124
    :pswitch_a7
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_8d

    .line 127
    .end local v1           #extra:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_ae
    return-void

    .line 115
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_99
        :pswitch_a0
        :pswitch_a7
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 4
    .parameter "obj"

    .prologue
    .line 59
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_8

    .line 61
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    .end local p0
    move-object v0, p0

    .line 65
    :goto_7
    return-object v0

    .line 63
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 68
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
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
