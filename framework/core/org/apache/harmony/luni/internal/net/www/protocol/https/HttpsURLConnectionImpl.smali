.class public Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;
    }
.end annotation


# instance fields
.field private final httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 4
    .parameter "url"
    .parameter "port"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 63
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 5
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 68
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;)Ljavax/net/ssl/SSLSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method private checkConnected()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->connected:Z

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connect()V

    .line 178
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->disconnect()V

    .line 132
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 80
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 81
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_c
    return-object v1

    .line 83
    :cond_d
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->checkConnected()V

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "posn"

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    .line 89
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 90
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1e

    .line 91
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    move-object v2, p0

    .line 95
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1b
    return-object v2

    .line 92
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local p0
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 94
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1e
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->checkConnected()V

    .line 95
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_1b
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 121
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 122
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 123
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 126
    :goto_c
    return-object v1

    .line 125
    :cond_d
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->checkConnected()V

    .line 126
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 112
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_d

    .line 113
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 116
    :goto_c
    return-object v1

    .line 115
    :cond_d
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->checkConnected()V

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_c
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 101
    .local v0, cacheResponse:Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1e

    .line 102
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    move-object v2, p0

    .line 106
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1b
    return-object v2

    .line 103
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local p0
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 105
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1e
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->checkConnected()V

    .line 106
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_1b
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setAllowUserInteraction(Z)V

    .line 319
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3
    .parameter "chunkLength"

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setChunkedStreamingMode(I)V

    .line 384
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setConnectTimeout(I)V

    .line 354
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDefaultUseCaches(Z)V

    .line 324
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDoInput(Z)V

    .line 329
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setDoOutput(Z)V

    .line 334
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3
    .parameter "contentLength"

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setFixedLengthStreamingMode(I)V

    .line 379
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setIfModifiedSince(J)V

    .line 339
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3
    .parameter "followRedirects"

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setInstanceFollowRedirects(Z)V

    .line 172
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setReadTimeout(I)V

    .line 364
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setUseCaches(Z)V

    .line 349
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->usingProxy()Z

    move-result v0

    return v0
.end method
