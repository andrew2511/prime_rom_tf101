.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "PolicyInformation.java"


# instance fields
.field private policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v2, :cond_11

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2e

    .line 21
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_49

    .line 29
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 31
    :cond_49
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 2
    .parameter "policyIdentifier"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "policyIdentifier"
    .parameter "policyQualifiers"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .registers 3
    .parameter "obj"

    .prologue
    .line 50
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v0, :cond_a

    .line 52
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    .end local p0
    move-object v0, p0

    .line 55
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9
.end method


# virtual methods
.method public getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 78
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_13

    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 85
    :cond_13
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
