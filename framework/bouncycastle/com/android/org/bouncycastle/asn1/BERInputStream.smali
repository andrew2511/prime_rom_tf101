.class public Lcom/android/org/bouncycastle/asn1/BERInputStream;
.super Lcom/android/org/bouncycastle/asn1/DERInputStream;
.source "BERInputStream.java"


# static fields
.field private static final END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERInputStream$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "is"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method

.method private buildConstructedOctetString()Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 71
    .local v1, octs:Ljava/util/Vector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 73
    .local v0, o:Lcom/android/org/bouncycastle/asn1/DERObject;
    sget-object v2, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v0, v2, :cond_13

    .line 81
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v2

    .line 78
    :cond_13
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private readIndefiniteLengthFully()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v2, bOut:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->read()I

    move-result v1

    .line 50
    .local v1, b1:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->read()I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_13

    .line 52
    if-nez v1, :cond_18

    if-nez v0, :cond_18

    .line 61
    :cond_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 57
    :cond_18
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    move v1, v0

    goto :goto_9
.end method


# virtual methods
.method public readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->read()I

    move-result v6

    .line 88
    .local v6, tag:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    .line 90
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 93
    :cond_e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readLength()I

    move-result v2

    .line 95
    .local v2, length:I
    if-gez v2, :cond_b2

    .line 97
    sparse-switch v6, :sswitch_data_c6

    .line 137
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_aa

    .line 139
    and-int/lit8 v8, v6, 0x1f

    const/16 v9, 0x1f

    if-ne v8, v9, :cond_5a

    .line 141
    new-instance v8, Ljava/io/IOException;

    const-string v9, "unsupported high tag encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 100
    :sswitch_29
    const/4 v8, 0x0

    .line 206
    :goto_2a
    return-object v8

    .line 102
    :sswitch_2b
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;-><init>()V

    .line 106
    .local v5, seq:Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;
    :goto_30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 108
    .local v4, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v4, v8, :cond_3a

    move-object v8, v5

    .line 115
    goto :goto_2a

    .line 113
    :cond_3a
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_30

    .line 117
    .end local v4           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v5           #seq:Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;
    :sswitch_3e
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->buildConstructedOctetString()Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    move-result-object v8

    goto :goto_2a

    .line 119
    :sswitch_43
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v7, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 125
    .restart local v4       #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v4, v8, :cond_56

    .line 132
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_2a

    .line 130
    :cond_56
    invoke-virtual {v7, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_48

    .line 147
    .end local v4           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v7           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5a
    and-int/lit8 v8, v6, 0x20

    if-nez v8, :cond_6f

    .line 149
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readIndefiniteLengthFully()[B

    move-result-object v0

    .line 151
    .local v0, bytes:[B
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v9, v6, 0x1f

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v8, v11, v9, v10}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2a

    .line 157
    .end local v0           #bytes:[B
    :cond_6f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 159
    .local v1, dObj:Lcom/android/org/bouncycastle/asn1/DERObject;
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v1, v8, :cond_7f

    .line 161
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v9, v6, 0x1f

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(I)V

    goto :goto_2a

    .line 164
    :cond_7f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 170
    .local v3, next:Lcom/android/org/bouncycastle/asn1/DERObject;
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v3, v8, :cond_8f

    .line 172
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v9, v6, 0x1f

    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2a

    .line 178
    :cond_8f
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;-><init>()V

    .line 180
    .restart local v5       #seq:Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;
    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 184
    :cond_97
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 187
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    if-ne v3, v8, :cond_97

    .line 189
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    and-int/lit8 v9, v6, 0x1f

    invoke-direct {v8, v11, v9, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_2a

    .line 192
    .end local v1           #dObj:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v3           #next:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v5           #seq:Lcom/android/org/bouncycastle/asn1/BERConstructedSequence;
    :cond_aa
    new-instance v8, Ljava/io/IOException;

    const-string v9, "unknown BER object encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 197
    :cond_b2
    if-nez v6, :cond_ba

    if-nez v2, :cond_ba

    .line 199
    sget-object v8, Lcom/android/org/bouncycastle/asn1/BERInputStream;->END_OF_STREAM:Lcom/android/org/bouncycastle/asn1/DERObject;

    goto/16 :goto_2a

    .line 202
    :cond_ba
    new-array v0, v2, [B

    .line 204
    .restart local v0       #bytes:[B
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readFully([B)V

    .line 206
    invoke-virtual {p0, v6, v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->buildObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v8

    goto/16 :goto_2a

    .line 97
    nop

    :sswitch_data_c6
    .sparse-switch
        0x5 -> :sswitch_29
        0x24 -> :sswitch_3e
        0x30 -> :sswitch_2b
        0x31 -> :sswitch_43
    .end sparse-switch
.end method
