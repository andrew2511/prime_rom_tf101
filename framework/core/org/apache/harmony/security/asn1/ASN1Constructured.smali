.class public abstract Lorg/apache/harmony/security/asn1/ASN1Constructured;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Constructured.java"


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "tagNumber"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "tagClass"
    .parameter "tagNumber"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 3
    .parameter "identifier"

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Constructured;->constrId:I

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
    .line 57
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Constructured;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructured;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 59
    return-void
.end method
