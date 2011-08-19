.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field protected in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 8
    .parameter "in"
    .parameter "initialSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    .line 125
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 127
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 129
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 132
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2e

    .line 133
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 134
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 141
    .end local v0           #newBuffer:[B
    :cond_2e
    return-void

    .line 138
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    .line 139
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding indefinite length encoding is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 73
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 7
    .parameter "encoded"
    .parameter "offset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 91
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 92
    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 94
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 97
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_23

    .line 99
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Wrong content length"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_23
    return-void
.end method

.method private final decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .registers 10
    .parameter "collection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 711
    .local v0, begOffset:I
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v5

    .line 713
    .local v1, endOffset:I
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 715
    .local v3, type:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v5, :cond_17

    .line 716
    :goto_c
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_31

    .line 717
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 718
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    goto :goto_c

    .line 722
    :cond_17
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 724
    .local v2, seqTagOffset:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v4, values:Ljava/util/ArrayList;
    :goto_1e
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_2d

    .line 726
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 727
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 730
    :cond_2d
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 732
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 735
    .end local v2           #seqTagOffset:I
    .end local v4           #values:Ljava/util/ArrayList;
    :cond_31
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v5, v1, :cond_54

    .line 736
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong encoding at ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 738
    :cond_54
    return-void
.end method

.method private expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;
    .registers 5
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " identifier expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLength([B)I
    .registers 6
    .parameter "encoding"

    .prologue
    .line 228
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 229
    .local v1, length:I
    const/4 v2, 0x0

    .line 230
    .local v2, numOctets:I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_21

    .line 231
    and-int/lit8 v2, v1, 0x7f

    .line 234
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 235
    const/4 v0, 0x3

    .local v0, i:I
    :goto_12
    add-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_21

    .line 236
    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 240
    .end local v0           #i:I
    :cond_21
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    return v3
.end method

.method private strToInt(II)I
    .registers 9
    .parameter "off"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v3, 0x0

    .line 471
    .local v3, result:I
    move v2, p1

    .local v2, i:I
    add-int v1, p1, p2

    .local v1, end:I
    :goto_4
    if-ge v2, v1, :cond_23

    .line 472
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    aget-byte v4, v4, v2

    const/16 v5, 0x30

    sub-int v0, v4, v5

    .line 473
    .local v0, c:I
    if-ltz v0, :cond_14

    const/16 v4, 0x9

    if-le v0, v4, :cond_1c

    .line 474
    :cond_14
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v5, "Time encoding has invalid char"

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_1c
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 478
    .end local v0           #c:I
    :cond_23
    return v3
.end method


