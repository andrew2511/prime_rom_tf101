.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    .line 82
    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    .line 83
    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 6
    .parameter "context"
    .parameter "host"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 67
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 84
    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 107
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 109
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 112
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 113
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v0, 0x1

    .line 332
    .local v0, empty:Z
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v2

    .line 334
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 335
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/Request;

    .line 338
    .local v1, tReq:Landroid/net/http/Request;
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3, v1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 339
    const/4 v0, 0x0

    goto :goto_4

    .line 341
    .end local v1           #tReq:Landroid/net/http/Request;
    :cond_17
    if-eqz v0, :cond_25

    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v3, 0x1

    move v0, v3

    .line 342
    :cond_25
    :goto_25
    monitor-exit v2

    .line 343
    return v0

    .line 341
    :cond_27
    const/4 v3, 0x0

    move v0, v3

    goto :goto_25

    .line 342
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .registers 6
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    .line 127
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 132
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    goto :goto_11
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .registers 9
    .parameter "req"
    .parameter "errorId"
    .parameter "e"

    .prologue
    .line 429
    const/4 v2, 0x1

    .line 436
    .local v2, ret:Z
    iget v3, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1b

    .line 437
    const/4 v2, 0x0

    .line 439
    if-gez p2, :cond_26

    .line 440
    iget-object v3, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, error:Ljava/lang/String;
    :goto_13
    iget-object v3, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v3, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 449
    .end local v1           #error:Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 450
    iget-object v3, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.connection"

    invoke-interface {v3, v4}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    return v2

    .line 442
    :cond_26
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 443
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .restart local v1       #error:Ljava/lang/String;
    :goto_31
    goto :goto_13

    .end local v1           #error:Ljava/lang/String;
    :cond_32
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_31
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 12
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    const-string v1, "http.connection"

    invoke-interface {p4, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 468
    .local v0, conn:Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v5

    .line 488
    :goto_13
    return v1

    .line 472
    :cond_14
    if-eqz p1, :cond_30

    .line 473
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 474
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2e
    move v1, v5

    .line 477
    goto :goto_13

    .line 482
    :cond_30
    if-ne p3, v6, :cond_34

    move v1, v5

    .line 483
    goto :goto_13

    .line 484
    :cond_34
    const/4 v1, 0x2

    if-ne p3, v1, :cond_39

    move v1, v6

    .line 485
    goto :goto_13

    .line 488
    :cond_39
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_43

    move v1, v6

    goto :goto_13

    :cond_43
    move v1, v5

    goto :goto_13
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .registers 13
    .parameter "req"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 352
    .local v3, now:J
    const/4 v1, 0x0

    .line 353
    .local v1, error:I
    const/4 v2, 0x0

    .line 357
    .local v2, exception:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_a
    iput-object v5, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 358
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v5

    iput-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 359
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v5, :cond_2b

    .line 360
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const v6, 0xea60

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 361
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v6, "http.connection"

    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :goto_27
    if-nez v1, :cond_4f

    move v5, v10

    .line 414
    :goto_2a
    return v5

    .line 367
    :cond_2b
    const/4 v5, 0x2

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_2e
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_2e} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_2e} :catch_35
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_a .. :try_end_2e} :catch_3c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_2e} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2e} :catch_4a

    move v5, v9

    .line 368
    goto :goto_2a

    .line 370
    :catch_30
    move-exception v5

    move-object v0, v5

    .line 372
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x2

    .line 373
    move-object v2, v0

    .line 396
    goto :goto_27

    .line 374
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_35
    move-exception v5

    move-object v0, v5

    .line 376
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x6

    .line 377
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    .line 378
    move-object v2, v0

    .line 396
    goto :goto_27

    .line 379
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3c
    move-exception v5

    move-object v0, v5

    .line 382
    .local v0, e:Landroid/net/http/SSLConnectionClosedByUserException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    move v5, v9

    .line 384
    goto :goto_2a

    .line 385
    .end local v0           #e:Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_42
    move-exception v5

    move-object v0, v5

    .line 388
    .local v0, e:Ljavax/net/ssl/SSLHandshakeException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    .line 391
    const/16 v1, -0xb

    .line 392
    move-object v2, v0

    .line 396
    goto :goto_27

    .line 393
    .end local v0           #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 394
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x6

    .line 395
    move-object v2, v0

    goto :goto_27

    .line 407
    .end local v0           #e:Ljava/io/IOException;
    :cond_4f
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v5, v8, :cond_62

    .line 409
    iget-object v5, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v5, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 410
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I

    .line 414
    :goto_5e
    if-nez v1, :cond_66

    move v5, v10

    goto :goto_2a

    .line 412
    :cond_62
    invoke-direct {p0, p1, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    goto :goto_5e

    :cond_66
    move v5, v9

    .line 414
    goto :goto_2a
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 148
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 149
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 152
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_a

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 518
    :cond_a
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .registers 16
    .parameter "firstRequest"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 159
    const/4 v8, 0x0

    .line 161
    .local v8, req:Landroid/net/http/Request;
    const/4 v2, 0x0

    .line 162
    .local v2, error:I
    const/4 v3, 0x0

    .line 164
    .local v3, exception:Ljava/lang/Exception;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 166
    .local v6, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v5, 0x2

    .local v5, minPipe:I
    const/4 v4, 0x3

    .line 167
    .local v4, maxPipe:I
    const/4 v9, 0x0

    .line 169
    .local v9, state:I
    :cond_d
    :goto_d
    if-eq v9, v13, :cond_10c

    .line 176
    iget v10, p0, Landroid/net/http/Connection;->mActive:I

    sget v11, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    if-ne v10, v11, :cond_1e

    .line 178
    const-wide/16 v10, 0x64

    :try_start_17
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_109

    .line 180
    :goto_1a
    sget v10, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v10, p0, Landroid/net/http/Connection;->mActive:I

    .line 183
    :cond_1e
    packed-switch v9, :pswitch_data_10e

    goto :goto_d

    .line 185
    :pswitch_22
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ne v10, v4, :cond_2a

    .line 186
    const/4 v9, 0x1

    .line 187
    goto :goto_d

    .line 190
    :cond_2a
    if-nez p1, :cond_38

    .line 191
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v8

    .line 196
    :goto_34
    if-nez v8, :cond_3b

    .line 197
    const/4 v9, 0x2

    .line 198
    goto :goto_d

    .line 193
    :cond_38
    move-object v8, p1

    .line 194
    const/4 p1, 0x0

    goto :goto_34

    .line 200
    :cond_3b
    invoke-virtual {v8, p0}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 203
    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v10, :cond_46

    .line 207
    invoke-virtual {v8}, Landroid/net/http/Request;->complete()V

    goto :goto_d

    .line 211
    :cond_46
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v10, :cond_52

    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v10

    if-nez v10, :cond_5a

    .line 219
    :cond_52
    invoke-direct {p0, v8}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v10

    if-nez v10, :cond_5a

    .line 220
    const/4 v9, 0x3

    .line 221
    goto :goto_d

    .line 229
    :cond_5a
    iget-object v10, v8, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v11, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v10, v11}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 235
    :try_start_61
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v10}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_66
    .catch Lorg/apache/http/HttpException; {:try_start_61 .. :try_end_66} :catch_80
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_66} :catch_85
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_66} :catch_8a

    .line 246
    :goto_66
    if-eqz v3, :cond_91

    .line 247
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v10

    if-eqz v10, :cond_75

    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v10, :cond_75

    .line 251
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 253
    :cond_75
    const/4 v3, 0x0

    .line 254
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v10

    if-eqz v10, :cond_8f

    move v9, v13

    .line 255
    :goto_7d
    const/4 v4, 0x1

    move v5, v4

    .line 256
    goto :goto_d

    .line 236
    :catch_80
    move-exception v10

    move-object v0, v10

    .line 237
    .local v0, e:Lorg/apache/http/HttpException;
    move-object v3, v0

    .line 238
    const/4 v2, -0x1

    .line 245
    goto :goto_66

    .line 239
    .end local v0           #e:Lorg/apache/http/HttpException;
    :catch_85
    move-exception v10

    move-object v0, v10

    .line 240
    .local v0, e:Ljava/io/IOException;
    move-object v3, v0

    .line 241
    const/4 v2, -0x7

    .line 245
    goto :goto_66

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    :catch_8a
    move-exception v10

    move-object v0, v10

    .line 243
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 244
    const/4 v2, -0x7

    goto :goto_66

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_8f
    move v9, v12

    .line 254
    goto :goto_7d

    .line 259
    :cond_91
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 260
    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v10, :cond_d

    const/4 v9, 0x1

    goto/16 :goto_d

    .line 266
    :pswitch_9b
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v10

    if-nez v10, :cond_b9

    const/4 v10, 0x1

    move v1, v10

    .line 267
    .local v1, empty:Z
    :goto_a7
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 268
    .local v7, pipeSize:I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_bb

    if-ge v7, v5, :cond_bb

    if-nez v1, :cond_bb

    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-eqz v10, :cond_bb

    .line 270
    const/4 v9, 0x0

    .line 271
    goto/16 :goto_d

    .end local v1           #empty:Z
    .end local v7           #pipeSize:I
    :cond_b9
    move v1, v12

    .line 266
    goto :goto_a7

    .line 272
    .restart local v1       #empty:Z
    .restart local v7       #pipeSize:I
    :cond_bb
    if-nez v7, :cond_c4

    .line 274
    if-eqz v1, :cond_c2

    move v9, v13

    .line 275
    :goto_c0
    goto/16 :goto_d

    :cond_c2
    move v9, v12

    .line 274
    goto :goto_c0

    .line 278
    :cond_c4
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #req:Landroid/net/http/Request;
    check-cast v8, Landroid/net/http/Request;

    .line 283
    .restart local v8       #req:Landroid/net/http/Request;
    :try_start_ca
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v10}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_cf
    .catch Lorg/apache/http/ParseException; {:try_start_ca .. :try_end_cf} :catch_fa
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cf} :catch_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_ca .. :try_end_cf} :catch_104

    .line 294
    :goto_cf
    if-eqz v3, :cond_e4

    .line 295
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v10

    if-eqz v10, :cond_e1

    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v10, :cond_e1

    .line 299
    invoke-virtual {v8}, Landroid/net/http/Request;->reset()V

    .line 300
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 302
    :cond_e1
    const/4 v3, 0x0

    .line 303
    iput-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 305
    :cond_e4
    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v10, :cond_d

    .line 310
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 312
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v11, "http.connection"

    invoke-interface {v10, v11}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    .line 314
    const/4 v4, 0x1

    move v5, v4

    .line 315
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 284
    :catch_fa
    move-exception v10

    move-object v0, v10

    .line 285
    .local v0, e:Lorg/apache/http/ParseException;
    move-object v3, v0

    .line 286
    const/4 v2, -0x7

    .line 293
    goto :goto_cf

    .line 287
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_ff
    move-exception v10

    move-object v0, v10

    .line 288
    .local v0, e:Ljava/io/IOException;
    move-object v3, v0

    .line 289
    const/4 v2, -0x7

    .line 293
    goto :goto_cf

    .line 290
    .end local v0           #e:Ljava/io/IOException;
    :catch_104
    move-exception v10

    move-object v0, v10

    .line 291
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 292
    const/4 v2, -0x7

    goto :goto_cf

    .line 179
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #empty:Z
    .end local v7           #pipeSize:I
    :catch_109
    move-exception v10

    goto/16 :goto_1a

    .line 321
    :cond_10c
    return-void

    .line 183
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_9b
        :pswitch_9b
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .registers 5
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 493
    return-void
.end method

.method setCanPersist(Z)V
    .registers 2
    .parameter "canPersist"

    .prologue
    .line 496
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 497
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
