.class public Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/google/common/async/AbstractRequest;

# interfaces
.implements Lcom/google/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AsyncHttpRequestImpl"
.end annotation


# instance fields
.field private addContentLength:Z

.field private connection:Lcom/google/common/io/GoogleHttpConnection;

.field private factory:Lcom/google/common/async/AsyncHttpRequestFactory;

.field private flags:I

.field private httpHeaders:Ljava/util/Vector;

.field private lastProgressTimestamp:J

.field private method:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadInputStream:Ljava/io/InputStream;

.field private payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    iput p3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    return-void
.end method

.method private addHttpHeader(Lcom/google/common/io/GoogleHttpConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v2, v0, v4

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {p1, v2, v0}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static debugResponseHeaders(Lcom/google/common/io/GoogleHttpConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private getPayloadLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPayload()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePayload(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/google/common/async/AbstractRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastProgressTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseLength()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseStream()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWatchdogDelay()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyProgress()V
    .locals 2

    iget v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    invoke-super {p0}, Lcom/google/common/async/AbstractRequest;->notifyProgress()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x1

    sget-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttRequest.run(): this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v0}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$000(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/task/TaskRunner;

    move-result-object v0

    new-instance v1, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v1, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/google/common/task/TaskRunner;)V

    invoke-virtual {v1, p0}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    iget-object v4, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$100(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    iget v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    :cond_0
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-direct {p0, v2}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addHttpHeader(Lcom/google/common/io/GoogleHttpConnection;)V

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending payload [bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    const-string v2, "Content-Length"

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    iget-object v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->writePayload(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_3
    invoke-interface {v2}, Lcom/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v2}, Lcom/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    invoke-interface {v2}, Lcom/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    sget-object v7, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response [http="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/google/common/io/GoogleHttpConnection;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v2}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/google/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_1
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v10, :cond_4

    iput v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v5, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v1}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    :goto_2
    return-void

    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    const-string v4, "application/binary"

    invoke-interface {v2, v3, v4}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    :try_start_8
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v2}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v10, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    const-string v3, "AsyncHttpRequestImpl.run(): exception thrown "

    invoke-virtual {v2, v3, v0}, Lcom/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-virtual {v1}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    throw v0

    :cond_8
    :try_start_b
    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v2}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWatchdogDelay(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/google/common/task/AbstractTask;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/google/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v0, p0}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$300(Lcom/google/common/async/AsyncHttpRequestFactory;Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/debug/DebugUtil;->getLogSource(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized watchdogFired()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/google/common/io/GoogleHttpConnection;->notifyTimeout()V

    :cond_0
    new-instance v0, Lcom/google/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/google/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
