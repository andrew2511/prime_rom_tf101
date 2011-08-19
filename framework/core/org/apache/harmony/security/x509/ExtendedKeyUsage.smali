.class public Lorg/apache/harmony/security/x509/ExtendedKeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ExtendedKeyUsage.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private keys:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    new-instance v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;

    invoke-direct {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "keys"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "encoding"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 61
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Extended Key Usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v2, :cond_13

    .line 92
    :try_start_d
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_43

    .line 99
    :cond_13
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 101
    const-string v2, " \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 103
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 93
    .end local v1           #it:Ljava/util/Iterator;
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :goto_48
    return-void

    .line 106
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_49
    const-string v2, " ]\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_48
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    if-nez v0, :cond_e

    .line 79
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    .line 81
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v0, :cond_12

    .line 69
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    .line 71
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    return-object v0
.end method
