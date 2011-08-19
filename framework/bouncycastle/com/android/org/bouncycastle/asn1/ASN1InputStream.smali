.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 27
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "input"
    .parameter "limit"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 4
    .parameter "input"
    .parameter "limit"
    .parameter "lazyEvaluate"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 84
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 85
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "input"

    .prologue
    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 40
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5
    .parameter "input"
    .parameter "lazyEvaluate"

    .prologue
    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 54
    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 7
    .parameter "tagNo"
    .parameter "bytes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    packed-switch p0, :pswitch_data_7e

    .line 385
    :pswitch_5
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v2, v3, p0, p1}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_a
    return-object v2

    .line 343
    :pswitch_b
    aget-byte v1, p1, v3

    .line 344
    .local v1, padBits:I
    array-length v2, p1

    sub-int/2addr v2, v4

    new-array v0, v2, [B

    .line 345
    .local v0, data:[B
    array-length v2, p1

    sub-int/2addr v2, v4

    invoke-static {p1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_a

    .line 349
    .end local v0           #data:[B
    .end local v1           #padBits:I
    :pswitch_1c
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_a

    .line 352
    :pswitch_22
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    goto :goto_a

    .line 355
    :pswitch_27
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_a

    .line 357
    :pswitch_2d
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto :goto_a

    .line 359
    :pswitch_33
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_a

    .line 361
    :pswitch_39
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_a

    .line 363
    :pswitch_3f
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_a

    .line 365
    :pswitch_45
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    goto :goto_a

    .line 367
    :pswitch_48
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_a

    .line 369
    :pswitch_4e
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_a

    .line 371
    :pswitch_54
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_a

    .line 373
    :pswitch_5a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_a

    .line 375
    :pswitch_60
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_a

    .line 377
    :pswitch_66
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_a

    .line 379
    :pswitch_6c
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto :goto_a

    .line 381
    :pswitch_72
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_a

    .line 383
    :pswitch_78
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_a

    .line 339
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_3f
        :pswitch_b
        :pswitch_54
        :pswitch_45
        :pswitch_4e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_27
        :pswitch_5
        :pswitch_72
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_48
        :pswitch_5a
        :pswitch_60
        :pswitch_5
        :pswitch_39
        :pswitch_6c
        :pswitch_2d
        :pswitch_5
        :pswitch_78
        :pswitch_33
        :pswitch_66
        :pswitch_5
        :pswitch_1c
    .end packed-switch
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .registers 9
    .parameter "s"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 289
    .local v1, length:I
    if-gez v1, :cond_e

    .line 291
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_e
    const/16 v4, 0x80

    if-ne v1, v4, :cond_14

    .line 296
    const/4 v4, -0x1

    .line 332
    :goto_13
    return v4

    .line 299
    :cond_14
    const/16 v4, 0x7f

    if-le v1, v4, :cond_63

    .line 301
    and-int/lit8 v3, v1, 0x7f

    .line 303
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_36

    .line 305
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_36
    const/4 v1, 0x0

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    if-ge v0, v3, :cond_4f

    .line 311
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 313
    .local v2, next:I
    if-gez v2, :cond_48

    .line 315
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_48
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 321
    .end local v2           #next:I
    :cond_4f
    if-gez v1, :cond_59

    .line 323
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    :cond_59
    if-lt v1, p1, :cond_63

    .line 328
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_63
    move v4, v1

    .line 332
    goto :goto_13
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .parameter "s"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    and-int/lit8 v1, p1, 0x1f

    .line 254
    .local v1, tagNo:I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_34

    .line 256
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 262
    .local v0, b:I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_17

    .line 264
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_17
    :goto_17
    if-ltz v0, :cond_27

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_27

    .line 269
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 270
    shl-int/lit8 v1, v1, 0x7

    .line 271
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_17

    .line 274
    :cond_27
    if-gez v0, :cond_31

    .line 276
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_31
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 282
    .end local v0           #b:I
    :cond_34
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 163
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .local v0, o:Lcom/android/org/bouncycastle/asn1/DERObject;
    if-eqz v0, :cond_f

    .line 165
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 168
    :cond_f
    return-object v1
.end method

.method protected buildObject(III)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 9
    .parameter "tag"
    .parameter "tagNo"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_1a

    move v1, v4

    .line 114
    .local v1, isConstructed:Z
    :goto_7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 116
    .local v0, defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_1c

    .line 118
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 154
    :goto_19
    return-object v2

    .end local v0           #defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v1           #isConstructed:Z
    :cond_1a
    move v1, v3

    .line 112
    goto :goto_7

    .line 121
    .restart local v0       #defIn:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local v1       #isConstructed:Z
    :cond_1c
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_2a

    .line 123
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_19

    .line 126
    :cond_2a
    if-eqz v1, :cond_6f

    .line 129
    sparse-switch p2, :sswitch_data_78

    .line 150
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    goto :goto_19

    .line 135
    :sswitch_39
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_19

    .line 137
    :sswitch_45
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_53

    .line 139
    new-instance v2, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_19

    .line 143
    :cond_53
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_19

    .line 146
    :sswitch_5c
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)Lcom/android/org/bouncycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_19

    .line 148
    :sswitch_65
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_19

    .line 154
    :cond_6f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_19

    .line 129
    :sswitch_data_78
    .sparse-switch
        0x4 -> :sswitch_39
        0x8 -> :sswitch_65
        0x10 -> :sswitch_45
        0x11 -> :sswitch_5c
    .end sparse-switch
.end method

.method protected readFully([B)V
    .registers 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_f

    .line 99
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_f
    return-void
.end method

.method protected readLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v4

    .line 181
    .local v4, tag:I
    if-gtz v4, :cond_12

    .line 183
    if-nez v4, :cond_10

    .line 185
    new-instance v6, Ljava/io/IOException;

    const-string v7, "unexpected end-of-contents marker"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :cond_10
    const/4 v6, 0x0

    .line 242
    :goto_11
    return-object v6

    .line 194
    :cond_12
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v5

    .line 196
    .local v5, tagNo:I
    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    move v1, v6

    .line 201
    .local v1, isConstructed:Z
    :goto_1c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 203
    .local v2, length:I
    if-gez v2, :cond_91

    .line 205
    if-nez v1, :cond_2f

    .line 207
    new-instance v6, Ljava/io/IOException;

    const-string v7, "indefinite length primitive encoding encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    .end local v1           #isConstructed:Z
    .end local v2           #length:I
    :cond_2c
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1c

    .line 210
    .restart local v1       #isConstructed:Z
    .restart local v2       #length:I
    :cond_2f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    .local v0, indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_49

    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 216
    .local v3, sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v6, v5, v3}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 218
    .end local v3           #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_49
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_57

    .line 220
    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v6, v4, v5, v0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 223
    :cond_57
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 226
    .restart local v3       #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    sparse-switch v5, :sswitch_data_98

    .line 237
    new-instance v6, Ljava/io/IOException;

    const-string v7, "unknown BER object encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 229
    :sswitch_69
    new-instance v6, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 231
    :sswitch_73
    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 233
    :sswitch_7d
    new-instance v6, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 235
    :sswitch_87
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_11

    .line 242
    .end local v0           #indIn:Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v3           #sp:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_91
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto/16 :goto_11

    .line 226
    nop

    :sswitch_data_98
    .sparse-switch
        0x4 -> :sswitch_69
        0x8 -> :sswitch_87
        0x10 -> :sswitch_73
        0x11 -> :sswitch_7d
    .end sparse-switch
.end method
