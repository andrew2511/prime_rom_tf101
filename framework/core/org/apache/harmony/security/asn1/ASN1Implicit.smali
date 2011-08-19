.class public Lorg/apache/harmony/security/asn1/ASN1Implicit;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Implicit.java"


# static fields
.field private static final TAGGING_CONSTRUCTED:I = 0x1

.field private static final TAGGING_PRIMITIVE:I = 0x0

.field private static final TAGGING_STRING:I = 0x2


# instance fields
.field private final taggingType:I

.field private final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 6
    .parameter "tagClass"
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 76
    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v0, :cond_b

    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v0, :cond_13

    .line 81
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Implicit tagging can not be used for ASN.1 ANY or CHOICE type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_13
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 86
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 87
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    .line 99
    :goto_28
    return-void

    .line 93
    :cond_29
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_28

    .line 97
    :cond_2d
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_28
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 62
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 63
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 5
    .parameter "identifier"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    packed-switch v0, :pswitch_data_24

    .line 117
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v0, p1, :cond_f

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-ne v0, p1, :cond_21

    :cond_f
    move v0, v2

    :goto_10
    return v0

    .line 113
    :pswitch_11
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-ne v0, p1, :cond_17

    move v0, v2

    goto :goto_10

    :cond_17
    move v0, v1

    goto :goto_10

    .line 115
    :pswitch_19
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-ne v0, p1, :cond_1f

    move v0, v2

    goto :goto_10

    :cond_1f
    move v0, v1

    goto :goto_10

    :cond_21
    move v0, v1

    .line 117
    goto :goto_10

    .line 111
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->checkTag(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 127
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 implicitly tagged type expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Expected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_49
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-ne v0, v1, :cond_63

    .line 134
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 138
    :goto_55
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 140
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_6a

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_62
    return-object v0

    .line 136
    :cond_63
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    goto :goto_55

    .line 143
    :cond_6a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_62
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 155
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 159
    :goto_a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 160
    return-void

    .line 157
    :cond_e
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    goto :goto_a
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 164
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 168
    return-void
.end method
