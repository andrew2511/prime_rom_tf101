.class public Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Lcom/amazon/foundation/internal/net/WebConnectorRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;,
        Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;,
        Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;,
        Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2800


# instance fields
.field private bytesRead:J

.field private connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

.field private dataObserver:Lcom/amazon/foundation/internal/IDataOutputStream;

.field private formData:Ljava/lang/String;

.field private hasError:Z

.field private headerFieldCallbacks:Ljava/util/Hashtable;

.field private headerFieldStrings:Ljava/util/Hashtable;

.field private httpConnection:Lcom/amazon/system/net/HttpConnection;

.field private httpStatusCallback:Lcom/amazon/foundation/IIntCallback;

.field private inputStream:Ljava/io/InputStream;

.field private invokeUtilities:Lcom/amazon/system/util/Utilities;

.field private isStopped:Z

.field private killEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private maxRetry:I

.field private requestCallback:Lcom/amazon/foundation/ICallback;

.field private requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

.field private running:Z

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

.field private synchNotifyEndOfFile:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;

.field private synchNotifyInitialization:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;

.field private synchNotifyNewData:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;

.field private timeout:J

.field private totalBytes:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Lcom/amazon/system/net/HttpConnectionFactory;)V
    .locals 9
    .parameter "invokeUtilities"
    .parameter "url"
    .parameter "observer"
    .parameter "statusTracker"
    .parameter "requestManager"
    .parameter "connectionFactory"

    .prologue
    .line 229
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Ljava/util/Hashtable;Lcom/amazon/system/net/HttpConnectionFactory;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Ljava/util/Hashtable;Lcom/amazon/system/net/HttpConnectionFactory;I)V
    .locals 5
    .parameter "invokeUtilities"
    .parameter "url"
    .parameter "observer"
    .parameter "statusTracker"
    .parameter "requestManager"
    .parameter "headerFieldStrings"
    .parameter "connectionFactory"
    .parameter "maxRetry"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->bytesRead:J

    .line 51
    iput-wide v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->totalBytes:J

    .line 53
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;

    invoke-direct {v0, p0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyNewData:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;

    .line 54
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;

    invoke-direct {v0, p0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyEndOfFile:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;

    .line 55
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;

    invoke-direct {v0, p0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyInitialization:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;

    .line 56
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    invoke-direct {v0, p0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    .line 59
    iput-boolean v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 67
    iput-boolean v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    .line 75
    iput-boolean v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    .line 250
    if-gez p8, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of retries cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    .line 256
    iput-object p3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->dataObserver:Lcom/amazon/foundation/internal/IDataOutputStream;

    .line 257
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->killEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 258
    iput-object p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;

    .line 260
    iput-object p6, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    .line 261
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldCallbacks:Ljava/util/Hashtable;

    .line 262
    iput-object p5, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    .line 263
    iput-object p7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    .line 264
    iput p8, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->maxRetry:I

    .line 265
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnectionFactory;->getHttpConnection()Lcom/amazon/system/net/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    .line 267
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestCallback:Lcom/amazon/foundation/ICallback;

    .line 274
    iput-object p4, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 275
    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->stopReadingFromMainThread()V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/ICallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestCallback:Lcom/amazon/foundation/ICallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/QueueableRequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->killEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    return v0
.end method

.method static synthetic access$500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/IDataOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->dataObserver:Lcom/amazon/foundation/internal/IDataOutputStream;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->tryToIncrementProgress(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->bytesRead:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/IStatusTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    return-object v0
.end method

.method private closeConnection()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 387
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    .line 388
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    if-eqz v0, :cond_1

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 408
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectionRequest"

    const-string v2, "ConnectionCloseError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t close the httpConnection for the URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t close the input stream from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    if-eqz v0, :cond_1

    .line 404
    :try_start_3
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 406
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 408
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectionRequest"

    const-string v2, "ConnectionCloseError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t close the httpConnection for the URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    move-object v6, v0

    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    if-eqz v0, :cond_2

    .line 404
    :try_start_4
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 410
    :cond_2
    :goto_1
    throw v6

    .line 406
    :catch_3
    move-exception v0

    move-object v5, v0

    .line 408
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectionRequest"

    const-string v2, "ConnectionCloseError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t close the httpConnection for the URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private openConnection()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    .line 528
    const/4 v0, 0x0

    move v1, v5

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->maxRetry:I

    if-gt v0, v2, :cond_0

    .line 530
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    iget-wide v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->timeout:J

    invoke-interface {v1, v2, v3}, Lcom/amazon/system/net/HttpConnection;->setTimeout(J)V

    .line 531
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v1

    .line 533
    if-ne v1, v5, :cond_0

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an error opening the connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 537
    :try_start_1
    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v2}, Lcom/amazon/system/net/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 546
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->connectionFactory:Lcom/amazon/system/net/HttpConnectionFactory;

    invoke-interface {v2}, Lcom/amazon/system/net/HttpConnectionFactory;->getHttpConnection()Lcom/amazon/system/net/HttpConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 558
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpStatusCallback:Lcom/amazon/foundation/IIntCallback;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpStatusCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/IIntCallback;->execute(I)V

    .line 564
    :cond_1
    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    if-eq v0, v1, :cond_2

    .line 567
    const/16 v1, 0x190

    if-lt v0, v1, :cond_6

    const-string v1, "Server Error"

    .line 568
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t open HTTPConnection on the url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (server returned status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_STATUS_FORBIDDEN:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_PARTIAL_CONTENT:I

    if-ne v0, v1, :cond_7

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    if-eqz v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 584
    :try_start_3
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Lcom/amazon/system/net/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->totalBytes:J

    .line 588
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    new-instance v1, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;

    invoke-direct {v1, p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 636
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    if-nez v0, :cond_5

    .line 638
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->retrieveHeaderFields()V

    .line 640
    :cond_5
    return-void

    .line 567
    :cond_6
    :try_start_4
    const-string v1, "ConnectionError"

    goto :goto_2

    .line 602
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not report status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectorRequest"

    const-string v2, "StatusTrackerError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 614
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 616
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 617
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectorRequest"

    const-string v2, "HttpConnectionOpenEncodingError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 619
    const-string v0, "ConnectionError"

    invoke-direct {p0, v0, v6}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 611
    :cond_7
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 621
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 623
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 624
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectorRequest"

    const-string v2, "HttpConnectionOpenErrorIO"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 626
    const-string v0, "ConnectionError"

    invoke-direct {p0, v0, v6}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :catch_3
    move-exception v0

    move-object v4, v0

    .line 630
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 631
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectorRequest"

    const-string v2, "HttpConnectionOpenError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 633
    const-string v0, "ConnectionError"

    invoke-direct {p0, v0, v6}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    new-instance v1, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 746
    :cond_0
    return-void
.end method

.method private retrieveHeaderFields()V
    .locals 5

    .prologue
    .line 647
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 650
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v2, v0}, Lcom/amazon/system/net/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    if-eqz v2, :cond_0

    .line 659
    iget-object v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/IStringCallback;

    .line 660
    iget-object v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    new-instance v4, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$4;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/IStringCallback;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream is closed while header field was read from url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 675
    :cond_1
    return-void
.end method

.method private stopReading()V
    .locals 2

    .prologue
    .line 422
    iget-boolean v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    if-nez v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->closeConnection()V

    .line 427
    new-instance v0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    .line 437
    .local v0, killRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    invoke-interface {v1, v0}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->dataObserver:Lcom/amazon/foundation/internal/IDataOutputStream;

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    .line 442
    .end local v0           #killRunnable:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private stopReadingFromMainThread()V
    .locals 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    if-nez v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->closeConnection()V

    .line 455
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/QueueableRequestManager;->removeRequest(Lcom/amazon/foundation/ICallback;)V

    .line 457
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->killEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->dataObserver:Lcom/amazon/foundation/internal/IDataOutputStream;

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    .line 462
    :cond_0
    return-void
.end method

.method private tryToIncrementProgress(I)V
    .locals 4
    .parameter "delta"

    .prologue
    .line 711
    iget-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 713
    iget-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->bytesRead:J

    .line 714
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    new-instance v1, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$5;

    invoke-direct {v1, p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$5;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 727
    :cond_0
    return-void
.end method


# virtual methods
.method public addFormPairPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 681
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    goto :goto_0
.end method

.method public addHeaders(Ljava/util/Hashtable;)V
    .locals 4
    .parameter

    .prologue
    .line 500
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 501
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestManager:Lcom/amazon/foundation/internal/QueueableRequestManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->requestCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/QueueableRequestManager;->addRequestForExecution(Lcom/amazon/foundation/ICallback;)V

    .line 280
    return-void
.end method

.method public getKillEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->killEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    return v0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 490
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->isStopped:Z

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 494
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->stopReading()V

    .line 496
    :cond_0
    return-void
.end method

.method public launchRequest()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    .local v0, th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    return-void
.end method

.method public prime()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpConnection:Lcom/amazon/system/net/HttpConnection;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/system/net/HttpConnection;->prime(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->openConnection()V

    .line 298
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->kill()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const/16 v0, 0x2800

    new-array v0, v0, [B

    .line 305
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    .line 309
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyInitialization:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;

    invoke-interface {v1, v2}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 311
    :goto_1
    iget-boolean v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 317
    array-length v2, v0

    if-le v1, v2, :cond_2

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network stream says there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes available, increasing buffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-array v0, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :cond_2
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->inputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 351
    if-ltz v1, :cond_3

    .line 354
    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyNewData:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;

    invoke-virtual {v2, v0, v6, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->setData([BII)V

    .line 355
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyNewData:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;

    invoke-interface {v1, v2}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 335
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total bytes read before exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->bytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot read from network stream for URL:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 340
    iput-boolean v6, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    .line 341
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    invoke-interface {v0, v1}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 344
    const-string v0, "ConnectionError"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->stopReading()V

    .line 346
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "HttpWebConnectionRequest"

    const-string v2, "NetStreamReadError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reached EOF for connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyEndOfFile:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;

    invoke-interface {v1, v2}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 374
    :goto_3
    invoke-direct {p0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->stopReading()V

    .line 375
    iput-boolean v6, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->running:Z

    goto/16 :goto_1

    .line 368
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of bytes read ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iput-boolean v7, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->hasError:Z

    .line 370
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->invokeUtilities:Lcom/amazon/system/util/Utilities;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->synchNotifyAbort:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    invoke-interface {v1, v2}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 371
    const-string v1, "ConnectionError"

    invoke-direct {p0, v1, v4}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method public setHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-void
.end method

.method public setHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->httpStatusCallback:Lcom/amazon/foundation/IIntCallback;

    .line 516
    return-void
.end method

.method public setPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    const-string v1, "Content-Length"

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    iput-object p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->formData:Ljava/lang/String;

    .line 707
    return-void

    .line 703
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->headerFieldStrings:Ljava/util/Hashtable;

    const-string v1, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTimeout(J)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 750
    iput-wide p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->timeout:J

    .line 751
    return-void
.end method
