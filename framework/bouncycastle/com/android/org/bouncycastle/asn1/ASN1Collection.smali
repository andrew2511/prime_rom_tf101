.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Collection;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Collection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/ASN1Collection$1;,
        Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;
    }
.end annotation


# instance fields
.field private obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)[Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method private static getEncoded(Lcom/android/org/bouncycastle/asn1/DEREncodable;)[B
    .registers 6
    .parameter "obj"

    .prologue
    .line 274
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 278
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_a
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    .line 284
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 279
    :catch_12
    move-exception v2

    .line 280
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot encode object added to collection"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static lessThanOrEqual([B[B)Z
    .registers 9
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    array-length v3, p0

    array-length v4, p1

    if-gt v3, v4, :cond_1f

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, p0

    if-eq v0, v3, :cond_1d

    .line 240
    aget-byte v3, p0, v0

    and-int/lit16 v1, v3, 0xff

    .line 241
    .local v1, l:I
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    .line 243
    .local v2, r:I
    if-le v2, v1, :cond_16

    move v3, v6

    .line 263
    .end local v1           #l:I
    .end local v2           #r:I
    :goto_15
    return v3

    .line 245
    .restart local v1       #l:I
    .restart local v2       #r:I
    :cond_16
    if-le v1, v2, :cond_1a

    move v3, v5

    .line 246
    goto :goto_15

    .line 239
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #l:I
    .end local v2           #r:I
    :cond_1d
    move v3, v6

    .line 250
    goto :goto_15

    .line 252
    .end local v0           #i:I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_20
    array-length v3, p1

    if-eq v0, v3, :cond_36

    .line 253
    aget-byte v3, p0, v0

    and-int/lit16 v1, v3, 0xff

    .line 254
    .restart local v1       #l:I
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    .line 256
    .restart local v2       #r:I
    if-le v2, v1, :cond_2f

    move v3, v6

    .line 257
    goto :goto_15

    .line 258
    :cond_2f
    if-le v1, v2, :cond_33

    move v3, v5

    .line 259
    goto :goto_15

    .line 252
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .end local v1           #l:I
    .end local v2           #r:I
    :cond_36
    move v3, v5

    .line 263
    goto :goto_15
.end method

.method private setObjectAt(Lcom/android/org/bouncycastle/asn1/DEREncodable;I)V
    .registers 5
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 134
    packed-switch p2, :pswitch_data_18

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x4

    sub-int v1, p2, v1

    aput-object p1, v0, v1

    .line 144
    :goto_a
    return-void

    .line 135
    :pswitch_b
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_a

    .line 136
    :pswitch_e
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_a

    .line 137
    :pswitch_11
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_a

    .line 138
    :pswitch_14
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_a

    .line 134
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method protected addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 94
    if-nez p1, :cond_b

    .line 95
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "obj == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_b
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    .line 100
    .local v2, sz:I
    packed-switch v2, :pswitch_data_4a

    .line 112
    const/4 v3, 0x4

    sub-int v0, v2, v3

    .line 113
    .local v0, index:I
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    array-length v3, v3

    if-lt v0, v3, :cond_28

    .line 115
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0xa

    new-array v1, v3, [Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 116
    .local v1, newRest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 119
    .end local v1           #newRest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_28
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    aput-object p1, v3, v0

    .line 124
    .end local v0           #index:I
    :goto_2c
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    .line 125
    return-void

    .line 101
    :pswitch_33
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_2c

    .line 102
    :pswitch_36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_2c

    .line 103
    :pswitch_39
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_2c

    .line 104
    :pswitch_3c
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_2c

    .line 107
    :pswitch_3f
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/android/org/bouncycastle/asn1/DEREncodable;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 108
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    aput-object p1, v3, v5

    goto :goto_2c

    .line 100
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 4
    .parameter "index"

    .prologue
    .line 50
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    if-lt p1, v0, :cond_10

    .line 51
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_10
    packed-switch p1, :pswitch_data_28

    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    :goto_1a
    return-object v0

    .line 55
    :pswitch_1b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_1a

    .line 56
    :pswitch_1e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_1a

    .line 57
    :pswitch_21
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_1a

    .line 58
    :pswitch_24
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;

    goto :goto_1a

    .line 54
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 159
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Collection;Lcom/android/org/bouncycastle/asn1/ASN1Collection$1;)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 75
    .local v0, e:Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 77
    .local v1, hashCode:I
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 78
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_5

    .line 85
    .end local v2           #o:Ljava/lang/Object;
    :cond_17
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    return v0
.end method

.method protected sort()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 201
    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    if-gt v6, v7, :cond_6

    .line 232
    :cond_5
    return-void

    .line 205
    :cond_6
    const/4 v5, 0x1

    .line 208
    .local v5, swapped:Z
    :cond_7
    if-eqz v5, :cond_5

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, index:I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getEncoded(Lcom/android/org/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v0

    .line 212
    .local v0, a:[B
    const/4 v5, 0x0

    .line 214
    :goto_14
    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    sub-int/2addr v6, v7

    if-eq v2, v6, :cond_7

    .line 215
    add-int/lit8 v3, v2, 0x1

    .line 216
    .local v3, nextIndex:I
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getEncoded(Lcom/android/org/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v1

    .line 218
    .local v1, b:[B
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->lessThanOrEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 219
    move-object v0, v1

    .line 229
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    .line 230
    goto :goto_14

    .line 221
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    .line 223
    .local v4, o:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->setObjectAt(Lcom/android/org/bouncycastle/asn1/DEREncodable;I)V

    .line 224
    invoke-direct {p0, v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->setObjectAt(Lcom/android/org/bouncycastle/asn1/DEREncodable;I)V

    .line 226
    const/4 v5, 0x1

    goto :goto_2a
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I

    if-ge v0, v2, :cond_20

    .line 292
    if-eqz v0, :cond_16

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 295
    :cond_20
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
