.class Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 5
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_e

    .line 184
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 185
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_b

    .line 186
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 189
    :cond_b
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 192
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_e
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p2, :cond_7

    move-object v0, p2

    :goto_3
    invoke-direct {p0, p1, v0}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 175
    return-void

    :cond_7
    move-object v0, p3

    .line 173
    goto :goto_3
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 7
    .parameter "certChain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_d

    .line 121
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad certificate chain"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_d
    array-length v2, p0

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 126
    .local v1, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 127
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 130
    :cond_20
    invoke-static {v1, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 7
    .parameter "chain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v2, 0x0

    aget-object v0, p0, v2

    .line 146
    .local v0, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_d

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "certificate for this site is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_d
    invoke-static {v0, p1}, Lcom/android/internal/net/DomainNameValidator;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 154
    new-instance v2, Landroid/net/http/SslError;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 165
    :goto_19
    return-object v2

    .line 158
    :cond_1a
    :try_start_1a
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/security/cert/CertificateException; {:try_start_1a .. :try_end_21} :catch_23

    .line 159
    const/4 v2, 0x0

    goto :goto_19

    .line 160
    :catch_23
    move-exception v2

    move-object v1, v2

    .line 165
    .local v1, e:Ljava/security/cert/CertificateException;
    new-instance v2, Landroid/net/http/SslError;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_19
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 8
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 84
    .local v1, sslSession:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_10

    .line 85
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 89
    :cond_10
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 92
    .local v0, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-nez v2, :cond_2d

    .line 93
    :cond_1d
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 105
    .end local p0
    :cond_22
    :goto_22
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0           #peerCertificates:[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 97
    .restart local v0       #peerCertificates:[Ljava/security/cert/Certificate;
    .restart local p0
    :cond_2d
    if-eqz p1, :cond_22

    .line 98
    aget-object v2, v0, v3

    if-eqz v2, :cond_22

    .line 99
    new-instance v2, Landroid/net/http/SslCertificate;

    aget-object p0, v0, v3

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-direct {v2, p0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v2}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_22
.end method
