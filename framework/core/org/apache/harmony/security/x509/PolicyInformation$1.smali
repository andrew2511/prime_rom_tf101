.class final Lorg/apache/harmony/security/x509/PolicyInformation$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyInformation$1;->setOptional(I)V

    .line 102
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"

    .prologue
    .line 105
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 106
    .local v1, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/PolicyInformation;

    const/4 v3, 0x0

    aget-object p0, v1, v3

    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x509/PolicyInformation;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 112
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyInformation;

    move-object v1, v0

    .line 114
    .local v1, pi:Lorg/apache/harmony/security/x509/PolicyInformation;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/PolicyInformation;->access$000(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 115
    return-void
.end method
