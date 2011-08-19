.class public Lorg/apache/harmony/security/x509/InvalidityDate;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InvalidityDate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 51
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    .line 52
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Invalidity Date: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    if-nez v0, :cond_e

    .line 67
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    .line 69
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    return-object v0
.end method
