.class public abstract Ljavax/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# static fields
.field private static defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private static defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 34
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 103
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 104
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    return-void
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 46
    if-nez p0, :cond_a

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HostnameVerifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_a
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 50
    return-void
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .parameter "sf"

    .prologue
    .line 70
    if-nez p0, :cond_a

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSLSocketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_a
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    return-void
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 168
    .local v0, certs:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_10

    array-length v1, v0

    if-eqz v1, :cond_10

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_12

    .line 169
    :cond_10
    const/4 v1, 0x0

    .line 171
    .end local p0
    :goto_11
    return-object v1

    .restart local p0
    :cond_12
    aget-object p0, v0, v2

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_11
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 152
    .local v0, certs:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_10

    array-length v1, v0

    if-eqz v1, :cond_10

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_18

    .line 153
    :cond_10
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "No server\'s end-entity certificate"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_18
    aget-object p0, v0, v2

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public abstract getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 183
    if-nez p1, :cond_a

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HostnameVerifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_a
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 187
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4
    .parameter "sf"

    .prologue
    .line 207
    if-nez p1, :cond_a

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSLSocketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_a
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 211
    return-void
.end method
