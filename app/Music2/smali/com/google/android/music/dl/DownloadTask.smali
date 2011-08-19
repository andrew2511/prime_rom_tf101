.class public Lcom/google/android/music/dl/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadTask$1;
    }
.end annotation


# static fields
.field private static DOWNLOAD_COMPLETE_EVENTCODE:I = 0x0

.field private static final DOWNLOAD_STATUS_FAILURE_NO_RETRY:I = 0x5

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x1

.field private static final DOWNLOAD_STATUS_SERVER_SPECIFIED_WAIT:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x4

.field private static final DOWNLOAD_STATUS_TIMED_OUT:I = 0x3

.field private static HTTP_RESPONSE_EVENTCODE:I = 0x0

.field private static IO_EXCEPTION_EVENTCODE:I = 0x0

.field private static final MAX_RETRIES_WITH_NO_PROGRESS:I = 0x3

.field private static final MAX_WAIT_TIME:J = 0x4e20L

.field private static final MIN_AMOUNT_TO_BE_CONSIDERED_PROGRESS:J = 0x400L

.field private static SERVICE_UNAVAILABLE_EVENTCODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadTask"

.field private static final WAIT_TIME:J = 0x3e8L

.field private static final WAIT_TIME_FOR_NETWORK_RECONNECT:J = 0x2710L


# instance fields
.field protected final LOGV:Z

.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mContext:Landroid/content/Context;

.field protected final mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private mGoingToRestart:Z

.field private mServerSpecifiedRetryTime:J

.field private mStarted:Z

.field private mStopDownload:Z

.field private mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStreamingEnabledChangedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/dl/DownloadTask;->SERVICE_UNAVAILABLE_EVENTCODE:I

    .line 105
    const/16 v0, 0x65

    sput v0, Lcom/google/android/music/dl/DownloadTask;->HTTP_RESPONSE_EVENTCODE:I

    .line 106
    const/16 v0, 0x66

    sput v0, Lcom/google/android/music/dl/DownloadTask;->IO_EXCEPTION_EVENTCODE:I

    .line 108
    const/4 v0, 0x2

    sput v0, Lcom/google/android/music/dl/DownloadTask;->DOWNLOAD_COMPLETE_EVENTCODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 4
    .parameter "context"
    .parameter "bufferProgress"
    .parameter "order"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "DownloadTask"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    .line 95
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    .line 100
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    .line 102
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    .line 112
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    .line 115
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 117
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 118
    return-void
.end method


