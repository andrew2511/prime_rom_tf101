.class Lcom/google/android/apps/analytics/PipelinedRequester;
.super Ljava/lang/Object;
.source "PipelinedRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;
    }
.end annotation


# instance fields
.field callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

.field canPipeline:Z

.field connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

.field host:Lorg/apache/http/HttpHost;

.field lastStatusCode:I

.field socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 38
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/PipelinedRequester;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 1
    .parameter "host"
    .parameter "socketFactory"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 44
    return-void
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private maybeOpenConnection()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 130
    .local v6, httpParams:Lorg/apache/http/params/BasicHttpParams;
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 131
    .local v1, socket:Ljava/net/Socket;
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v2, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 140
    .end local v1           #socket:Ljava/net/Socket;
    .end local v6           #httpParams:Lorg/apache/http/params/BasicHttpParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addRequest(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->maybeOpenConnection()V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 61
    return-void
.end method

.method public finishedCurrentRequests()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    .line 121
    return-void
.end method

.method public installCallbacks(Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    .line 48
    return-void
.end method

.method public sendRequests()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 71
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->flush()V

    .line 74
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v5

    .line 75
    .local v5, metrics:Lorg/apache/http/HttpConnectionMetrics;
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/HttpConnectionMetrics;->getResponseCount()J

    move-result-wide v7

    invoke-interface {v5}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 76
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 78
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v7, v8}, Lorg/apache/http/ProtocolVersion;->greaterEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 79
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v7, v11}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    .line 80
    iput-boolean v11, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    .line 82
    :cond_1
    const-string v7, "Connection"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 83
    .local v1, connectionHeaders:[Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 84
    move-object v0, v1

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 85
    .local v2, header:Lorg/apache/http/Header;
    const-string v7, "close"

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 86
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v7, v11}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    .line 87
    iput-boolean v11, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    .line 84
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    iput v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    .line 93
    iget v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5

    .line 94
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    iget v8, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    invoke-interface {v7, v8}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->serverError(I)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    .line 113
    .end local v1           #connectionHeaders:[Lorg/apache/http/Header;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_1
    return-void

    .line 99
    .restart local v1       #connectionHeaders:[Lorg/apache/http/Header;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_5
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 100
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 101
    iget-object v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v7}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->requestSent()V

    .line 108
    iget-boolean v7, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    if-nez v7, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    goto :goto_1
.end method
