.class final Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpsEngine"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;I)V
    .registers 4
    .parameter
    .parameter "url"
    .parameter "port"

    .prologue
    .line 388
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    .line 389
    invoke-direct {p0, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 390
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 5
    .parameter
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 392
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    .line 393
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 394
    return-void
.end method

.method private makeSslConnection(Z)Z
    .registers 7
    .parameter "tlsTolerant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 447
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->makeConnection()V

    .line 450
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->cacheResponse:Ljava/net/CacheResponse;

    if-eqz v1, :cond_b

    move v1, v4

    .line 480
    :goto_a
    return v1

    .line 458
    :cond_b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    #setter for: Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 461
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    if-eqz v1, :cond_20

    move v1, v4

    .line 462
    goto :goto_a

    .line 466
    :cond_20
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->requiresTunnel()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 467
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 468
    .local v0, originalMethod:Ljava/lang/String;
    const-string v1, "CONNECT"

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 469
    iput-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->intermediateResponse:Z

    .line 471
    :try_start_2e
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->retrieveResponse()V

    .line 472
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->discardIntermediateResponse()V
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_45

    .line 474
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 475
    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->intermediateResponse:Z

    .line 479
    .end local v0           #originalMethod:Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    move v1, v3

    .line 480
    goto :goto_a

    .line 474
    .restart local v0       #originalMethod:Ljava/lang/String;
    :catchall_45
    move-exception v1

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    .line 475
    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->intermediateResponse:Z

    throw v1
.end method


# virtual methods
.method protected acceptCacheResponse(Ljava/net/CacheResponse;)Z
    .registers 3
    .parameter "cacheResponse"

    .prologue
    .line 503
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method public getCacheResponse()Ljava/net/SecureCacheResponse;
    .registers 1

    .prologue
    .line 484
    iget-object p0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->cacheResponse:Ljava/net/CacheResponse;

    .end local p0
    check-cast p0, Ljava/net/SecureCacheResponse;

    return-object p0
.end method

.method protected getConnectionForCaching()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    return-object v0
.end method

.method public makeConnection()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 397
    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connected:Z

    .line 399
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    .line 435
    :cond_c
    :goto_c
    return-void

    .line 409
    :cond_d
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    const-string v3, "CONNECT"

    if-eq v2, v3, :cond_c

    .line 419
    const/4 v2, 0x1

    :try_start_14
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_31

    move-result v0

    .line 431
    .local v0, connectionReused:Z
    :goto_18
    if-nez v0, :cond_2b

    .line 432
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    #setter for: Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 434
    :cond_2b
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    goto :goto_c

    .line 420
    .end local v0           #connectionReused:Z
    :catch_31
    move-exception v1

    .line 423
    .local v1, e:Ljava/io/IOException;
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_3f

    .line 425
    throw v1

    .line 427
    :cond_3f
    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->releaseSocket(Z)V

    .line 428
    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z

    move-result v0

    .restart local v0       #connectionReused:Z
    goto :goto_18
.end method

.method protected requestString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->usingProxy()Z

    move-result v1

    if-nez v1, :cond_b

    .line 508
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestString()Ljava/lang/String;

    move-result-object v1

    .line 520
    :goto_a
    return-object v1

    .line 510
    :cond_b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->method:Ljava/lang/String;

    const-string v2, "CONNECT"

    if-ne v1, v2, :cond_35

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getEffectivePort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 516
    :cond_35
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    .line 518
    :cond_43
    const-string v0, "/"

    :cond_45
    move-object v1, v0

    .line 520
    goto :goto_a
.end method

.method protected requiresTunnel()Z
    .registers 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->requiresTunnel()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnectionImpl;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_f

    .line 492
    :goto_e
    return-void

    .line 491
    :cond_f
    invoke-super {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    goto :goto_e
.end method
