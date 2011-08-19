.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$1;,
        Lcom/android/providers/downloads/DownloadThread$RetryDownload;,
        Lcom/android/providers/downloads/DownloadThread$InnerState;,
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter "context"
    .parameter "systemFacade"
    .parameter "info"
    .parameter "storageManager"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 64
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 65
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 66
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 864
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_0
    iget-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_2

    .line 868
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 869
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_1
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_2

    .line 873
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Range header: bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_2
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z
    .locals 1
    .parameter "innerState"

    .prologue
    .line 464
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 236
    .local v0, networkUsable:I
    if-eq v0, v3, :cond_2

    .line 237
    const/16 v1, 0xc3

    .line 238
    .local v1, status:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 239
    const/16 v1, 0xc4

    .line 240
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 245
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3, v0}, Lcom/android/providers/downloads/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 241
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 242
    const/16 v1, 0xc4

    .line 243
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 248
    .end local v1           #status:I
    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 379
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 381
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    .line 386
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const-string v1, "download canceled"

    invoke-direct {v0, v3, v1}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .locals 2
    .parameter "state"
    .parameter "finalStatus"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 297
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 301
    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 364
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 7
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$InnerState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>(Lcom/android/providers/downloads/DownloadThread$1;)V

    .line 211
    .local v2, innerState:Lcom/android/providers/downloads/DownloadThread$InnerState;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 213
    .local v0, data:[B
    invoke-direct {p0, p1, v2}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 214
    invoke-direct {p0, v2, p3}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    .line 217
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 220
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 222
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 223
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 227
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/DownloadThread;->openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 228
    .local v1, entityStream:Ljava/io/InputStream;
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    .line 229
    return-void
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 282
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v1, 0x1a4

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 287
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 773
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 774
    .local v0, networkUsable:I
    if-eq v0, v3, :cond_2

    .line 775
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v1, 0xc4

    .line 784
    :goto_0
    return v1

    .line 775
    :cond_1
    const/16 v1, 0xc3

    goto :goto_0

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 780
    iput-boolean v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 781
    const/16 v1, 0xc2

    goto :goto_0

    .line 783
    :cond_3
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached max retries for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v1, 0x1ef

    goto :goto_0
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 443
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 446
    const-string v2, "total_bytes"

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 450
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 452
    .local v0, lengthMismatched:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 453
    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 450
    .end local v0           #lengthMismatched:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 457
    .restart local v0       #lengthMismatched:Z
    :cond_2
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v3

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 461
    :cond_3
    return-void
.end method

.method private handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 638
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 639
    .local v1, statusCode:I
    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 640
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    .line 642
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2

    .line 643
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/providers/downloads/DownloadThread;->handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 646
    :cond_2
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_3

    .line 647
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recevd_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mContinuingDownload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3
    iget-boolean v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v2, :cond_5

    const/16 v2, 0xce

    move v0, v2

    .line 651
    .local v0, expectedStatus:I
    :goto_0
    if-eq v1, v0, :cond_4

    .line 652
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadThread;->handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V

    .line 654
    :cond_4
    return-void

    .line 650
    .end local v0           #expectedStatus:I
    :cond_5
    const/16 v2, 0xc8

    move v0, v2

    goto :goto_0
.end method

.method private handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 661
    const/16 v1, 0x1a0

    if-ne p3, v1, :cond_0

    .line 663
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Range request failure: totalBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTotalBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes recvd so far: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_0
    invoke-static {p3}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    move v0, p3

    .line 676
    .local v0, finalStatus:I
    :goto_0
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContinuingDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 669
    .end local v0           #finalStatus:I
    :cond_1
    const/16 v1, 0x12c

    if-lt p3, v1, :cond_2

    const/16 v1, 0x190

    if-ge p3, v1, :cond_2

    .line 670
    const/16 v0, 0x1ed

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 671
    .end local v0           #finalStatus:I
    :cond_2
    iget-boolean v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_3

    .line 672
    const/16 v0, 0x1e9

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 674
    .end local v0           #finalStatus:I
    :cond_3
    const/16 v0, 0x1ee

    .restart local v0       #finalStatus:I
    goto :goto_0
.end method

.method private handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 6
    .parameter "state"
    .parameter "response"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 685
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_0

    .line 686
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got HTTP redirect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 689
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1f1

    const-string v5, "too many redirects"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 692
    :cond_1
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 693
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_2

    .line 694
    return-void

    .line 696
    :cond_2
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 697
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_3
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 711
    .local v2, newUri:Ljava/lang/String;
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 712
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 713
    const/16 v3, 0x12d

    if-eq p3, v3, :cond_4

    const/16 v3, 0x12f

    if-ne p3, v3, :cond_5

    .line 715
    :cond_4
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 717
    :cond_5
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$RetryDownload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V

    throw v3

    .line 703
    .end local v2           #newUri:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 704
    .local v0, ex:Ljava/net/URISyntaxException;
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_6

    .line 705
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t resolve redirect URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_6
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "Couldn\'t resolve redirect URI"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const v5, 0x15180

    const/16 v4, 0x1e

    .line 725
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 726
    const-string v1, "DownloadManager"

    const-string v2, "got HTTP response code 503"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 729
    const-string v1, "Retry-After"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 730
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_2

    .line 732
    :try_start_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 733
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 736
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v1, :cond_3

    .line 737
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc2

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 739
    :cond_3
    :try_start_1
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v1, v4, :cond_5

    .line 740
    const/16 v1, 0x1e

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 744
    :cond_4
    :goto_1
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v2, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 745
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    goto :goto_0

    .line 741
    :cond_5
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v1, v5, :cond_4

    .line 742
    const v1, 0x15180

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 336
    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logNetworkState()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method private notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "errorMsg"

    .prologue
    .line 885
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 891
    :cond_0
    return-void
.end method

.method private notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 896
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 897
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    if-eqz p6, :cond_0

    .line 900
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 904
    const-string v1, "method"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    if-nez p2, :cond_2

    .line 906
    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    :goto_0
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 914
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    return-void

    .line 907
    :cond_2
    if-eqz p4, :cond_3

    .line 908
    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 910
    :cond_3
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 501
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 502
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 503
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 504
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 12
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 522
    iget-boolean v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 529
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_1
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v9, v9, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    iget-object v10, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-static/range {v0 .. v10}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 541
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_1

    .line 547
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 552
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    goto :goto_0

    .line 529
    :cond_2
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 542
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 543
    .local v11, exc:Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 7
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 476
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 479
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1e9

    invoke-direct {v3, v4, v1, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 488
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while reading response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 577
    const-string v3, "Content-Disposition"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 578
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 581
    :cond_0
    const-string v3, "Content-Location"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_1

    .line 583
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 585
    :cond_1
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 586
    const-string v3, "Content-Type"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_2

    .line 588
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 591
    :cond_2
    const-string v3, "ETag"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_3

    .line 593
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 595
    :cond_3
    const/4 v1, 0x0

    .line 596
    .local v1, headerTransferEncoding:Ljava/lang/String;
    const-string v3, "Transfer-Encoding"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_4

    .line 598
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 600
    :cond_4
    if-nez v1, :cond_8

    .line 601
    const-string v3, "Content-Length"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_5

    .line 603
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 604
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTotalBytes:J

    .line 614
    :cond_5
    :goto_0
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_6

    .line 615
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ETag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer-Encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_6
    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v3, :cond_9

    if-eqz v1, :cond_7

    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    const/4 v3, 0x1

    move v2, v3

    .line 627
    .local v2, noSizeInfo:Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 628
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "can\'t know size of download, giving up"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 609
    .end local v2           #noSizeInfo:Z
    :cond_8
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_5

    .line 610
    const-string v3, "DownloadManager"

    const-string v4, "ignoring content-length because of xfer-encoding"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    :cond_9
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 631
    .restart local v2       #noSizeInfo:Z
    :cond_a
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 8
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v7, 0x0

    .line 394
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    .local v0, now:J
    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr v3, v4

    const/16 v4, 0x1000

    if-le v3, v4, :cond_0

    iget-wide v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 399
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iput v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    .line 403
    iput-wide v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 405
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 928
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 930
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 931
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 932
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    move-object v2, p0

    .line 936
    .end local v1           #semicolonIndex:I
    :goto_0
    return-object v2

    .line 935
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 936
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 761
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 765
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 766
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 767
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1ec

    const/4 v6, 0x1

    .line 794
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 795
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have run thread before for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and state.mFilename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v1}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, v7, v1}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 806
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_2

    .line 809
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming download for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and state.mFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 813
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 816
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 817
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_3

    .line 818
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BUT starting from scratch again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 855
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 857
    :cond_4
    return-void

    .line 821
    :cond_5
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_6

    .line 823
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 824
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1e9

    const-string v2, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 828
    :cond_6
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_7

    .line 829
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resuming download for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and starting with file of length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    long-to-int v0, v1

    iput v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 839
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 840
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 842
    :cond_8
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 843
    iput-boolean v6, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    .line 844
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_3

    .line 845
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", innerState.mBytesSoFar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and setting mContinuingDownload to true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination for resuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b

    .line 310
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .local v1, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10

    .line 320
    if-eqz v1, :cond_2

    .line 322
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 330
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 323
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 324
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 327
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 325
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 327
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 311
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 312
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 323
    :catch_3
    move-exception v2

    .line 324
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 325
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 313
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    move-object v2, v3

    .line 314
    .local v2, ex:Ljava/io/SyncFailedException;
    :goto_2
    :try_start_5
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    .line 323
    :catch_6
    move-exception v2

    .line 324
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 325
    .local v2, ex:Ljava/io/SyncFailedException;
    :catch_7
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 315
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_8
    move-exception v3

    move-object v2, v3

    .line 316
    .local v2, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException trying to sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_0

    .line 323
    :catch_9
    move-exception v2

    .line 324
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 325
    :catch_a
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 317
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_b
    move-exception v3

    move-object v2, v3

    .line 318
    .restart local v2       #ex:Ljava/lang/RuntimeException;
    :goto_4
    :try_start_9
    const-string v3, "DownloadManager"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_0

    .line 323
    :catch_c
    move-exception v2

    .line 324
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 325
    .local v2, ex:Ljava/lang/RuntimeException;
    :catch_d
    move-exception v2

    .line 326
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 320
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v0, :cond_1

    .line 322
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_f

    .line 327
    :cond_1
    :goto_6
    throw v3

    .line 323
    :catch_e
    move-exception v2

    .line 324
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "DownloadManager"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 325
    .end local v2           #ex:Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "DownloadManager"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 320
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 317
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 315
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 313
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 311
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 4
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 258
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 259
    .local v0, bytesRead:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 261
    return-void

    .line 264
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 265
    invoke-direct {p0, p1, p3, v0}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V

    .line 266
    iget v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 269
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 270
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 345
    .local v1, item:Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 347
    if-nez v1, :cond_0

    .line 348
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1eb

    const-string v4, "unable to add file to DrmProvider"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 351
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 352
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 354
    return-void
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v4, 0x0

    .line 560
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "etag"

    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 566
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 73
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    :cond_0
    if-nez v0, :cond_1

    .line 76
    const-string v0, "AndroidDownloadManager"

    .line 78
    :cond_1
    return-object v0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V
    .locals 6
    .parameter "state"
    .parameter "data"
    .parameter "bytesRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 416
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    .line 417
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v4, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V

    .line 421
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 422
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_2
    return-void

    .line 427
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 431
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v4, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 128
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 130
    new-instance v19, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 131
    .local v19, state:Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v13, 0x0

    .line 132
    .local v13, client:Landroid/net/http/AndroidHttpClient;
    const/16 v20, 0x0

    .line 133
    .local v20, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v5, 0x1eb

    .line 134
    .local v5, finalStatus:I
    const/4 v12, 0x0

    .line 137
    .local v12, errorMsg:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 138
    .local v17, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v6, "DownloadManager"

    move-object/from16 v0, v17

    move v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    .line 139
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 143
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initiating download for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v4, v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v13

    .line 148
    const/16 v16, 0x0

    .line 149
    .local v16, finished:Z
    :goto_0
    if-nez v16, :cond_4

    .line 150
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initiating request for download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 155
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    .local v18, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v13

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/providers/downloads/DownloadThread$RetryDownload; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    const/16 v16, 0x1

    .line 162
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 163
    const/16 v18, 0x0

    .line 164
    goto :goto_0

    .line 159
    :catch_0
    move-exception v4

    .line 162
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 163
    const/16 v18, 0x0

    .line 164
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 163
    const/16 v18, 0x0

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    .end local v16           #finished:Z
    .end local v17           #pm:Landroid/os/PowerManager;
    .end local v18           #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 174
    .local v14, error:Lcom/android/providers/downloads/StopRequestException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborting request for download "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/providers/downloads/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 175
    const-string v4, "DownloadManager"

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_1

    .line 177
    const-string v4, "DownloadManager"

    invoke-static {v4, v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_1
    iget v5, v14, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    if-eqz v20, :cond_2

    .line 188
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    const/16 v20, 0x0

    .line 191
    :cond_2
    if-eqz v13, :cond_3

    .line 192
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 193
    const/4 v13, 0x0

    .line 195
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 196
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    .line 201
    .end local v14           #error:Lcom/android/providers/downloads/StopRequestException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/downloads/StorageManager;->incrementNumDownloadsSoFar()V

    .line 202
    return-void

    .line 167
    .restart local v16       #finished:Z
    .restart local v17       #pm:Landroid/os/PowerManager;
    :cond_4
    :try_start_4
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_5

    .line 168
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download completed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    const/16 v5, 0xc8

    .line 187
    if-eqz v20, :cond_6

    .line 188
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    const/16 v20, 0x0

    .line 191
    :cond_6
    if-eqz v13, :cond_7

    .line 192
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 193
    const/4 v13, 0x0

    .line 195
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 196
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    goto :goto_1

    .line 181
    .end local v16           #finished:Z
    .end local v17           #pm:Landroid/os/PowerManager;
    :catch_2
    move-exception v4

    move-object v15, v4

    .line 182
    .local v15, ex:Ljava/lang/Throwable;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception for id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 183
    const-string v4, "DownloadManager"

    invoke-static {v4, v12, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    const/16 v5, 0x1eb

    .line 187
    if-eqz v20, :cond_8

    .line 188
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    const/16 v20, 0x0

    .line 191
    :cond_8
    if-eqz v13, :cond_9

    .line 192
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 193
    const/4 v13, 0x0

    .line 195
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 196
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    goto/16 :goto_1

    .line 187
    .end local v15           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    move-object v14, v4

    if-eqz v20, :cond_a

    .line 188
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    const/16 v20, 0x0

    .line 191
    :cond_a
    if-eqz v13, :cond_b

    .line 192
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 193
    const/4 v13, 0x0

    .line 195
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 196
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    .end local v5           #finalStatus:I
    throw v14
.end method
