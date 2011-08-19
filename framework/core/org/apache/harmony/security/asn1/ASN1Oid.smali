.class public Lorg/apache/harmony/security/asn1/ASN1Oid;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Oid.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

.field private static final STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    .line 153
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 49
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-object v0
.end method

.method public static getInstanceForString()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOID()V

    .line 72
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeOID()V

    .line 117
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 86
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 87
    .local v4, oidElement:I
    new-array v3, v4, [I

    .line 88
    .local v3, oid:[I
    const/4 v1, 0x1

    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v5, v3

    if-ge v1, v5, :cond_2f

    .line 89
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 90
    .local v2, octet:I
    and-int/lit8 v4, v2, 0x7f

    .line 91
    :goto_14
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_28

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 94
    shl-int/lit8 v5, v4, 0x7

    and-int/lit8 v6, v2, 0x7f

    or-int v4, v5, v6

    goto :goto_14

    .line 96
    :cond_28
    aput v4, v3, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 99
    .end local v2           #octet:I
    :cond_2f
    aget v5, v3, v7

    const/16 v6, 0x4f

    if-le v5, v6, :cond_40

    .line 100
    const/4 v5, 0x2

    aput v5, v3, v8

    .line 101
    aget v5, v3, v7

    const/16 v6, 0x50

    sub-int/2addr v5, v6

    aput v5, v3, v7

    .line 106
    :goto_3f
    return-object v3

    .line 103
    :cond_40
    aget v5, v3, v7

    div-int/lit8 v5, v5, 0x28

    aput v5, v3, v8

    .line 104
    aget v5, v3, v7

    rem-int/lit8 v5, v5, 0x28

    aput v5, v3, v7

    goto :goto_3f
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 9
    .parameter "out"

    .prologue
    .line 120
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v4, v0

    .line 122
    .local v4, oid:[I
    const/4 v3, 0x0

    .line 125
    .local v3, length:I
    const/4 v5, 0x0

    aget v5, v4, v5

    mul-int/lit8 v5, v5, 0x28

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int v1, v5, v6

    .line 126
    .local v1, elem:I
    if-nez v1, :cond_23

    .line 127
    const/4 v3, 0x1

    .line 135
    :cond_16
    const/4 v2, 0x2

    .local v2, i:I
    :goto_17
    array-length v5, v4

    if-ge v2, v5, :cond_33

    .line 136
    aget v5, v4, v2

    if-nez v5, :cond_2a

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 135
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 129
    .end local v2           #i:I
    :cond_23
    :goto_23
    if-lez v1, :cond_16

    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 129
    shr-int/lit8 v1, v1, 0x7

    goto :goto_23

    .line 140
    .restart local v2       #i:I
    :cond_2a
    aget v1, v4, v2

    :goto_2c
    if-lez v1, :cond_20

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 140
    shr-int/lit8 v1, v1, 0x7

    goto :goto_2c

    .line 144
    :cond_33
    iput v3, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 145
    return-void
.end method
