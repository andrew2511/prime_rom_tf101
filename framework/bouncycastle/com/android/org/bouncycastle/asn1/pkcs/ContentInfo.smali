.class public Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "ContentInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private contentType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 42
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 48
    :cond_21
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "contentType"
    .parameter "content"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 55
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 25
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    if-eqz v0, :cond_8

    .line 27
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .end local p0
    move-object v0, p0

    .line 31
    :goto_7
    return-object v0

    .line 29
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 34
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
.method public getContent()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->contentType:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_19

    .line 85
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->content:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 88
    :cond_19
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
