.class final Lorg/apache/harmony/security/x509/ReasonFlags$1;
.super Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.source "ReasonFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ReasonFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/ReasonFlags;-><init>([Z)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 106
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    #getter for: Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/ReasonFlags;->access$000(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 107
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 108
    return-void
.end method
