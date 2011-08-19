.class public Lorg/apache/harmony/security/asn1/ASN1Enumerated;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 49
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Enumerated;

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
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readEnumerated()V

    .line 72
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeInteger()V

    .line 99
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    new-array v0, v1, [B

    .line 86
    .local v0, bytesEncoded:[B
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 102
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 103
    return-void
.end method
