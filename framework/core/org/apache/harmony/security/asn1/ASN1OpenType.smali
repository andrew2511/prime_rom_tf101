.class public Lorg/apache/harmony/security/asn1/ASN1OpenType;
.super Lorg/apache/harmony/security/asn1/ASN1Any;
.source "ASN1OpenType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;
    }
.end annotation


# instance fields
.field private final key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

.field private final pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;Lorg/apache/harmony/security/asn1/InformationObjectSet;)V
    .registers 3
    .parameter "key"
    .parameter "pool"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Any;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

    .line 44
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;

    .line 45
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

    invoke-virtual {p1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 50
    .local v2, oid:[I
    if-nez v2, :cond_16

    .line 51
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_16
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->get([I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/AttributeType;

    .line 55
    .local v1, attr:Lorg/apache/harmony/security/x501/AttributeType;
    if-eqz v1, :cond_2a

    iget-object v3, v1, Lorg/apache/harmony/security/x501/AttributeType;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 56
    :cond_2a
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Any;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    iput-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 60
    :goto_34
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v3

    .line 58
    .restart local p0
    :cond_37
    iget-object v3, v1, Lorg/apache/harmony/security/x501/AttributeType;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    goto :goto_34
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
    .line 64
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v0
.end method
