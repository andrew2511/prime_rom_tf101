.class public Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERObjectIdentifier.java"


# instance fields
.field identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "identifier"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 126
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 138
    return-void
.end method

.method constructor <init>([B)V
    .registers 14
    .parameter "bytes"

    .prologue
    const/16 v11, 0x2e

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v4, objId:Ljava/lang/StringBuffer;
    const-wide/16 v5, 0x0

    .line 61
    .local v5, value:J
    const/4 v1, 0x0

    .line 62
    .local v1, bigValue:Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 64
    .local v2, first:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    array-length v7, p1

    if-eq v3, v7, :cond_77

    .line 66
    aget-byte v7, p1, v3

    and-int/lit16 v0, v7, 0xff

    .line 68
    .local v0, b:I
    const-wide/high16 v7, 0x80

    cmp-long v7, v5, v7

    if-gez v7, :cond_53

    .line 70
    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    .line 71
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_41

    .line 73
    if-eqz v2, :cond_39

    .line 75
    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_82

    .line 85
    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    .line 88
    :goto_38
    const/4 v2, 0x0

    .line 91
    :cond_39
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 93
    const-wide/16 v5, 0x0

    .line 64
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 78
    :pswitch_44
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 81
    :pswitch_4a
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    .line 83
    goto :goto_38

    .line 98
    :cond_53
    if-nez v1, :cond_59

    .line 100
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    :cond_59
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 104
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_41

    .line 106
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 108
    const/4 v1, 0x0

    .line 109
    const-wide/16 v5, 0x0

    goto :goto_41

    .line 119
    .end local v0           #b:I
    :cond_77
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 121
    return-void

    .line 75
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 4
    .parameter "obj"

    .prologue
    .line 21
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_a

    .line 23
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p0
    move-object v0, p0

    .line 33
    :goto_9
    return-object v0

    .line 26
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_9

    .line 31
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 33
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    goto :goto_9

    .line 36
    .restart local p0
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .registers 11
    .parameter "identifier"

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x2e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_13

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_15

    :cond_13
    move v4, v6

    .line 303
    :goto_14
    return v4

    .line 272
    :cond_15
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 273
    .local v1, first:C
    if-lt v1, v9, :cond_1f

    const/16 v4, 0x32

    if-le v1, v4, :cond_21

    :cond_1f
    move v4, v6

    .line 275
    goto :goto_14

    .line 278
    :cond_21
    const/4 v3, 0x0

    .line 279
    .local v3, periodAllowed:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, v7

    .local v2, i:I
    :goto_28
    const/4 v4, 0x2

    if-lt v2, v4, :cond_43

    .line 281
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 283
    .local v0, ch:C
    if-gt v9, v0, :cond_39

    const/16 v4, 0x39

    if-gt v0, v4, :cond_39

    .line 285
    const/4 v3, 0x1

    .line 279
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 289
    :cond_39
    if-ne v0, v8, :cond_41

    .line 291
    if-nez v3, :cond_3f

    move v4, v6

    .line 293
    goto :goto_14

    .line 296
    :cond_3f
    const/4 v3, 0x0

    .line 297
    goto :goto_36

    :cond_41
    move v4, v6

    .line 300
    goto :goto_14

    .end local v0           #ch:C
    :cond_43
    move v4, v3

    .line 303
    goto :goto_14
.end method

.method private writeField(Ljava/io/OutputStream;J)V
    .registers 6
    .parameter "out"
    .parameter "fieldValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const-wide/16 v0, 0x80

    cmp-long v0, p2, v0

    if-ltz v0, :cond_87

    .line 152
    const-wide/16 v0, 0x4000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_7e

    .line 154
    const-wide/32 v0, 0x200000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_74

    .line 156
    const-wide/32 v0, 0x10000000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_6a

    .line 158
    const-wide v0, 0x800000000L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_60

    .line 160
    const-wide v0, 0x40000000000L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_56

    .line 162
    const-wide/high16 v0, 0x2

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4c

    .line 164
    const-wide/high16 v0, 0x100

    cmp-long v0, p2, v0

    if-ltz v0, :cond_42

    .line 166
    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 168
    :cond_42
    const/16 v0, 0x31

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    :cond_4c
    const/16 v0, 0x2a

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 172
    :cond_56
    const/16 v0, 0x23

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 174
    :cond_60
    const/16 v0, 0x1c

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 176
    :cond_6a
    const/16 v0, 0x15

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 178
    :cond_74
    const/16 v0, 0xe

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 180
    :cond_7e
    const/4 v0, 0x7

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 182
    :cond_87
    long-to-int v0, p2

    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 183
    return-void
.end method

.method private writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .registers 9
    .parameter "out"
    .parameter "fieldValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 190
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 191
    .local v0, byteCount:I
    if-nez v0, :cond_10

    .line 193
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 208
    :goto_f
    return-void

    .line 197
    :cond_10
    move-object v3, p2

    .line 198
    .local v3, tmpValue:Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 199
    .local v2, tmp:[B
    sub-int v1, v0, v5

    .local v1, i:I
    :goto_15
    if-ltz v1, :cond_2a

    .line 201
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 202
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 199
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 204
    :cond_2a
    sub-int v4, v0, v5

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 205
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_f
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 250
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_6

    .line 252
    const/4 v0, 0x0

    .line 255
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v3, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, tok:Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v2, dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {p0, v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    .line 222
    :goto_28
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 224
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_42

    .line 227
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    goto :goto_28

    .line 231
    :cond_42
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_28

    .line 235
    .end local v4           #token:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 239
    .local v1, bytes:[B
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 240
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
