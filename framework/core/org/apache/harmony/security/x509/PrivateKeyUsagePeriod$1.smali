.class final Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PrivateKeyUsagePeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
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
    .line 110
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;->setOptional(I)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;->setOptional(I)V

    .line 114
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"

    .prologue
    .line 117
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 118
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Ljava/util/Date;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[BLorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 125
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    move-object v1, v0

    .line 127
    .local v1, pkup:Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->access$100(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 128
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->access$200(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 129
    return-void
.end method
