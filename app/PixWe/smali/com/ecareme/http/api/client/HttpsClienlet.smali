.class public Lcom/ecareme/http/api/client/HttpsClienlet;
.super Ljava/lang/Object;
.source "HttpsClienlet.java"


# static fields
.field private static final log:Lorg/apache/log4j/Logger;


# instance fields
.field private connTimeout:I

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private reqProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/ecareme/http/api/client/HttpsClienlet;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/ecareme/http/api/client/HttpsClienlet;->log:Lorg/apache/log4j/Logger;

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ecareme/http/api/client/HttpsClienlet;-><init>(Ljava/lang/String;Ljava/net/Proxy;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "proxyhost"
    .parameter "proxyport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {p0, p1, v0}, Lcom/ecareme/http/api/client/HttpsClienlet;-><init>(Ljava/lang/String;Ljava/net/Proxy;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 3
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->reqProps:Ljava/util/Map;

    .line 67
    if-eqz p1, :cond_1

    .line 69
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->proxy:Ljava/net/Proxy;

    .line 80
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incorrect url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->reqProps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 176
    if-ne p0, p1, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 187
    :goto_0
    return v2

    .line 180
    :cond_0
    instance-of v2, p1, Lcom/ecareme/http/api/client/HttpsClienlet;

    if-eqz v2, :cond_2

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/ecareme/http/api/client/HttpsClienlet;

    move-object v1, v0

    .line 183
    .local v1, other:Lcom/ecareme/http/api/client/HttpsClienlet;
    iget-object v2, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    iget-object v3, v1, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .end local v1           #other:Lcom/ecareme/http/api/client/HttpsClienlet;
    :cond_2
    move v2, v3

    .line 187
    goto :goto_0
.end method

.method public getConnTimeout()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->connTimeout:I

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->readTimeout:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public process(Lcom/ecareme/http/api/client/HttpClienletRequest;Lcom/ecareme/http/api/client/HttpClienletResponse;)V
    .locals 9
    .parameter "req"
    .parameter "rsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 89
    const-string v5, "SSL"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 90
    .local v4, sc:Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    invoke-static {}, Lcom/ecareme/utils/HttpsUtil;->getTrustAllCertsTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 91
    iget-object v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->proxy:Ljava/net/Proxy;

    if-nez v5, :cond_1

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v5

    .line 92
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 93
    invoke-static {}, Lcom/ecareme/utils/HttpsUtil;->getverifyAlHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 94
    iget v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->connTimeout:I

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 95
    iget v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->readTimeout:I

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 96
    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 97
    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 99
    iget-object v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->reqProps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->reqProps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 107
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 108
    .local v3, out:Ljava/io/OutputStream;
    invoke-virtual {p0, p1, v3}, Lcom/ecareme/http/api/client/HttpsClienlet;->sendRequest(Lcom/ecareme/http/api/client/HttpClienletRequest;Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 111
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 112
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {p0, p2, v1}, Lcom/ecareme/http/api/client/HttpsClienlet;->recvResponse(Lcom/ecareme/http/api/client/HttpClienletResponse;Ljava/io/InputStream;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 114
    return-void

    .line 91
    .end local v0           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_1
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->proxy:Ljava/net/Proxy;

    invoke-virtual {v5, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v5

    goto :goto_0

    .line 101
    .restart local v0       #conn:Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->reqProps:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected recvResponse(Lcom/ecareme/http/api/client/HttpClienletResponse;Ljava/io/InputStream;)V
    .locals 6
    .parameter "rsp"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienlet;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p2, v0}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 133
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rx xml:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 134
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .end local p2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    :cond_0
    invoke-interface {p1, p2}, Lcom/ecareme/http/api/client/HttpClienletResponse;->readFromInputStream(Ljava/io/InputStream;)V

    .line 137
    return-void
.end method

.method protected sendRequest(Lcom/ecareme/http/api/client/HttpClienletRequest;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienlet;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lcom/ecareme/http/api/client/HttpClienletRequest;->sendToOutputStream(Ljava/io/OutputStream;)V

    .line 122
    sget-object v1, Lcom/ecareme/http/api/client/HttpsClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tx xml:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 124
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-interface {p1, p2}, Lcom/ecareme/http/api/client/HttpClienletRequest;->sendToOutputStream(Ljava/io/OutputStream;)V

    .line 125
    return-void
.end method

.method public setConnTimeout(I)V
    .locals 0
    .parameter "connTimeout"

    .prologue
    .line 161
    iput p1, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->connTimeout:I

    .line 162
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 171
    iput p1, p0, Lcom/ecareme/http/api/client/HttpsClienlet;->readTimeout:I

    .line 172
    return-void
.end method
