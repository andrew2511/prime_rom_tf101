.class final Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
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
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;->setOptional(I)V

    .line 182
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"

    .prologue
    .line 185
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 187
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v4, p0}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v2, 0x1

    aget-object p0, v1, v2

    check-cast p0, Ljava/util/Date;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/Extensions;

    invoke-direct {v3, v4, p0, v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;-><init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 195
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    move-object v1, v0

    .line 197
    .local v1, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$000(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 198
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$100(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 199
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->access$200(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v3

    aput-object v3, p2, v2

    .line 200
    return-void
.end method
