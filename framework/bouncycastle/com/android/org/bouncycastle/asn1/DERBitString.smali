.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERBitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERString;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method protected constructor <init>(BI)V
    .registers 5
    .parameter "data"
    .parameter "padBits"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 144
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .parameter "obj"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 170
    :try_start_3
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    .line 177
    return-void

    .line 173
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing object : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 163
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .parameter "data"
    .parameter "padBits"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    .line 156
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    .line 157
    return-void
.end method

.method protected static getBytes(I)[B
    .registers 6
    .parameter "bitString"

    .prologue
    .line 71
    const/4 v0, 0x4

    .line 72
    .local v0, bytes:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    const/4 v3, 0x1

    if-lt v1, v3, :cond_d

    .line 74
    const/16 v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_1e

    .line 81
    :cond_d
    new-array v2, v0, [B

    .line 82
    .local v2, result:[B
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_23

    .line 84
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 78
    .end local v2           #result:[B
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    .line 72
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 87
    .restart local v2       #result:[B
    :cond_23
    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    if-eqz p0, :cond_8

    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_c

    .line 100
    :cond_8
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    .end local p0
    move-object v3, p0

    .line 116
    :goto_b
    return-object v3

    .line 103
    .restart local p0
    :cond_c
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_27

    .line 105
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 106
    .local v0, bytes:[B
    aget-byte v2, v0, v5

    .line 107
    .local v2, padBits:I
    array-length v3, v0

    sub-int/2addr v3, v4

    new-array v1, v3, [B

    .line 109
    .local v1, data:[B
    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_b

    .line 114
    .end local v0           #bytes:[B
    .end local v1           #data:[B
    .end local v2           #padBits:I
    .restart local p0
    :cond_27
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_36

    .line 116
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    goto :goto_b

    .line 119
    .restart local p0
    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal object in getInstance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static getPadBits(I)I
    .registers 5
    .parameter "bitString"

    .prologue
    .line 24
    const/4 v2, 0x0

    .line 25
    .local v2, val:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_12

    .line 31
    if-eqz v1, :cond_16

    .line 33
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    if-eqz v3, :cond_1b

    .line 35
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 49
    :cond_12
    :goto_12
    if-nez v2, :cond_1e

    .line 51
    const/4 v3, 0x7

    .line 62
    :goto_15
    return v3

    .line 41
    :cond_16
    if-eqz p0, :cond_1b

    .line 43
    and-int/lit16 v2, p0, 0xff

    .line 44
    goto :goto_12

    .line 25
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 55
    :cond_1e
    const/4 v0, 0x1

    .line 57
    .local v0, bits:I
    :goto_1f
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_28

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 62
    :cond_28
    const/16 v3, 0x8

    sub-int/2addr v3, v0

    goto :goto_15
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 225
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-nez v2, :cond_7

    move v2, v4

    .line 232
    :goto_6
    return v2

    .line 230
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-object v1, v0

    .line 232
    .local v1, other:Lcom/android/org/bouncycastle/asn1/DERBitString;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    iget v3, v1, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    iget-object v3, v1, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_6

    :cond_1d
    move v2, v4

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 211
    .local v0, bytes:[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 212
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v2, v0

    sub-int/2addr v2, v4

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 215
    return-void
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 238
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, buf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_11
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_37

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 253
    .local v5, string:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    array-length v6, v5

    if-eq v4, v6, :cond_40

    .line 255
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 246
    .end local v4           #i:I
    .end local v5           #string:[B
    :catch_37
    move-exception v3

    .line 248
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:I
    .restart local v5       #string:[B
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .registers 5

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x4

    if-eq v0, v2, :cond_17

    .line 199
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
