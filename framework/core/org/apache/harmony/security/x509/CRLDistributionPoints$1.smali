.class final Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "CRLDistributionPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CRLDistributionPoints;
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
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"

    .prologue
    .line 123
    new-instance v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;-><init>(Ljava/util/List;[B)V

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .parameter "object"

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    move-object v1, v0

    .line 129
    .local v1, dps:Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    #getter for: Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->access$000(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
