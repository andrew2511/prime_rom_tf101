.class public Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "SignedData.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "seq"

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 64
    .local v1, e:Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 65
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 68
    :goto_22
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 76
    .local v2, o:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v4, v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_68

    .line 78
    move-object v0, v2

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    move-object v3, v0

    .line 80
    .local v3, tagged:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_6e

    .line 89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tag value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :pswitch_5a
    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 86
    :pswitch_61
    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 94
    .end local v3           #tagged:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_68
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local v2           #o:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_22

    .line 97
    :cond_6d
    return-void

    .line 80
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_61
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7
    .parameter "_version"
    .parameter "_digestAlgorithms"
    .parameter "_contentInfo"
    .parameter "_certificates"
    .parameter "_crls"
    .parameter "_signerInfos"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 52
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 53
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 54
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 55
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 56
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .registers 4
    .parameter "o"

    .prologue
    .line 31
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_8

    .line 33
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    .end local p0
    move-object v0, p0

    .line 37
    :goto_7
    return-object v0

    .line 35
    .restart local p0
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 40
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getContentInfo()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSignerInfos()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 148
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->version:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 149
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 150
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 152
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_23

    .line 154
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->certificates:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 157
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_32

    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->crls:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 162
    :cond_32
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 164
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
