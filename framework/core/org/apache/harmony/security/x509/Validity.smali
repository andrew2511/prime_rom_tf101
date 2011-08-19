.class public Lorg/apache/harmony/security/x509/Validity;
.super Ljava/lang/Object;
.source "Validity.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final notAfter:Ljava/util/Date;

.field private final notBefore:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Lorg/apache/harmony/security/x509/Validity$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Validity$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3
    .parameter "notBefore"
    .parameter "notAfter"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    .line 60
    iput-object p2, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    if-nez v0, :cond_c

    .line 85
    sget-object v0, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    .line 87
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    return-object v0
.end method
