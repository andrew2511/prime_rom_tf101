.class final Lorg/apache/harmony/security/x509/CertificateList$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificateList;
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
    .line 140
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"

    .prologue
    .line 143
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 144
    .local v7, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/x509/CertificateList;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/harmony/security/x509/TBSCertList;

    const/4 v3, 0x1

    aget-object v3, v7, v3

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v4, 0x2

    aget-object p0, v7, v4

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/CertificateList$1;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 154
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/CertificateList;

    move-object v1, v0

    .line 156
    .local v1, certlist:Lorg/apache/harmony/security/x509/CertificateList;
    #getter for: Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/CertificateList;->access$100(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v2

    aput-object v2, p2, v5

    .line 157
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/CertificateList;->access$200(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 158
    const/4 v2, 0x2

    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B
    invoke-static {v1}, Lorg/apache/harmony/security/x509/CertificateList;->access$300(Lorg/apache/harmony/security/x509/CertificateList;)[B

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    aput-object v3, p2, v2

    .line 159
    return-void
.end method
