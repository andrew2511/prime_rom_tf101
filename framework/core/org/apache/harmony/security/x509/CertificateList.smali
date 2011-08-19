.class public Lorg/apache/harmony/security/x509/CertificateList;
.super Ljava/lang/Object;
.source "CertificateList.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 137
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateList$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .registers 7
    .parameter "tbsCertList"
    .parameter "signatureAlgorithm"
    .parameter "signatureValue"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    .line 69
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 70
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .registers 5
    .parameter "tbsCertList"
    .parameter "signatureAlgorithm"
    .parameter "signatureValue"
    .parameter "encoding"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 86
    iput-object p4, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/CertificateList$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/TBSCertList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/CertificateList;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    if-nez v0, :cond_c

    .line 129
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    .line 131
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 111
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    iget-object v2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-object v0
.end method

.method public getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v0, res:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/TBSCertList;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 118
    const-string v1, "\nSignature Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
