.class final Lorg/apache/harmony/security/x501/Name$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/Name;
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
    .line 251
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"

    .prologue
    .line 254
    new-instance v0, Lorg/apache/harmony/security/x501/Name;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name$1;)V

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter "object"

    .prologue
    .line 258
    check-cast p1, Lorg/apache/harmony/security/x501/Name;

    .end local p1
    #getter for: Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;
    invoke-static {p1}, Lorg/apache/harmony/security/x501/Name;->access$100(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
