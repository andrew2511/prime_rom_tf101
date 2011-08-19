.class public Lorg/apache/harmony/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private policyIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 98
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyInformation$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyInformation$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "policyIdentifier"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "buffer"

    .prologue
    .line 91
    const-string v0, "Policy Identifier ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    if-nez v0, :cond_c

    .line 81
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    .line 83
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    return-object v0
.end method

.method public getPolicyIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method
