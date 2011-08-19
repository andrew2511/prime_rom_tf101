.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Collection;
.source "ASN1Sequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 57
    if-eqz p1, :cond_18

    .line 59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v0, p0

    .line 88
    :goto_17
    return-object v0

    .line 73
    .restart local p0
    :cond_18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 75
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2c

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_17

    .line 81
    :cond_2c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_17

    .line 86
    :cond_36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_46

    .line 88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v0, p0

    goto :goto_17

    .line 93
    .restart local p0
    :cond_46
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

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 4
    .parameter "obj"

    .prologue
    .line 29
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_9

    .line 31
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    return-object p0

    .line 34
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

    .line 185
    instance-of v6, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v6, :cond_7

    move v6, v8

    .line 213
    .end local p0
    :goto_6
    return v6

    .line 190
    .restart local p0
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 192
    .local v3, other:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-eq v6, v7, :cond_17

    move v6, v8

    .line 194
    goto :goto_6

    .line 197
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 198
    .local v4, s1:Ljava/util/Enumeration;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 200
    .end local p0
    .local v5, s2:Ljava/util/Enumeration;
    :cond_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 202
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 203
    .local v1, o1:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 205
    .local v2, o2:Lcom/android/org/bouncycastle/asn1/DERObject;
    if-eq v1, v2, :cond_1f

    if-eqz v1, :cond_43

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :cond_43
    move v6, v8

    .line 210
    goto :goto_6

    .line 213
    .end local v1           #o1:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v2           #o2:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_45
    const/4 v6, 0x1

    goto :goto_6
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
    .registers 3

    .prologue
    .line 105
    move-object v0, p0

    .line 107
    .local v0, outer:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method
