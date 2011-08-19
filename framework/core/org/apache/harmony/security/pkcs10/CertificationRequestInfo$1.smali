.class final Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 11
    .parameter "in"

    .prologue
    .line 145
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 146
    .local v8, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/harmony/security/x501/Name;

    const/4 v4, 0x2

    aget-object v4, v8, v4

    check-cast v4, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/4 v5, 0x3

    aget-object v5, v8, v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 155
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    move-object v1, v0

    .line 157
    .local v1, certReqInfo:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$100(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 158
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$200(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v3

    aput-object v3, p2, v2

    .line 159
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$300(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v3

    aput-object v3, p2, v2

    .line 160
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->access$400(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 161
    return-void
.end method
