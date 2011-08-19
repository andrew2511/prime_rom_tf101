.class public Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private final keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "keyIdentifier"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    .line 48
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;-><init>([B)V

    .line 57
    .local v0, res:Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    .line 58
    return-object v0
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

    const-string v1, "SubjectKeyIdentifier: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    if-nez v0, :cond_10

    .line 67
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    .line 69
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->encoding:[B

    return-object v0
.end method
