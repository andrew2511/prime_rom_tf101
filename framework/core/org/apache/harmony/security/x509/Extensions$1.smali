.class final Lorg/apache/harmony/security/x509/Extensions$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"

    .prologue
    .line 406
    new-instance v0, Lorg/apache/harmony/security/x509/Extensions;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/Extensions;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .parameter "object"

    .prologue
    .line 410
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    move-object v1, v0

    .line 411
    .local v1, exts:Lorg/apache/harmony/security/x509/Extensions;
    #getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Extensions;->access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v2

    :cond_10
    #getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Extensions;->access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v2

    goto :goto_f
.end method