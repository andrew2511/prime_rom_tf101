.class public Lorg/apache/harmony/security/x509/AlternativeName;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "AlternativeName.java"


# static fields
.field public static final ISSUER:Z = false

.field public static final SUBJECT:Z = true


# instance fields
.field private alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

.field private which:Z


# direct methods
.method public constructor <init>(ZLorg/apache/harmony/security/x509/GeneralNames;)V
    .registers 3
    .parameter "which"
    .parameter "alternativeNames"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    .line 49
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 50
    return-void
.end method

.method public constructor <init>(Z[B)V
    .registers 4
    .parameter "which"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 59
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    .line 60
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 62
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    if-eqz v1, :cond_35

    const-string v1, "Subject"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Alternative Names [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    return-void

    .line 89
    :cond_35
    const-string v1, "Issuer"

    goto :goto_a
.end method

.method public getAlternativeNames()Ljava/util/List;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    if-nez v0, :cond_e

    .line 79
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    .line 81
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    return-object v0
.end method
