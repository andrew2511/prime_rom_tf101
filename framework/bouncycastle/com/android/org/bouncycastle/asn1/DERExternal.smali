.class public Lcom/android/org/bouncycastle/asn1/DERExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

.field private directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private encoding:I

.field private externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

.field private indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 8
    .parameter "vector"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v3, 0x0

    .line 21
    .local v3, offset:I
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 22
    .local v1, enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_1e

    .line 24
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v1           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 28
    .restart local v1       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_1e
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v4, :cond_30

    .line 30
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .end local v1           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 34
    .restart local v1       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_30
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-nez v4, :cond_42

    .line 36
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .end local v1           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 40
    .restart local v1       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_42
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-nez v4, :cond_4e

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_4e
    move-object v0, v1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    move-object v2, v0

    .line 45
    .local v2, obj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 46
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;ILcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 7
    .parameter "directReference"
    .parameter "indirectReference"
    .parameter "dataValueDescriptor"
    .parameter "encoding"
    .parameter "externalData"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDirectReference(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 74
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setIndirectReference(Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    .line 75
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V

    .line 76
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 77
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setExternalContent(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11
    .parameter "directReference"
    .parameter "indirectReference"
    .parameter "dataValueDescriptor"
    .parameter "externalData"

    .prologue
    .line 59
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;ILcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 60
    return-void
.end method

.method private setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V
    .registers 2
    .parameter "dataValueDescriptor"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .line 221
    return-void
.end method

.method private setDirectReference(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 2
    .parameter "directReferemce"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 230
    return-void
.end method

.method private setEncoding(I)V
    .registers 5
    .parameter "encoding"

    .prologue
    .line 243
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_1e

    .line 245
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1e
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    .line 248
    return-void
.end method

.method private setExternalContent(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "externalContent"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 257
    return-void
.end method

.method private setIndirectReference(Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .registers 2
    .parameter "indirectReference"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 266
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 131
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    if-nez v2, :cond_7

    move v2, v4

    .line 161
    :goto_6
    return v2

    .line 135
    :cond_7
    if-ne p0, p1, :cond_b

    .line 137
    const/4 v2, 0x1

    goto :goto_6

    .line 139
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    move-object v1, v0

    .line 140
    .local v1, other:Lcom/android/org/bouncycastle/asn1/DERExternal;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_23

    .line 142
    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v2, v4

    .line 144
    goto :goto_6

    .line 147
    :cond_23
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_37

    .line 149
    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_35
    move v2, v4

    .line 151
    goto :goto_6

    .line 154
    :cond_37
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_4b

    .line 156
    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_49

    iget-object v2, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    :cond_49
    move v2, v4

    .line 158
    goto :goto_6

    .line 161
    :cond_4b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    iget-object v3, v1, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_12

    .line 111
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 113
    :cond_12
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1f

    .line 115
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_2c

    .line 119
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    :cond_2c
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 122
    .local v1, obj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 123
    const/16 v2, 0x20

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 124
    return-void
.end method

.method public getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getDirectReference()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public getIndirectReference()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_b

    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v0

    .line 90
    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_16

    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 94
    :cond_16
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v1, :cond_21

    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 98
    :cond_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 99
    return v0
.end method
