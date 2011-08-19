.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _baseTag:I

.field private _contentStream:Ljava/io/InputStream;

.field private _indefiniteLength:Z

.field private _tagNumber:I


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .registers 5
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    .line 21
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 22
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    .line 23
    instance-of v0, p3, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    .line 24
    return-void
.end method

.method private rLoadVector(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 5
    .parameter "in"

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    .line 87
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v3, :cond_2a

    .line 97
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 99
    .local v2, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_1e

    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 116
    .end local v2           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_1d
    return-object v3

    .line 99
    .restart local v2       #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1e
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    .line 104
    .end local v2           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 106
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 108
    .restart local v2       #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_48

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    :cond_48
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    .line 115
    .end local v2           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 116
    .local v0, defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_69} :catch_6a

    goto :goto_1d

    .line 118
    .end local v0           #defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :catch_6a
    move-exception v3

    move-object v1, v3

    .line 120
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 6
    .parameter "tag"
    .parameter "isExplicit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p2, :cond_e

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 74
    .end local p0
    :goto_d
    return-object v0

    .line 46
    .restart local p0
    :cond_e
    sparse-switch p1, :sswitch_data_76

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :sswitch_19
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v0, :cond_2a

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_d

    .line 55
    :cond_2a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_d

    .line 58
    :sswitch_37
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v0, :cond_48

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_d

    .line 64
    :cond_48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_d

    .line 68
    :sswitch_55
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 70
    :cond_5f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_d

    .line 74
    :cond_6c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto :goto_d

    .line 46
    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_55
        0x10 -> :sswitch_37
        0x11 -> :sswitch_19
    .end sparse-switch
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
