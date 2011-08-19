.class public Lnet/yostore/aws/service/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/DownloadService$APIBroadcastRecv;,
        Lnet/yostore/aws/service/DownloadService$Downloader;,
        Lnet/yostore/aws/service/DownloadService$DownloaderException;
    }
.end annotation


# static fields
.field public static final DOWNLOADPERCENTUPDATE:Ljava/lang/String; = "net.yostore.aws.service.DownloadPercentUpdate"

.field public static final DOWNLOADSERVICE:Ljava/lang/String; = "net.yostore.aws.service.DownloadService"

.field private static final LOG_TAG:Ljava/lang/String; = "Downloader"

.field private static final MSG_DOWNLOAD_FAILED:I = 0x1

.field private static final MSG_DOWNLOAD_SUCCEEDED:I = 0x0

.field private static final MSG_REPORT_PROGRESS:I = 0x2

.field private static final MSG_REPORT_VERIFYING:I = 0x3

.field private static final NOTIFY_ID:I = 0x7f02005a

.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field public static final dlTmpExtentName:Ljava/lang/String; = ".awsdltmp"

.field public static isDownLoading:Z

.field public static nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private isUpdateApiCfg:Z

.field private final mBinder:Lnet/yostore/aws/service/DownloadServiceInterface$Stub;

.field private mBrocastRecv:Landroid/content/BroadcastReceiver;

.field private mDownloadThread:Ljava/lang/Thread;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private final mPercentFormat:Ljava/text/DecimalFormat;

.field private mSuppressErrorMessages:Z

.field private m_broadcast_intent:Landroid/content/Intent;

.field private nm:Landroid/app/NotificationManager;