# virtual methods
.method public compactBuffer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 920
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_15

    .line 921
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    new-array v0, v1, [B

    .line 923
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 927
    .end local v0           #newBuffer:[B
    :cond_15
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 964
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v1, :cond_8

    move-object v1, v3

    .line 973
    :goto_7
    return-object v1

    .line 968
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 969
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_20

    .line 970
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    goto :goto_7

    .line 968
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_23
    move-object v1, v3

    .line 973
    goto :goto_7
.end method

.method public final getBuffer()[B
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    return-object v0
.end method

.method public final getContentOffset()I
    .registers 2

    .prologue
    .line 814
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    return v0
.end method

.method public getEncoded()[B
    .registers 6

    .prologue
    .line 763
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 764
    .local v0, encoded:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    return-object v0
.end method

.method public final getEndOffset()I
    .registers 3

    .prologue
    .line 801
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .registers 2

    .prologue
    .line 783
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    return v0
.end method

.method public final getOffset()I
    .registers 2

    .prologue
    .line 792
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    return v0
.end method

.method public final getTagOffset()I
    .registers 2

    .prologue
    .line 810
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    return v0
.end method

.method public next()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 192
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 195
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 196
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_83

    .line 198
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_86

    .line 199
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit8 v2, v3, 0x7f

    .line 201
    .local v2, numOctets:I
    const/4 v3, 0x5

    if-le v2, v3, :cond_44

    .line 202
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_44
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 207
    const/4 v1, 0x1

    .local v1, i:I
    :goto_4b
    if-ge v1, v2, :cond_5b

    .line 208
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v0

    .line 209
    .local v0, ch:I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 212
    .end local v0           #ch:I
    :cond_5b
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const v4, 0xffffff

    if-le v3, v4, :cond_86

    .line 213
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too long encoding at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    .end local v1           #i:I
    .end local v2           #numOctets:I
    :cond_83
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 219
    :cond_86
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 221
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "key"
    .parameter "entry"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 939
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_17

    .line 940
    const/16 v2, 0xa

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    .line 943
    :cond_17
    const/4 v0, 0x0

    .line 944
    .local v0, i:I
    :goto_18
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-eqz v2, :cond_39

    .line 945
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_36

    .line 946
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    .line 960
    :goto_35
    return-void

    .line 944
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 951
    :cond_39
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ne v0, v2, :cond_72

    .line 952
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 953
    .local v1, newPool:[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v3, v1, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aget-object v3, v1, v6

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    goto :goto_35

    .line 957
    .end local v1           #newPool:[[Ljava/lang/Object;
    :cond_72
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aput-object p1, v2, v0

    .line 958
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_35
.end method

.method protected read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_f

    .line 855
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 858
    :cond_f
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_20

    .line 859
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 868
    :goto_1f
    return v1

    .line 861
    :cond_20
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 862
    .local v0, octet:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    .line 863
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Unexpected end of encoding"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_31
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    move v1, v0

    .line 868
    goto :goto_1f
.end method

.method public readBitString()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_85

    .line 252
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v0, :cond_2a

    .line 253
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong length. Tag at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2a
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 259
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_57

    .line 260
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. A number of unused bits MUST be in range 0 to 7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_57
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_9a

    .line 264
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 Bitstring: wrong content at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. For empty string unused bits MUST be 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_85
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_93

    .line 268
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 bitstring  type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_93
    const-string v0, "bitstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 272
    :cond_9a
    return-void
.end method

.method public readBoolean()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 317
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_c

    .line 318
    const-string v0, "boolean"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 322
    :cond_c
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_31

    .line 323
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong length for ASN.1 boolean at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_31
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 327
    return-void
.end method

.method public readContent()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_12

    .line 880
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Unexpected end of encoding"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_12
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1e

    .line 884
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 903
    :goto_1d
    return-void

    .line 886
    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 888
    .local v0, bytesRead:I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v2, :cond_51

    .line 891
    move v1, v0

    .line 893
    .local v1, c:I
    :cond_2f
    const/4 v2, 0x1

    if-lt v1, v2, :cond_36

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v0, v2, :cond_3e

    .line 894
    :cond_36
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "Failed to read encoded content"

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    :cond_3e
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 897
    add-int/2addr v0, v1

    .line 898
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ne v0, v2, :cond_2f

    .line 901
    .end local v1           #c:I
    :cond_51
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    goto :goto_1d
.end method

.method public readEnumerated()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_d

    .line 282
    const-string v1, "enumerated"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    .line 290
    :cond_d
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v1, :cond_32

    .line 291
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong length for identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_32
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 297
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_75

    .line 299
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 300
    .local v0, bits:I
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_4e

    .line 301
    add-int/lit16 v0, v0, 0x100

    .line 304
    :cond_4e
    if-eqz v0, :cond_54

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_75

    .line 305
    :cond_54
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 enumerated: wrong content at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    .end local v0           #bits:I
    :cond_75
    return-void
.end method

.method public readGeneralizedTime()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 346
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_111

    .line 349
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 354
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v2, v7

    aget-byte v1, v1, v2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_22

    .line 356
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "ASN.1 GeneralizedTime: encoded format is not implemented"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_22
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_55

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_34

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_55

    .line 363
    :cond_34
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_55
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v6, :cond_8a

    .line 368
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xe

    aget-byte v0, v1, v2

    .line 369
    .local v0, char14:B
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8a

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8a

    .line 370
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 GeneralizedTime wrongly encoded at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    .end local v0           #char14:B
    :cond_8a
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v1, :cond_93

    .line 375
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 377
    :cond_93
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v3, v8}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 378
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v7

    .line 379
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v4

    .line 380
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 381
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v8

    .line 382
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 384
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v6, :cond_ff

    .line 386
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v5

    .line 388
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_100

    .line 389
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x64

    aput v2, v1, v5

    .line 401
    :cond_ff
    :goto_ff
    return-void

    .line 390
    :cond_100
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_ff

    .line 391
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v5

    goto :goto_ff

    .line 396
    :cond_111
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_11f

    .line 397
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "Decoding constructed ASN.1 GeneralizedTime type is not supported"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_11f
    const-string v1, "GeneralizedTime"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1
.end method

.method public readInteger()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 488
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 489
    const-string v2, "integer"

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v2

    throw v2

    .line 493
    :cond_d
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v2, v4, :cond_32

    .line 494
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong length for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_32
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 500
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v2, v4, :cond_7f

    .line 502
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    aget-byte v0, v2, v3

    .line 503
    .local v0, firstByte:B
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    int-to-byte v1, v2

    .line 505
    .local v1, secondByte:B
    if-nez v0, :cond_54

    if-eqz v1, :cond_5b

    :cond_54
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7f

    const/16 v2, -0x80

    if-ne v1, v2, :cond_7f

    .line 507
    :cond_5b
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong content for ASN.1 integer at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. An integer MUST be encoded in minimum number of octets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    .end local v0           #firstByte:B
    .end local v1           #secondByte:B
    :cond_7f
    return-void
.end method

.method public readOID()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 542
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    .line 543
    const-string v1, "OID"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v1

    throw v1

    .line 547
    :cond_d
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v4, :cond_32

    .line 548
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong length for ASN.1 object identifier at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_32
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 554
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_62

    .line 555
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong encoding at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_62
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 559
    const/4 v0, 0x0

    .local v0, i:I
    :goto_65
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v0, v1, :cond_82

    .line 572
    :goto_69
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_79

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 559
    :cond_79
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    goto :goto_65

    .line 576
    :cond_82
    return-void
.end method

.method public readOctetString()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 520
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 526
    return-void

    .line 521
    :cond_9
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_17

    .line 522
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 octet string type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_17
    const-string v0, "octetstring"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 11
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 586
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v7, 0x30

    if-eq v6, v7, :cond_e

    .line 587
    const-string v6, "sequence"

    invoke-direct {p0, v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v6

    throw v6

    .line 590
    :cond_e
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 591
    .local v0, begOffset:I
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v6

    .line 593
    .local v1, endOffset:I
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 595
    .local v4, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    const/4 v2, 0x0

    .line 597
    .local v2, i:I
    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v6, :cond_91

    .line 599
    :goto_1b
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_67

    array-length v6, v4

    if-ge v2, v6, :cond_67

    .line 601
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 602
    :goto_25
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 604
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_39

    array-length v6, v4

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_5a

    .line 605
    :cond_39
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 607
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 610
    :cond_5d
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 614
    :cond_65
    add-int/lit8 v2, v2, 0x1

    :cond_67
    array-length v6, v4

    if-ge v2, v6, :cond_12b

    .line 615
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_65

    .line 616
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 622
    :cond_91
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 624
    .local v3, seqTagOffset:I
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 625
    .local v5, values:[Ljava/lang/Object;
    :goto_96
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_fd

    array-length v6, v4

    if-ge v2, v6, :cond_fd

    .line 627
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 628
    :goto_a0
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_e4

    .line 630
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_b4

    array-length v6, v4

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_d5

    .line 631
    :cond_b4
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 635
    :cond_d5
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_e1

    .line 636
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 638
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 640
    :cond_e4
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 648
    :cond_ef
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_fb

    .line 649
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 644
    :cond_fb
    add-int/lit8 v2, v2, 0x1

    :cond_fd
    array-length v6, v4

    if-ge v2, v6, :cond_127

    .line 645
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_ef

    .line 646
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASN.1 Sequence: mandatory value is missing at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 652
    :cond_127
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 654
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 657
    .end local v3           #seqTagOffset:I
    .end local v5           #values:[Ljava/lang/Object;
    :cond_12b
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v6, v1, :cond_14e

    .line 658
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong encoding at ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Content\'s length and encoded length are not the same"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 660
    :cond_14e
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 4
    .parameter "sequenceOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_d

    .line 671
    const-string v0, "sequenceOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 674
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 675
    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 4
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    .line 686
    const-string v0, "set"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 689
    :cond_d
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding ASN.1 Set type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 4
    .parameter "setOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_d

    .line 701
    const-string v0, "setOf"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 704
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 705
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v0, v1, :cond_a

    .line 749
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 755
    return-void

    .line 750
    :cond_a
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_18

    .line 751
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 string type is not provided"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_18
    const-string v0, "string"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0
.end method

.method public readUTCTime()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 410
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_d2

    .line 412
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    packed-switch v0, :pswitch_data_e8

    .line 421
    :pswitch_e
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime: wrong length, identifier at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :pswitch_29
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "ASN.1 UTCTime: local time format is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :pswitch_31
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 431
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v1, v4

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_60

    .line 432
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime wrongly encoded at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_60
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v0, :cond_69

    .line 437
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 440
    :cond_69
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v2

    .line 441
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v0, v0, v2

    const/16 v1, 0x31

    if-le v0, v1, :cond_c9

    .line 442
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x76c

    aput v1, v0, v2

    .line 447
    :goto_83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v4

    .line 448
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v3

    .line 449
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 450
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 452
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c8

    .line 453
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 462
    :cond_c8
    return-void

    .line 444
    :cond_c9
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x7d0

    aput v1, v0, v2

    goto :goto_83

    .line 457
    :cond_d2
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_e0

    .line 458
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "Decoding constructed ASN.1 UTCTime type is not supported"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_e0
    const-string v0, "UTCTime"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->expected(Ljava/lang/String;)Lorg/apache/harmony/security/asn1/ASN1Exception;

    move-result-object v0

    throw v0

    .line 412
    nop

    :pswitch_data_e8
    .packed-switch 0xb
        :pswitch_31
        :pswitch_e
        :pswitch_31
        :pswitch_e
        :pswitch_29
        :pswitch_e
        :pswitch_29
    .end packed-switch
.end method

.method public final reset([B)V
    .registers 2
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 152
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 153
    return-void
.end method

.method public final setVerify()V
    .registers 2

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    .line 836
    return-void
.end method
