.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/org/bouncycastle/asn1/ASN1Collection;
.source "ASN1Set.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;-><init>()V

    .line 113
    return-void
.end method

.method private getEncoded(Lcom/android/org/bouncycastle/asn1/DEREncodable;)[B
    .registers 7
    .parameter "obj"

    .prologue
    .line 287
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 292
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_a
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    .line 299
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 294
    :catch_12
    move-exception v2

    .line 296
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 9
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 58
    if-eqz p1, :cond_18

    .line 60
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_10

    .line 62
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "object implicit - explicit expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-object v4, p0

    .line 103
    :goto_17
    return-object v4

    .line 74
    .restart local p0
    :cond_18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 76
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .local v2, set:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    move-object v4, v2

    .line 78
    goto :goto_17

    .line 82
    .end local v2           #set:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_39

    .line 84
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-object v4, p0

    goto :goto_17

    .line 91
    .restart local p0
    :cond_39
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    .local v3, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_67

    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 96
    .local v1, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 98
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_50
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_50

    .line 103
    :cond_60
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_17

    .line 108
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local p0
    :cond_67
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown object in getInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 4
    .parameter "obj"

    .prologue
    .line 30
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_9

    .line 32
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .end local p0
    return-object p0

    .line 35
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 11
    .parameter "o"

    .prologue
    const/4 v8, 0x0

    .line 204
    instance-of v6, p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-nez v6, :cond_7

    move v6, v8

    .line 232
    .end local p0
    :goto_6
    return v6

    .line 209
    .restart local p0
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-object v3, v0

    .line 211
    .local v3, other:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_17

    move v6, v8

    .line 213
    goto :goto_6

    .line 216
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 217
    .local v4, s1:Ljava/util/Enumeration;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 219
    .end local p0
    .local v5, s2:Ljava/util/Enumeration;
    :cond_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 221
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 222
    .local v1, o1:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 224
    .local v2, o2:Lcom/android/org/bouncycastle/asn1/DERObject;
    if-eq v1, v2, :cond_1f

    if-eqz v1, :cond_43

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :cond_43
    move v6, v8

    .line 229
    goto :goto_6

    .line 232
    .end local v1           #o1:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v2           #o2:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_45
    const/4 v6, 0x1

    goto :goto_6
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
    .registers 3

    .prologue
    .line 146
    move-object v0, p0

    .line 148
    .local v0, outer:Lcom/android/org/bouncycastle/asn1/ASN1Set;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method
