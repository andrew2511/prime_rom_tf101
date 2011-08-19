.class public Lcom/android/org/bouncycastle/asn1/DERInputStream;
.super Ljava/io/FilterInputStream;
.source "DERInputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "is"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected buildObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 16
    .parameter "tag"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 105
    sparse-switch p1, :sswitch_data_134

    .line 189
    and-int/lit16 v9, p1, 0x80

    if-eqz v9, :cond_12c

    .line 191
    and-int/lit8 v9, p1, 0x1f

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_c3

    .line 193
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unsupported high tag encountered"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :sswitch_17
    const/4 v9, 0x0

    .line 256
    :goto_18
    return-object v9

    .line 110
    :sswitch_19
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v0, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    .local v1, dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    .line 118
    .local v7, seq:Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    .line 120
    .local v5, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_28

    .line 123
    .end local v5           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_30
    move-exception v9

    move-object v4, v9

    .local v4, ex:Ljava/io/EOFException;
    move-object v9, v7

    .line 125
    goto :goto_18

    .line 128
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    .end local v4           #ex:Ljava/io/EOFException;
    .end local v7           #seq:Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
    :sswitch_34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 129
    .restart local v0       #bIn:Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    .restart local v1       #dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    .local v8, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    .line 139
    .restart local v5       #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v8, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_4a
    .catch Ljava/io/EOFException; {:try_start_43 .. :try_end_4a} :catch_4b

    goto :goto_43

    .line 142
    .end local v5           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_4b
    move-exception v9

    move-object v4, v9

    .line 144
    .restart local v4       #ex:Ljava/io/EOFException;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;

    invoke-direct {v9, v8}, Lcom/android/org/bouncycastle/asn1/DERConstructedSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_18

    .line 148
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    .end local v4           #ex:Ljava/io/EOFException;
    .end local v8           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_53
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v9

    goto :goto_18

    .line 151
    :sswitch_58
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_18

    .line 153
    :sswitch_5e
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_18

    .line 155
    :sswitch_64
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_18

    .line 157
    :sswitch_6a
    aget-byte v6, p2, v12

    .line 158
    .local v6, padBits:I
    array-length v9, p2

    sub-int/2addr v9, v10

    new-array v3, v9, [B

    .line 160
    .local v3, data:[B
    array-length v9, p2

    sub-int/2addr v9, v10

    invoke-static {p2, v10, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v9, v3, v6}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_18

    .line 164
    .end local v3           #data:[B
    .end local v6           #padBits:I
    :sswitch_7b
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_18

    .line 166
    :sswitch_81
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_18

    .line 168
    :sswitch_87
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_18

    .line 170
    :sswitch_8d
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_18

    .line 172
    :sswitch_93
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_18

    .line 174
    :sswitch_99
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_18

    .line 176
    :sswitch_a0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto/16 :goto_18

    .line 178
    :sswitch_a7
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto/16 :goto_18

    .line 180
    :sswitch_ae
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto/16 :goto_18

    .line 182
    :sswitch_b5
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto/16 :goto_18

    .line 184
    :sswitch_bc
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v9, p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto/16 :goto_18

    .line 196
    :cond_c3
    array-length v9, p2

    if-nez v9, :cond_e3

    .line 198
    and-int/lit8 v9, p1, 0x20

    if-nez v9, :cond_d5

    .line 201
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v10, p1, 0x1f

    sget-object v11, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v9, v12, v10, v11}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 206
    :cond_d5
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v10, p1, 0x1f

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    invoke-direct {v9, v12, v10, v11}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 213
    :cond_e3
    and-int/lit8 v9, p1, 0x20

    if-nez v9, :cond_f5

    .line 215
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v10, p1, 0x1f

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v11, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v9, v12, v10, v11}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 218
    :cond_f5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    .restart local v0       #bIn:Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .restart local v1       #dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 227
    .local v2, dObj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->available()I

    move-result v9

    if-nez v9, :cond_112

    .line 229
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v10, p1, 0x1f

    invoke-direct {v9, v10, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 235
    :cond_112
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    .line 237
    .restart local v7       #seq:Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 243
    :goto_11a
    :try_start_11a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BERInputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 245
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_121
    .catch Ljava/io/EOFException; {:try_start_11a .. :try_end_121} :catch_122

    goto :goto_11a

    .line 248
    :catch_122
    move-exception v9

    .line 253
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    and-int/lit8 v10, p1, 0x1f

    invoke-direct {v9, v12, v10, v7}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 256
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/BERInputStream;
    .end local v2           #dObj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .end local v7           #seq:Lcom/android/org/bouncycastle/asn1/DERConstructedSequence;
    :cond_12c
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v9, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(I[B)V

    goto/16 :goto_18

    .line 105
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_53
        0x2 -> :sswitch_58
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_ae
        0x5 -> :sswitch_17
        0x6 -> :sswitch_64
        0xa -> :sswitch_5e
        0xc -> :sswitch_7b
        0x13 -> :sswitch_81
        0x14 -> :sswitch_8d
        0x16 -> :sswitch_87
        0x17 -> :sswitch_b5
        0x18 -> :sswitch_bc
        0x1a -> :sswitch_93
        0x1b -> :sswitch_a0
        0x1c -> :sswitch_99
        0x1e -> :sswitch_a7
        0x30 -> :sswitch_19
        0x31 -> :sswitch_34
    .end sparse-switch
.end method

.method protected readFully([B)V
    .registers 6
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    array-length v1, p1

    .line 78
    .local v1, left:I
    if-nez v1, :cond_5

    .line 94
    :cond_3
    return-void

    .line 92
    .local v0, l:I
    :cond_4
    sub-int/2addr v1, v0

    .line 83
    .end local v0           #l:I
    :cond_5
    if-lez v1, :cond_3

    .line 85
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->read([BII)I

    move-result v0

    .line 87
    .restart local v0       #l:I
    if-gez v0, :cond_4

    .line 89
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readLength()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->read()I

    move-result v1

    .line 31
    .local v1, length:I
    if-gez v1, :cond_e

    .line 33
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_e
    const/16 v4, 0x80

    if-ne v1, v4, :cond_14

    .line 38
    const/4 v4, -0x1

    .line 69
    :goto_13
    return v4

    .line 41
    :cond_14
    const/16 v4, 0x7f

    if-le v1, v4, :cond_48

    .line 43
    and-int/lit8 v3, v1, 0x7f

    .line 45
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_25

    .line 47
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DER length more than 4 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_25
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v3, :cond_3e

    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->read()I

    move-result v2

    .line 55
    .local v2, next:I
    if-gez v2, :cond_37

    .line 57
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_37
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 63
    .end local v2           #next:I
    :cond_3e
    if-gez v1, :cond_48

    .line 65
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_48
    move v4, v1

    .line 69
    goto :goto_13
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->read()I

    move-result v2

    .line 264
    .local v2, tag:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 266
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 269
    :cond_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->readLength()I

    move-result v1

    .line 270
    .local v1, length:I
    new-array v0, v1, [B

    .line 272
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->readFully([B)V

    .line 274
    invoke-virtual {p0, v2, v0}, Lcom/android/org/bouncycastle/asn1/DERInputStream;->buildObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    return-object v3
.end method
