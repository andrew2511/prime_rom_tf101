.class final Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "InfoAccessSyntax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/InfoAccessSyntax;
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
    .line 119
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax$1;)V

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .parameter "object"

    .prologue
    .line 126
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-object v1, v0

    .line 127
    .local v1, aias:Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    #getter for: Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->access$100(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
