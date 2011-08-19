.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "tagNo"

    .prologue
    .line 45
    const/4 v0, 0x0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 36
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v3, :cond_9

    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v3, :cond_9e

    .line 54
    :cond_9
    const/16 v3, 0xa0

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 55
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 57
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v3, :cond_97

    .line 59
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v3, :cond_92

    .line 62
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_51

    .line 64
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v3, :cond_3f

    .line 66
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 88
    .local v1, e:Ljava/util/Enumeration;
    :goto_31
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_31

    .line 70
    .end local v1           #e:Ljava/util/Enumeration;
    .restart local p0
    :cond_3f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 71
    .local v2, octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 72
    .local v0, berO:Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 73
    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 75
    .end local v0           #berO:Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_51
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_60

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 79
    .end local v1           #e:Ljava/util/Enumeration;
    .restart local p0
    :cond_60
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_6f

    .line 81
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 85
    .end local v1           #e:Ljava/util/Enumeration;
    .restart local p0
    :cond_6f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_92
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 99
    .end local p0
    :cond_97
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 100
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 106
    :goto_9d
    return-void

    .line 104
    .restart local p0
    :cond_9e
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_9d
.end method
