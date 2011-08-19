.class public Lcom/ecareme/utils/HttpsUtil;
.super Ljava/lang/Object;
.source "HttpsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrustAllCertsTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/ecareme/utils/HttpsUtil$2;

    invoke-direct {v2}, Lcom/ecareme/utils/HttpsUtil$2;-><init>()V

    aput-object v2, v0, v1

    .line 41
    .local v0, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    return-object v0
.end method

.method public static getverifyAlHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/ecareme/utils/HttpsUtil$1;

    invoke-direct {v0}, Lcom/ecareme/utils/HttpsUtil$1;-><init>()V

    .line 21
    .local v0, hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    return-object v0
.end method

.method public static inittrustAllCertsSSLSocketFactory()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 49
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-static {}, Lcom/ecareme/utils/HttpsUtil;->getTrustAllCertsTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 50
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
