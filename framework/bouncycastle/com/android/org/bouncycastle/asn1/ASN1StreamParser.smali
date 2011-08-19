.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 25
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 33
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 34
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoding"

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 40
    return-void
.end method

.method private static findLimit(Ljava/io/InputStream;)I
    .registers 2
    .parameter "in"

    .prologue
    .line 14
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    if-eqz v0, :cond_b

    .line 16
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 19
    :goto_a
    return v0

    .restart local p0
    :cond_b
    const v0, 0x7fffffff

    goto :goto_a
.end method

.method private set00Check(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 158
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 160
    :cond_d
    return-void
.end method


# virtual methods
.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 46
    .local v5, tag:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 48
    const/4 v7, 0x0

    .line 150
    :goto_c
    return-object v7

    .line 54
    :cond_d
    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 59
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 61
    .local v6, tagNo:I
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_2f

    move v2, v9

    .line 66
    .local v2, isConstructed:Z
    :goto_1b
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v3

    .line 68
    .local v3, length:I
    if-gez v3, :cond_93

    .line 70
    if-nez v2, :cond_31

    .line 72
    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2           #isConstructed:Z
    .end local v3           #length:I
    :cond_2f
    move v2, v8

    .line 61
    goto :goto_1b

    .line 75
    .restart local v2       #isConstructed:Z
    .restart local v3       #length:I
    :cond_31
    new-instance v1, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v1, indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_49

    .line 79
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 81
    .local v4, sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 84
    .end local v4           #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_49
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_53

    .line 86
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v5, v6, v1}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    goto :goto_c

    .line 89
    :cond_53
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 92
    .restart local v4       #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    sparse-switch v6, :sswitch_data_108

    .line 104
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown BER object encountered: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :sswitch_7a
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 97
    :sswitch_80
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 99
    :sswitch_86
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 101
    :sswitch_8c
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 109
    .end local v1           #indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4           #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v7, v3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 111
    .local v0, defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_a9

    .line 113
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v2, v6, v8}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto/16 :goto_c

    .line 116
    :cond_a9
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_b4

    .line 118
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v5, v6, v0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    goto/16 :goto_c

    .line 121
    :cond_b4
    if-eqz v2, :cond_f4

    .line 124
    sparse-switch v6, :sswitch_data_11a

    .line 139
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v9, v6, v8}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    goto/16 :goto_c

    .line 130
    :sswitch_c4
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 132
    :sswitch_d0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 134
    :sswitch_dc
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 136
    :sswitch_e8
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 144
    :cond_f4
    packed-switch v6, :pswitch_data_12c

    .line 150
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto/16 :goto_c

    .line 147
    :pswitch_101
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_c

    .line 92
    :sswitch_data_108
    .sparse-switch
        0x4 -> :sswitch_7a
        0x8 -> :sswitch_8c
        0x10 -> :sswitch_80
        0x11 -> :sswitch_86
    .end sparse-switch

    .line 124
    :sswitch_data_11a
    .sparse-switch
        0x4 -> :sswitch_c4
        0x8 -> :sswitch_e8
        0x10 -> :sswitch_d0
        0x11 -> :sswitch_dc
    .end sparse-switch

    .line 144
    :pswitch_data_12c
    .packed-switch 0x4
        :pswitch_101
    .end packed-switch
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 167
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .local v0, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v0, :cond_13

    .line 169
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 172
    :cond_13
    return-object v1
.end method
