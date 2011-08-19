.class final Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 196
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 197
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 198
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 199
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 202
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 203
    .local v2, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    const/4 v3, 0x0

    aget-object p0, v2, v3

    check-cast p0, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    check-cast v3, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-direct {v1, p0, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V

    .line 207
    .local v1, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v3

    iput-object v3, v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 208
    aget-object v3, v2, v4

    if-eqz v3, :cond_30

    .line 209
    aget-object p0, v2, v4

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    .line 212
    :cond_30
    aget-object v3, v2, v5

    if-eqz v3, :cond_3f

    .line 213
    aget-object p0, v2, v5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    .line 216
    :cond_3f
    aget-object v3, v2, v6

    if-eqz v3, :cond_4e

    .line 217
    aget-object p0, v2, v6

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    .line 220
    :cond_4e
    aget-object v3, v2, v7

    if-eqz v3, :cond_5d

    .line 221
    aget-object p0, v2, v7

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    .line 224
    :cond_5d
    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 228
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    move-object v1, v0

    .line 229
    .local v1, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$000(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v2

    .line 230
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$100(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_15
    aput-object v3, p2, v2

    .line 231
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$200(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_42

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_20
    aput-object v3, p2, v2

    .line 232
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$300(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v2

    .line 233
    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$400(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_32
    aput-object v3, p2, v2

    .line 234
    const/4 v2, 0x5

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$500(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3d
    aput-object v3, p2, v2

    .line 235
    return-void

    :cond_40
    move-object v3, v4

    .line 230
    goto :goto_15

    :cond_42
    move-object v3, v4

    .line 231
    goto :goto_20

    :cond_44
    move-object v3, v4

    .line 233
    goto :goto_32

    :cond_46
    move-object v3, v4

    .line 234
    goto :goto_3d
.end method
