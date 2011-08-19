.class public Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "SafeBag.java"


# instance fields
.field bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 45
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 47
    :cond_29
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 4
    .parameter "oid"
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 24
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 4
    .parameter "oid"
    .parameter "obj"
    .parameter "bagAttributes"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 35
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 36
    return-void
.end method


# virtual methods
.method public getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBagId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getBagValue()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 69
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1e

    .line 73
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 76
    :cond_1e
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
