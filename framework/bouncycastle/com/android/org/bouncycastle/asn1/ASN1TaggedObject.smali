.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 52
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 53
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 55
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 72
    instance-of v0, p3, Lcom/android/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_17

    .line 74
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 81
    :goto_12
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 82
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 83
    return-void

    .line 78
    :cond_17
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_12
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 23
    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    .line 28
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .parameter "obj"

    .prologue
    .line 34
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_9

    .line 36
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    return-object p0

    .line 39
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
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 88
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_7

    move v2, v4

    .line 115
    :goto_6
    return v2

    .line 93
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-object v1, v0

    .line 95
    .local v1, other:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_1d

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v2, v3, :cond_1d

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eq v2, v3, :cond_1f

    :cond_1d
    move v2, v4

    .line 97
    goto :goto_6

    .line 100
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_29

    .line 102
    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_3d

    move v2, v4

    .line 104
    goto :goto_6

    .line 109
    :cond_29
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    iget-object v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v2, v4

    .line 111
    goto :goto_6

    .line 115
    :cond_3d
    const/4 v2, 0x1

    goto :goto_6
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_b

    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 173
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 6
    .parameter "tag"
    .parameter "isExplicit"

    .prologue
    .line 185
    sparse-switch p1, :sswitch_data_3e

    .line 195
    if-eqz p2, :cond_25

    .line 197
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    :goto_9
    return-object v0

    .line 188
    :sswitch_a
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_9

    .line 190
    :sswitch_13
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_9

    .line 192
    :sswitch_1c
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    goto :goto_9

    .line 200
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "implicit tagging not implemented for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_1c
        0x10 -> :sswitch_13
        0x11 -> :sswitch_a
    .end sparse-switch
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 127
    .local v0, code:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_d

    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 132
    :cond_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    return v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