.field private toRestart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->isUpdateApiCfg:Z

    .line 61
    iput-object v1, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 62
    iput-object p0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    .line 70
    iput-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->toRestart:Z

    .line 126
    new-instance v0, Lnet/yostore/aws/service/DownloadService$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/DownloadService$1;-><init>(Lnet/yostore/aws/service/DownloadService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mBinder:Lnet/yostore/aws/service/DownloadServiceInterface$Stub;

    .line 832
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0 %"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mPercentFormat:Ljava/text/DecimalFormat;

    .line 841
    new-instance v0, Lnet/yostore/aws/service/DownloadService$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/DownloadService$2;-><init>(Lnet/yostore/aws/service/DownloadService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private BroadcastFailUploaded(J)V
    .locals 3
    .parameter "idx"

    .prologue
    .line 318
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    .line 320
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "net.yostore.aws.service.DownloadPercentUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "percent"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "dlid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private BroadcastFinishUploaded(J)V
    .locals 3
    .parameter "idx"

    .prologue
    .line 308
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "net.yostore.aws.service.DownloadPercentUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "percent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "dlid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 314
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method private BroadcastPercentUploaded(D)V
    .locals 4
    .parameter "percent"

    .prologue
    .line 296
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "net.yostore.aws.service.DownloadPercentUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_0
    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    sget-object v0, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "percent"

    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, p1

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    const-string v1, "dlid"

    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 304
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService;->m_broadcast_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/service/DownloadService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    invoke-static {p0}, Lnet/yostore/aws/service/DownloadService;->quietClose(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$11(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    invoke-static {p0}, Lnet/yostore/aws/service/DownloadService;->quietClose(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$12(Lnet/yostore/aws/service/DownloadService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/DownloadService;->BroadcastFinishUploaded(J)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->startDownloadThread()V

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/service/DownloadService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lnet/yostore/aws/service/DownloadService;->toRestart:Z

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->pauseDownloadThread()V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->onDownloadSucceeded()V

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/DownloadService;->onDownloadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/service/DownloadService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/DownloadService;->onReportProgress(I)V

    return-void
.end method

.method static synthetic access$8(Lnet/yostore/aws/service/DownloadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 834
    iget-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->mSuppressErrorMessages:Z

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/service/DownloadService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 841
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static deleteData(Ljava/lang/String;)Z
    .locals 2
    .parameter "directory"

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/service/DownloadService;->deleteTree(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private static deleteTree(Ljava/io/File;Z)Z
    .locals 6
    .parameter "base"
    .parameter "deleteBase"

    .prologue
    .line 347
    const/4 v1, 0x1

    .line 348
    .local v1, result:Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_2

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    and-int/2addr v1, v2

    .line 356
    :cond_1
    return v1

    .line 349
    :cond_2
    aget-object v0, v2, v4

    .line 350
    .local v0, child:Ljava/io/File;
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lnet/yostore/aws/service/DownloadService;->deleteTree(Ljava/io/File;Z)Z

    move-result v5

    and-int/2addr v1, v5

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static ensureDownloaded(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "activity"
    .parameter "customText"
    .parameter "fileConfigUrl"
    .parameter "configVersion"
    .parameter "dataPath"
    .parameter "userAgent"

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "Downloader"

    const-string v2, "Versions match, no need to download."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initApiCfg()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->isUpdateApiCfg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->updateApicfg()V

    .line 108
    :cond_1
    return-void
.end method

.method private onDownloadFailed(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 406
    const-string v2, "Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download stopped: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 409
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 410
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, shortReason:Ljava/lang/String;
    :goto_0
    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    const/16 v5, 0x3e7

    invoke-static {v2, v3, v4, v5}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 416
    sget-object v2, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-direct {p0, v2, v3}, Lnet/yostore/aws/service/DownloadService;->BroadcastFailUploaded(J)V

    .line 417
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->pauseDownloadThread()V

    .line 419
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getTopDownloadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 420
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->startDownloadThread()V

    .line 422
    :cond_1
    return-void

    .line 412
    .end local v1           #shortReason:Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .restart local v1       #shortReason:Ljava/lang/String;
    goto :goto_0
.end method

.method private onDownloadSucceeded()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "Downloader"

    const-string v1, "Download succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getTopDownloadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->queueEmpty()V

    .line 403
    :cond_0
    return-void
.end method

.method private onReportProgress(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 425
    int-to-double v2, p1

    const-wide v4, 0x40c3880000000000L

    div-double v0, v2, v4

    .line 427
    .local v0, percent:D
    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/service/DownloadService;->BroadcastPercentUploaded(D)V

    .line 428
    return-void
.end method

.method private pauseDownloadThread()V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    sget-object v1, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 387
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/service/DownloadService;->BroadcastPercentUploaded(D)V

    .line 388
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 394
    iget-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->toRestart:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->startDownloadThread()V

    .line 396
    :cond_0
    return-void
.end method

.method private queueEmpty()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    .line 192
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 193
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    .line 208
    :cond_0
    return-void
.end method

.method private static quietClose(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 432
    if-eqz p0, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static quietClose(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 442
    if-eqz p0, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startDownloadThread()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 361
    iput-boolean v1, p0, Lnet/yostore/aws/service/DownloadService;->toRestart:Z

    .line 362
    sget-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    .line 366
    iput-boolean v1, p0, Lnet/yostore/aws/service/DownloadService;->mSuppressErrorMessages:Z

    .line 369
    const v0, 0x7f02005f

    const-string v1, ""

    const-class v2, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-virtual {p0, v0, v1, v2}, Lnet/yostore/aws/service/DownloadService;->updateNotification(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    .line 370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/yostore/aws/service/DownloadService$Downloader;

    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/service/DownloadService$Downloader;-><init>(Lnet/yostore/aws/service/DownloadService;Lnet/yostore/aws/api/ApiConfig;)V

    const-string v2, "Downloader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    .line 371
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 372
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    :cond_1
    return-void
.end method

.method private updateApicfg()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 112
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->isUpdateApiCfg:Z

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/DownloadService;->isUpdateApiCfg:Z

    goto :goto_0
.end method


# virtual methods
.method public notifyFileOpen(Ljava/lang/String;)V
    .locals 20
    .parameter "filepath"

    .prologue
    .line 252
    new-instance v14, Ljava/io/File;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v14, openFile:Ljava/io/File;
    const-string v15, "Download finish!"

    .line 254
    .local v15, title:Ljava/lang/String;
    new-instance v13, Landroid/app/Notification;

    const v16, 0x7f02005a

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v13

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 255
    .local v13, note:Landroid/app/Notification;
    const/16 v16, 0x10

    move/from16 v0, v16

    move-object v1, v13

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 256
    if-eqz p1, :cond_0

    const-string v16, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 257
    new-instance v10, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v10, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    .line 260
    .local v11, mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, fileName:Ljava/lang/String;
    const-string v16, "."

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 262
    .local v6, dotPos:I
    add-int/lit8 v16, v6, 0x1

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, fileExt:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 264
    .local v9, fileUri:Landroid/net/Uri;
    invoke-virtual {v11, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, mimetype:Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 266
    invoke-virtual {v11, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v10

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 272
    .local v5, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v15

    move-object/from16 v3, v17

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Ljava/io/File;->hashCode()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 278
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #dotPos:I
    .end local v7           #fileExt:Ljava/lang/String;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v9           #fileUri:Landroid/net/Uri;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    .end local v12           #mimetype:Ljava/lang/String;
    :cond_0
    return-void

    .line 268
    .restart local v6       #dotPos:I
    .restart local v7       #fileExt:Ljava/lang/String;
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local v9       #fileUri:Landroid/net/Uri;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #mMimeTypeMap:Landroid/webkit/MimeTypeMap;
    .restart local v12       #mimetype:Ljava/lang/String;
    :cond_1
    const-string v16, "*/*"

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 123
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mBinder:Lnet/yostore/aws/service/DownloadServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadService;->initApiCfg()V

    .line 76
    iput-object p0, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lnet/yostore/aws/service/DownloadService$APIBroadcastRecv;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/DownloadService$APIBroadcastRecv;-><init>(Lnet/yostore/aws/service/DownloadService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lnet/yostore/aws/service/DownloadService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    .line 84
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 101
    invoke-virtual {p0}, Lnet/yostore/aws/service/DownloadService;->stopSelf()V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateNotification(ILjava/lang/CharSequence;Ljava/lang/Class;)V
    .locals 7
    .parameter "idIcon"
    .parameter "text"
    .parameter "starActivity"

    .prologue
    const/4 v6, 0x0

    .line 221
    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lnet/yostore/aws/service/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, title:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 224
    .local v1, note:Landroid/app/Notification;
    iget-object v3, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    .line 225
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 228
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lnet/yostore/aws/service/DownloadService;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 231
    iget-object v3, p0, Lnet/yostore/aws/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const v4, 0x7f02005a

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 247
    return-void
.end method
