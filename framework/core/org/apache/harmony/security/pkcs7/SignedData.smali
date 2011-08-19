.class public Lorg/apache/harmony/security/pkcs7/SignedData;
.super Ljava/lang/Object;
.source "SignedData.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private certificates:Ljava/util/List;

.field private contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

.field private crls:Ljava/util/List;

.field private digestAlgorithms:Ljava/util/List;

.field private signerInfos:Ljava/util/List;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignedData$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v4, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/SignedData$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter "version"
    .parameter "digestAlgorithms"
    .parameter "contentInfo"
    .parameter "certificates"
    .parameter "crls"
    .parameter "signerInfos"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 67
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    .line 68
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    .line 69
    iput-object p6, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/pkcs7/SignedData;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCRLs()Ljava/util/List;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    return-object v0
.end method

.method public getCertificates()Ljava/util/List;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public getContentInfo()Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Ljava/util/List;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getSignerInfos()Ljava/util/List;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "---- SignedData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\nversion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\ndigestAlgorithms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "\ncontentInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\ncertificates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    if-eqz v1, :cond_42

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_42
    const-string v1, "\ncrls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    if-eqz v1, :cond_54

    .line 120
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_54
    const-string v1, "\nsignerInfos:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\n---- SignedData End\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
