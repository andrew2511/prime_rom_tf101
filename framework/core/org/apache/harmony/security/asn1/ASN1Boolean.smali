.class public Lorg/apache/harmony/security/asn1/ASN1Boolean;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 49
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

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
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    .line 72
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeBoolean()V

    .line 99
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_b

    .line 86
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 102
    const/4 v0, 0x1

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 103
    return-void
.end method
