.class public Lorg/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 11
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_a

    .line 65
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP request may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_a
    if-nez p2, :cond_14

    .line 68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "HTTP context may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    :cond_14
    const-string v6, "Host"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 71
    const-string v6, "http.target_host"

    invoke-interface {p2, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    .line 73
    .local v4, targethost:Lorg/apache/http/HttpHost;
    if-nez v4, :cond_66

    .line 74
    const-string v6, "http.connection"

    invoke-interface {p2, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpConnection;

    .line 76
    .local v2, conn:Lorg/apache/http/HttpConnection;
    instance-of v6, v2, Lorg/apache/http/HttpInetConnection;

    if-eqz v6, :cond_4b

    .line 79
    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpInetConnection;

    move-object v6, v0

    invoke-interface {v6}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 80
    .local v1, address:Ljava/net/InetAddress;
    check-cast v2, Lorg/apache/http/HttpInetConnection;

    .end local v2           #conn:Lorg/apache/http/HttpConnection;
    invoke-interface {v2}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v3

    .line 81
    .local v3, port:I
    if-eqz v1, :cond_4b

    .line 82
    new-instance v4, Lorg/apache/http/HttpHost;

    .end local v4           #targethost:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 85
    .end local v1           #address:Ljava/net/InetAddress;
    .end local v3           #port:I
    .restart local v4       #targethost:Lorg/apache/http/HttpHost;
    :cond_4b
    if-nez v4, :cond_66

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    .line 87
    .local v5, ver:Lorg/apache/http/ProtocolVersion;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v5, v6}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 96
    .end local v4           #targethost:Lorg/apache/http/HttpHost;
    .end local v5           #ver:Lorg/apache/http/ProtocolVersion;
    :cond_5d
    :goto_5d
    return-void

    .line 90
    .restart local v4       #targethost:Lorg/apache/http/HttpHost;
    .restart local v5       #ver:Lorg/apache/http/ProtocolVersion;
    :cond_5e
    new-instance v6, Lorg/apache/http/ProtocolException;

    const-string v7, "Target host missing"

    invoke-direct {v6, v7}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    .end local v5           #ver:Lorg/apache/http/ProtocolVersion;
    :cond_66
    const-string v6, "Host"

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method
