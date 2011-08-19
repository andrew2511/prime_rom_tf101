.class public Lorg/apache/harmony/security/x509/InhibitAnyPolicy;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InhibitAnyPolicy.java"


# instance fields
.field private skipCerts:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "skipCerts"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 53
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    .line 55
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Inhibit Any-Policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    return-void
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    if-nez v0, :cond_14

    .line 70
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    .line 73
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->encoding:[B

    return-object v0
.end method

.method public getSkipCerts()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;->skipCerts:I

    return v0
.end method
