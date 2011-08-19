.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$UpdateThread;,
        Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;,
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotification;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private mPendingUpdate:Z

.field private mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/DownloadService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    return-object v0
.end method

.method private deleteDownload(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 469
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 470
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-direct {p0, v0, v3, v3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    .line 473
    :cond_0
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 474
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 476
    :cond_1
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 477
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 480
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-void
.end method

.method private deleteFileIfExists(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 551
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 556
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' couldn\'t be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 5
    .parameter "reader"
    .parameter "now"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {p1, p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    .line 428
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 431
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing inserted download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(JLcom/android/providers/downloads/StorageManager;)V

    .line 435
    return-object v0
.end method

.method private scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 10
    .parameter "info"
    .parameter "updateDatabase"
    .parameter "deleteFile"

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_0

    .line 493
    :goto_0
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "DownloadManager"

    const-string v1, "waiting for mMediaScannerService service: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v8

    .line 498
    .local v8, e1:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wait interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    .end local v8           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 503
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_1

    .line 505
    const/4 v0, 0x0

    monitor-exit p0

    .line 544
    :goto_1
    return v0

    .line 507
    :cond_1
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    .line 512
    .local v3, key:Landroid/net/Uri;
    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 513
    .local v5, id:J
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    iget-object v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    new-instance v0, Lcom/android/providers/downloads/DownloadService$1;

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/downloads/DownloadService$1;-><init>(Lcom/android/providers/downloads/DownloadService;ZLandroid/net/Uri;ZJ)V

    invoke-interface {v7, v8, v9, v0}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 541
    const/4 v0, 0x1

    :try_start_5
    monitor-exit p0

    goto :goto_1

    .line 542
    .end local v3           #key:Landroid/net/Uri;
    .end local v5           #id:J
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 543
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 10
    .parameter "reader"
    .parameter "info"
    .parameter "now"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 442
    iget v3, p2, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 443
    .local v3, oldVisibility:I
    iget v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 445
    .local v2, oldStatus:I
    invoke-virtual {p1, p2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 446
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 447
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing updated download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    if-ne v3, v8, :cond_3

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eq v4, v8, :cond_3

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v8

    .line 455
    .local v1, lostVisibility:Z
    :goto_0
    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v8

    .line 458
    .local v0, justCompleted:Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v5, p2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v4, v5, v6}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 462
    :cond_2
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {p2, p3, p4, v4}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(JLcom/android/providers/downloads/StorageManager;)V

    .line 463
    return-void

    .end local v0           #justCompleted:Z
    .end local v1           #lostVisibility:Z
    :cond_3
    move v1, v9

    .line 451
    goto :goto_0

    .restart local v1       #lostVisibility:Z
    :cond_4
    move v0, v9

    .line 455
    goto :goto_1
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    .line 251
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 253
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-interface {v0, v1}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 255
    :cond_0
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 201
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 209
    :cond_1
    new-instance v0, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 210
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    .line 215
    new-instance v0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    .line 217
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    .line 218
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v0}, Lcom/android/providers/downloads/SystemFacade;->cancelAllNotifications()V

    .line 219
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 220
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 243
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 226
    .local v0, returnValue:I
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "DownloadManager"

    const-string v2, "Service onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 230
    return v0
.end method
