.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# static fields
.field private static constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 53
    :try_start_0
    new-instance v2, Ljavax/security/cert/X509Certificate$1;

    invoke-direct {v2}, Ljavax/security/cert/X509Certificate$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, classname:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, cl:Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 65
    .end local v0           #cl:Ljava/lang/Class;
    .end local v1           #classname:Ljava/lang/String;
    :goto_1d
    return-void

    .line 63
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    .line 72
    return-void
.end method

.method public static final getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .registers 7
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p0, :cond_a

    .line 87
    new-instance v3, Ljavax/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_a
    sget-object v3, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_2a

    .line 91
    :try_start_e
    sget-object v3, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/security/cert/X509Certificate;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1e

    move-object v3, p0

    .line 107
    :goto_1d
    return-object v3

    .line 93
    :catch_1e
    move-exception v3

    move-object v2, v3

    .line 94
    .local v2, e:Ljava/lang/Throwable;
    new-instance v3, Ljavax/security/cert/CertificateException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v2           #e:Ljava/lang/Throwable;
    .restart local p0
    :cond_2a
    :try_start_2a
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 101
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_36
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_36} :catch_3c

    .line 107
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v3, Ljavax/security/cert/X509Certificate$2;

    invoke-direct {v3, v0}, Ljavax/security/cert/X509Certificate$2;-><init>(Ljava/security/cert/X509Certificate;)V

    goto :goto_1d

    .line 103
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 104
    .local v2, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljavax/security/cert/CertificateException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance([B)Ljavax/security/cert/X509Certificate;
    .registers 4
    .parameter "certData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p0, :cond_a

    .line 220
    new-instance v1, Ljavax/security/cert/CertificateException;

    const-string v2, "certData == null"

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getVersion()I
.end method