# virtual methods
.method protected download(Ljava/io/OutputStream;)I
    .locals 14
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 337
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/music/dl/DownloadHandler;->downloadTo(Ljava/io/OutputStream;)V

    .line 341
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadHandler;->downloadSucceeded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 342
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 344
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 345
    const v4, 0x12113

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v7, v7, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcom/google/android/music/dl/DownloadTask;->DOWNLOAD_COMPLETE_EVENTCODE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 352
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": download complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_1
    move v4, v11

    .line 459
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v4

    .line 361
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 365
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v4, :cond_2

    .line 366
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 371
    .local v0, e:Ljava/io/InterruptedIOException;
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    .line 372
    .local v2, newEx:Ljava/lang/InterruptedException;
    invoke-virtual {v2, v0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 373
    throw v2

    .line 374
    .end local v0           #e:Ljava/io/InterruptedIOException;
    .end local v2           #newEx:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 375
    .local v0, e:Lcom/google/android/music/dl/ServiceUnavailableException;
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 377
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    .line 378
    const v4, 0x12113

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    sget v6, Lcom/google/android/music/dl/DownloadTask;->SERVICE_UNAVAILABLE_EVENTCODE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 385
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": service unavailable: type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/music/dl/ServiceUnavailableException;->getRetryAfterInSeconds()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move v4, v13

    .line 392
    goto/16 :goto_0

    .line 393
    .end local v0           #e:Lcom/google/android/music/dl/ServiceUnavailableException;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 394
    .local v0, e:Lcom/google/android/music/dl/ServerRejectionException;
    sget-object v4, Lcom/google/android/music/dl/DownloadTask$1;->$SwitchMap$com$google$android$music$dl$ServerRejectionException$RejectionReason:[I

    invoke-virtual {v0}, Lcom/google/android/music/dl/ServerRejectionException;->getRejectionReason()Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v4, v10

    .line 405
    goto/16 :goto_0

    .line 396
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v5, 0x6

    iput v5, v4, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    goto :goto_1

    .line 399
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iput v10, v4, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    goto :goto_1

    .line 402
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v5, 0x7

    iput v5, v4, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    goto :goto_1

    .line 407
    .end local v0           #e:Lcom/google/android/music/dl/ServerRejectionException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .line 408
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    .line 409
    .local v3, statusCode:I
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 411
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    .line 412
    const v4, 0x12113

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    sget v6, Lcom/google/android/music/dl/DownloadTask;->HTTP_RESPONSE_EVENTCODE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 419
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": http response: type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_4
    const/16 v4, 0x190

    if-lt v3, v4, :cond_7

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_7

    .line 429
    const/16 v4, 0x191

    if-ne v3, v4, :cond_5

    .line 430
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iput v11, v4, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    :cond_5
    move v4, v10

    .line 432
    goto/16 :goto_0

    .line 435
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #statusCode:I
    :catch_5
    move-exception v4

    move-object v0, v4

    .line 436
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 438
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_6

    .line 439
    const v4, 0x12113

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    sget v6, Lcom/google/android/music/dl/DownloadTask;->IO_EXCEPTION_EVENTCODE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 446
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v6, v6, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": io exception: type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_6
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download failed because of IO Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    if-eqz v4, :cond_8

    .line 456
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping download ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because manager said to stop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v4, v12

    .line 459
    goto/16 :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method protected getWriteToStream()Ljava/io/OutputStream;
    .locals 2
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 467
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public onStreamabilityChanged(Z)V
    .locals 3
    .parameter "isStreamable"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 473
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    .line 474
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 475
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 476
    monitor-exit v0

    .line 478
    :cond_0
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 31

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 135
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "The same DownloadTask should never be ran twice"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 138
    :catchall_0
    move-exception v23

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 137
    :cond_0
    const/16 v23, 0x1

    :try_start_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v23

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v23

    if-nez v23, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 146
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download state was finished for song ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "). not starting download"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_3
    const/16 v16, 0x0

    .line 154
    .local v16, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/dl/DownloadTask;->getWriteToStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    .line 159
    new-instance v5, Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/BufferProgressOutputStream;-><init>(Lcom/google/android/music/dl/BufferProgress;Ljava/io/OutputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    .line 161
    .local v5, bufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/google/android/music/dl/DownloadOrder;->experiencedGlitchDuringDownload:Z

    .line 163
    const/4 v11, 0x1

    .line 164
    .local v11, downloadStatus:I
    const-wide/16 v19, 0x0

    .line 165
    .local v19, transferTime:J
    const-wide/16 v9, 0x0

    .line 166
    .local v9, downloadLength:J
    const/4 v13, 0x0

    .line 167
    .local v13, failedAttemptsWithNoProgress:I
    const-wide/16 v21, 0x3e8

    .line 168
    .local v21, waitBeforeRetryingMs:J
    const/4 v6, 0x1

    .line 170
    .local v6, continueRetries:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 173
    const/4 v7, 0x1

    .local v7, downloadAttempt:I
    move v8, v7

    .line 174
    .end local v7           #downloadAttempt:I
    .local v8, downloadAttempt:I
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    move/from16 v23, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v23, :cond_18

    if-eqz v6, :cond_18

    .line 176
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 177
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Attempt #"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v24

    add-int/lit8 v7, v8, 0x1

    .end local v8           #downloadAttempt:I
    .restart local v7       #downloadAttempt:I
    :try_start_5
    move-object/from16 v0, v24

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to download "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 181
    .local v17, startTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v14

    .line 183
    .local v14, initialCompleted:J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 184
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadTask;->download(Ljava/io/OutputStream;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v11

    .line 192
    :goto_3
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v19, v23, v17

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v23

    sub-long v9, v23, v14

    .line 194
    const-wide/16 v23, 0x0

    cmp-long v23, v9, v23

    if-lez v23, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide v1, v9

    move-wide/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    .line 199
    :cond_4
    const/16 v23, 0x4

    move v0, v11

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->isResumable()Z

    move-result v23

    if-nez v23, :cond_b

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 202
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Not retrying download ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") since it\'s not resumable"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 206
    const/4 v6, 0x0

    .line 298
    :cond_6
    :goto_4
    if-eqz v6, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 299
    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 301
    .end local v14           #initialCompleted:J
    .end local v17           #startTime:J
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 302
    .local v12, e:Ljava/lang/InterruptedException;
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 303
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") was interupted.  Exiting."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 305
    :cond_7
    const/4 v6, 0x0

    .line 310
    .end local v12           #e:Ljava/lang/InterruptedException;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 313
    :try_start_9
    invoke-virtual {v5}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 319
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 320
    invoke-virtual {v5}, Lcom/google/android/music/dl/BufferProgressOutputStream;->sendBufferProgress()V

    goto/16 :goto_0

    .line 155
    .end local v5           #bufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;
    .end local v6           #continueRetries:Z
    .end local v7           #downloadAttempt:I
    .end local v9           #downloadLength:J
    .end local v11           #downloadStatus:I
    .end local v13           #failedAttemptsWithNoProgress:I
    .end local v19           #transferTime:J
    .end local v21           #waitBeforeRetryingMs:J
    :catch_1
    move-exception v12

    .line 156
    .local v12, e:Ljava/io/FileNotFoundException;
    const-string v23, "DownloadTask"

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 186
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #bufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;
    .restart local v6       #continueRetries:Z
    .restart local v7       #downloadAttempt:I
    .restart local v9       #downloadLength:J
    .restart local v11       #downloadStatus:I
    .restart local v13       #failedAttemptsWithNoProgress:I
    .restart local v14       #initialCompleted:J
    .restart local v17       #startTime:J
    .restart local v19       #transferTime:J
    .restart local v21       #waitBeforeRetryingMs:J
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 187
    const-string v23, "DownloadTask"

    const-string v24, "Not attempting download since streaming not enabled"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 189
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 192
    :catchall_1
    move-exception v23

    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v19, v24, v17

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v24

    sub-long v9, v24, v14

    .line 194
    const-wide/16 v24, 0x0

    cmp-long v24, v9, v24

    if-lez v24, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v9

    move-wide/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    :cond_a
    throw v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 310
    .end local v14           #initialCompleted:J
    .end local v17           #startTime:J
    :catchall_2
    move-exception v23

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 313
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 316
    :goto_9
    throw v23

    .line 208
    .restart local v14       #initialCompleted:J
    .restart local v17       #startTime:J
    :cond_b
    const-wide/16 v21, 0x3e8

    .line 209
    packed-switch v11, :pswitch_data_0

    .line 251
    :try_start_d
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown Download status: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 211
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 214
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download suceeded for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Avg speed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-wide v0, v9

    long-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4090

    div-double v25, v25, v27

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x408f400000000000L

    div-double v27, v27, v29

    div-double v25, v25, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " kb/s"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_c
    const/4 v6, 0x0

    .line 255
    :goto_a
    if-eqz v6, :cond_6

    .line 256
    const-wide/16 v23, 0x0

    cmp-long v23, v21, v23

    if-gtz v23, :cond_10

    .line 257
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "waitBeforeRetryingMs was not initialized to a valid value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 222
    :pswitch_1
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download failed for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 224
    const/4 v6, 0x0

    .line 225
    goto :goto_a

    .line 228
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x4e20

    cmp-long v23, v23, v25

    if-lez v23, :cond_e

    .line 230
    :cond_d
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Server said to wait too long: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 233
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 235
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v21, v0

    .line 237
    goto/16 :goto_a

    .line 239
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v17

    if-lez v23, :cond_f

    .line 242
    const-wide/16 v21, 0x1

    goto/16 :goto_a

    .line 244
    :cond_f
    const-wide/16 v21, 0x3e8

    .line 246
    goto/16 :goto_a

    .line 248
    :pswitch_4
    const-wide/16 v21, 0x3e8

    .line 249
    goto/16 :goto_a

    .line 261
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/google/android/music/dl/DownloadOrder;->experiencedGlitchDuringDownload:Z

    .line 263
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Experienced error when trying to download: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-wide/16 v23, 0x400

    cmp-long v23, v9, v23

    if-gez v23, :cond_11

    .line 267
    add-int/lit8 v13, v13, 0x1

    .line 268
    const/16 v23, 0x3

    move v0, v13

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    .line 269
    const-string v23, "DownloadTask"

    const-string v24, "Too many failures with no download progress"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    goto/16 :goto_6

    .line 274
    :cond_11
    const/4 v13, 0x0

    .line 276
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    .line 277
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const-wide/16 v24, 0x3e8

    cmp-long v24, v21, v24

    if-lez v24, :cond_13

    .line 282
    const-string v24, "DownloadTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Waiting "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    div-long v26, v21, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " seconds before retrying"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 294
    :goto_b
    monitor-exit v23

    goto/16 :goto_4

    :catchall_3
    move-exception v24

    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v24
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    .line 288
    :cond_14
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 289
    const-string v24, "DownloadTask"

    const-string v25, "Waiting until streaming comes backonline (or gets interrupted)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x2710

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_b

    :cond_16
    move v8, v7

    .line 307
    .end local v7           #downloadAttempt:I
    .restart local v8       #downloadAttempt:I
    goto/16 :goto_1

    .line 314
    .end local v8           #downloadAttempt:I
    .end local v14           #initialCompleted:J
    .end local v17           #startTime:J
    .restart local v7       #downloadAttempt:I
    :catch_2
    move-exception v12

    .line 315
    .local v12, e:Ljava/io/IOException;
    const-string v23, "DownloadTask"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 314
    .end local v12           #e:Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 315
    .restart local v12       #e:Ljava/io/IOException;
    const-string v24, "DownloadTask"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 310
    .end local v7           #downloadAttempt:I
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #downloadAttempt:I
    :catchall_4
    move-exception v23

    move v7, v8

    .end local v8           #downloadAttempt:I
    .restart local v7       #downloadAttempt:I
    goto/16 :goto_8

    .line 301
    .end local v7           #downloadAttempt:I
    .restart local v8       #downloadAttempt:I
    :catch_4
    move-exception v23

    move-object/from16 v12, v23

    move v7, v8

    .end local v8           #downloadAttempt:I
    .restart local v7       #downloadAttempt:I
    goto/16 :goto_5

    .end local v7           #downloadAttempt:I
    .restart local v8       #downloadAttempt:I
    :cond_17
    move v7, v8

    .end local v8           #downloadAttempt:I
    .restart local v7       #downloadAttempt:I
    goto/16 :goto_2

    .end local v7           #downloadAttempt:I
    .restart local v8       #downloadAttempt:I
    :cond_18
    move v7, v8

    .end local v8           #downloadAttempt:I
    .restart local v7       #downloadAttempt:I
    goto/16 :goto_6

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected signalGoingToRestart()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    .line 130
    return-void
.end method
