.class public abstract Lorg/apache/harmony/security/asn1/ASN1StringType;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1StringType.java"


# static fields
.field public static final BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

.field public static final UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$1;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$1;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 42
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$2;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$2;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 46
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$3;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$3;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 50
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$4;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$4;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 54
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$5;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$5;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 58
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$6;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$6;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    .line 62
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1StringType$7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1StringType$7;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "tagNumber"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 3
    .parameter "identifier"

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, p1, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    .line 102
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 129
    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    .line 133
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
    .line 117
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sget-object v4, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 136
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 137
    .local v0, bytes:[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 138
    array-length v1, v0

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 139
    return-void
.end method
