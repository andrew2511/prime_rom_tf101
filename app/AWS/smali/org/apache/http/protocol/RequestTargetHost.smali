.class public Lorg/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
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
    if-nez p1, :cond_0

    .line 65
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP request may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HTTP context may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v6

    .line 72
    .local v6, ver:Lorg/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, method:Ljava/lang/String;
    const-string v7, "CONNECT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    const-string v7, "Host"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 78
    const-string v7, "http.target_host"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpHost;

    .line 80
    .local v5, targethost:Lorg/apache/http/HttpHost;
    if-nez v5, :cond_5

    .line 81
    const-string v7, "http.connection"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpConnection;

    .line 83
    .local v2, conn:Lorg/apache/http/HttpConnection;
    instance-of v7, v2, Lorg/apache/http/HttpInetConnection;

    if-eqz v7, :cond_4

    .line 86
    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpInetConnection;

    move-object v7, v0

    invoke-interface {v7}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 87
    .local v1, address:Ljava/net/InetAddress;
    check-cast v2, Lorg/apache/http/HttpInetConnection;

    .end local v2           #conn:Lorg/apache/http/HttpConnection;
    invoke-interface {v2}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v4

    .line 88
    .local v4, port:I
    if-eqz v1, :cond_4

    .line 89
    new-instance v5, Lorg/apache/http/HttpHost;

    .end local v5           #targethost:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 92
    .end local v1           #address:Ljava/net/InetAddress;
    .end local v4           #port:I
    .restart local v5       #targethost:Lorg/apache/http/HttpHost;
    :cond_4
    if-nez v5, :cond_5

    .line 93
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 96
    new-instance v7, Lorg/apache/http/ProtocolException;

    const-string v8, "Target host missing"

    invoke-direct {v7, v8}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_5
    const-string v7, "Host"

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
