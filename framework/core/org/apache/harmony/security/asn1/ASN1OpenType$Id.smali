.class public Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1OpenType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1OpenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Id"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, oid:Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 73
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :goto_d
    return-object v0

    .line 75
    :cond_e
    invoke-virtual {p1, p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
