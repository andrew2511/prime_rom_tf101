.class public Lorg/apache/harmony/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

.field private final accessMethod:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 100
    new-instance v0, Lorg/apache/harmony/security/x509/AccessDescription$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AccessDescription$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;)V
    .registers 3
    .parameter "accessMethod"
    .parameter "accessLocation"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V
    .registers 4
    .parameter "accessMethod"
    .parameter "accessLocation"
    .parameter "encoding"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    .line 58
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method


# virtual methods
.method public getAccessLocation()Lorg/apache/harmony/security/x509/GeneralName;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    if-nez v0, :cond_c

    .line 67
    sget-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    .line 69
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "\n-- AccessDescription:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "\naccessMethod:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "\naccessLocation:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "\n-- AccessDescription END\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
