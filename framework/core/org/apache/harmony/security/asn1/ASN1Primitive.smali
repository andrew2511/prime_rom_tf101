.class public abstract Lorg/apache/harmony/security/asn1/ASN1Primitive;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Primitive.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "tagNumber"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 3
    .parameter "identifier"

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Primitive;->id:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Primitive;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Primitive;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 56
    return-void
.end method
