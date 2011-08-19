.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "NameConstraints.java"


# instance fields
.field private excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 22
    .local v0, e:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 24
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 25
    .local v1, o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    goto :goto_8

    .line 28
    :pswitch_1e
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_8

    .line 31
    :pswitch_25
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_8

    .line 35
    .end local v1           #o:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2c
    return-void

    .line 25
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_25
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4
    .parameter "permitted"
    .parameter "excluded"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    if-eqz p1, :cond_b

    .line 54
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    :cond_b
    if-eqz p2, :cond_13

    .line 58
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 60
    :cond_13
    return-void
.end method

.method private createSequence(Ljava/util/Vector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .registers 5
    .parameter "subtree"

    .prologue
    .line 64
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v1, vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 66
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 68
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_9

    .line 71
    :cond_19
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method


# virtual methods
.method public getExcludedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getPermittedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_14

    .line 94
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 97
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_23

    .line 99
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 102
    :cond_23
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
