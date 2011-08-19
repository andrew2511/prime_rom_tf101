.class final Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
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
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;->setOptional(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"

    .prologue
    .line 82
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 83
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-direct {v3, p0, v2}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;Lorg/apache/harmony/security/pkcs7/ContentInfo;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;

    move-object v1, v0

    .line 91
    .local v1, resp:Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->access$000(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    move-result-object v3

    aput-object v3, p2, v2

    .line 92
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-result-object v3

    aput-object v3, p2, v2

    .line 93
    return-void
.end method
