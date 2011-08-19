.class public Lcom/ecareme/pixwe/service/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/service/UploadService$MearBroadcastRecv;,
        Lcom/ecareme/pixwe/service/UploadService$PixWeBroadcastRecv;,
        Lcom/ecareme/pixwe/service/UploadService$STATUS;,
        Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ecareme$pixwe$service$UploadService$STATUS:[I = null

.field private static synthetic $SWITCH_TABLE$com$ecareme$pixwe$service$Uploader$STATUS:[I = null

.field private static final NOTIFY_ID:I = 0x7f020041

.field public static final UPLOADSERVICE:Ljava/lang/String; = "com.ecareme.pixwe.service.UploadService"

.field public static final UPLOADSTATUSKEY:Ljava/lang/String; = "upload_status"

.field public static isNeedToDel:Z

.field public static isNeedToRefresh:Z

.field private static status:Lcom/ecareme/pixwe/service/UploadService$STATUS;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private contentIntent:Landroid/app/PendingIntent;

.field private ctx:Landroid/content/Context;

.field formatter:Ljava/text/Format;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;

.field private nm:Landroid/app/NotificationManager;

.field private note:Landroid/app/Notification;

.field private final uBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

.field private updateBufferTime:J

.field private final uploadTask:Ljava/lang/Runnable;

.field private uploader:Lcom/ecareme/pixwe/service/Uploader;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ecareme$pixwe$service$UploadService$STATUS()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$UploadService$STATUS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->values()[Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COLD:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->COOL:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->WARM:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$UploadService$STATUS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$ecareme$pixwe$service$Uploader$STATUS()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$Uploader$STATUS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/service/Uploader$STATUS;->values()[Lcom/ecareme/pixwe/service/Uploader$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->NG:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->OK:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ecareme/pixwe/service/Uploader$STATUS;->XX:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$Uploader$STATUS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    .line 87
    sput-boolean v0, Lcom/ecareme/pixwe/service/UploadService;->isNeedToRefresh:Z

    .line 407
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const-string v0, "UploadService"

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->TAG:Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/service/UploadService;->updateBufferTime:J

    .line 74
    iput-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->note:Landroid/app/Notification;

    .line 79
    iput-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyy_MM_dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->formatter:Ljava/text/Format;

    .line 170
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/service/UploadService$1;-><init>(Lcom/ecareme/pixwe/service/UploadService;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->uBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    .line 408
    iput-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    .line 409
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/service/UploadService$2;-><init>(Lcom/ecareme/pixwe/service/UploadService;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->uploadTask:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    sput-object p0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    return-void
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/service/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->popSync2Cloud()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/service/UploadService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->updateApicfg()V

    return-void
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/service/UploadService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/service/UploadService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->uploadTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/service/UploadService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->delFiles()V

    return-void
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/service/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->popUploadFile()Z

    move-result v0

    return v0
.end method

.method private broadcastMsg(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ecareme.pixwe.service.UploadService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/service/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private delFiles()V
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Lcom/ecareme/pixwe/service/UploadService$4;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/service/UploadService$4;-><init>(Lcom/ecareme/pixwe/service/UploadService;)V

    .line 601
    invoke-virtual {v0}, Lcom/ecareme/pixwe/service/UploadService$4;->start()V

    .line 604
    :cond_0
    return-void
.end method

.method private getCloudChangedAlbums(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 20
    .parameter "ctx"
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    const/4 v13, 0x0

    .line 724
    .local v13, isUpload:Z
    const/4 v12, 0x0

    .line 725
    .local v12, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v14, Lnet/yostore/aws/handler/PixWeDataHandler;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 726
    .local v14, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v14}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 728
    move-object/from16 v0, p2

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->getFolderOrderByChgTimeAsc(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v8

    .line 729
    .local v8, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    const/4 v15, 0x0

    .line 731
    .local v15, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v5, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v16, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 732
    .local v5, apihelper:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    if-eqz v8, :cond_0

    .line 733
    invoke-virtual {v8}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeqTime()J

    move-result-wide v16

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->setStarttime(J)V

    .line 734
    sget-object v16, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v16 .. v17}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->setEndtime(J)V

    .line 738
    :cond_0
    :try_start_0
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    invoke-virtual {v15}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v4

    .line 745
    .local v4, _folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 747
    .local v11, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_3

    .line 760
    .end local v4           #_folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v5           #apihelper:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .end local v8           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .end local v11           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v15           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_2
    return-object v12

    .line 740
    .restart local v5       #apihelper:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .restart local v8       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .restart local v15       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 742
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 749
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #_folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v11       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 750
    .local v3, _folderInfo:Lnet/yostore/aws/api/entity/FolderInfo;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 751
    .local v9, folderId:J
    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->getFolderChgSeqByFolderId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v6

    .line 752
    .local v6, dbFolderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    if-eqz v6, :cond_4

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getChangeSeq()J

    move-result-wide v16

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    .line 754
    :cond_4
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private popSync2Cloud()Z
    .locals 15

    .prologue
    const v14, 0x7f0600b9

    const v10, 0x7f0600b8

    const v13, 0x7f020095

    const/16 v12, 0x10

    const/4 v4, 0x2

    .line 611
    const/4 v9, 0x0

    .line 612
    .local v9, rtn:Z
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->delFiles()V

    .line 615
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->popChangedFolder(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v7

    .line 616
    .local v7, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    if-eqz v7, :cond_2

    .line 617
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 618
    const v0, 0x7f020041

    invoke-virtual {p0, v10}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 619
    const-string v0, "upload_status"

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 621
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->syncLocal2Cloud(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z

    move-result v9

    .line 623
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->popChangedFolder(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v0

    if-nez v0, :cond_1

    .line 624
    sget-object v0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 625
    .local v5, now:J
    new-instance v8, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v8, v0, v1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 626
    .local v8, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v0, v1, v2, v5, v6}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateLocalUpdateTime(Landroid/content/Context;JJ)V

    .line 627
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v10, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateChgSeqUpdate(Landroid/content/Context;JJJ)V

    .line 628
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 629
    invoke-virtual {p0, v14}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v13, v0, v12}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 630
    const-string v0, "upload_status"

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 642
    .end local v5           #now:J
    .end local v7           #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    .end local v8           #pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    :cond_0
    :goto_0
    return v9

    .line 631
    .restart local v7       #fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    :cond_1
    if-nez v9, :cond_0

    .line 632
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 633
    const v0, 0x7f020096

    invoke-virtual {p0, v10}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 634
    const-string v0, "upload_status"

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto :goto_0

    .line 637
    :cond_2
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v0, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 638
    invoke-virtual {p0, v14}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v13, v0, v12}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 639
    const-string v0, "upload_status"

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private popUploadFile()Z
    .locals 12

    .prologue
    const v6, 0x7f0600b6

    const v5, 0x7f020096

    const/4 v4, 0x2

    .line 450
    const/4 v8, 0x0

    .line 451
    .local v8, rtn:Z
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-eq v1, v2, :cond_0

    .line 453
    new-instance v1, Lcom/ecareme/pixwe/service/Uploader;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2, v3}, Lcom/ecareme/pixwe/service/Uploader;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    .line 456
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v10

    .line 457
    .local v10, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    if-eqz v10, :cond_5

    .line 458
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 460
    const v1, 0x7f020041

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 461
    const-string v1, "upload_status"

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 462
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    invoke-virtual {v1, v10}, Lcom/ecareme/pixwe/service/Uploader;->upload(Lnet/yostore/aws/sqlite/entity/UploadQueue;)I

    .line 464
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$Uploader$STATUS()[I

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    iget-object v2, v2, Lcom/ecareme/pixwe/service/Uploader;->status:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/service/Uploader$STATUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 529
    .end local v10           #ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :cond_0
    :goto_0
    return v8

    .line 468
    .restart local v10       #ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :pswitch_0
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getMedia(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v9

    .line 470
    .local v9, smib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 471
    new-instance v0, Lnet/yostore/aws/api/helper/VideoEncHelper;

    invoke-virtual {v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v3

    invoke-virtual {v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/helper/VideoEncHelper;-><init>(Ljava/lang/String;IJJ)V

    .line 472
    .local v0, vhelper:Lnet/yostore/aws/api/helper/VideoEncHelper;
    new-instance v1, Lcom/ecareme/pixwe/service/UploadService$3;

    invoke-direct {v1, p0, v0}, Lcom/ecareme/pixwe/service/UploadService$3;-><init>(Lcom/ecareme/pixwe/service/UploadService;Lnet/yostore/aws/api/helper/VideoEncHelper;)V

    .line 484
    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$3;->start()V

    .line 487
    .end local v0           #vhelper:Lnet/yostore/aws/api/helper/VideoEncHelper;
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->removeUploadQueue(Landroid/content/Context;J)V

    .line 488
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getBatchId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadQueueByBatchId(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v11

    .line 489
    .local v11, ulqList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadQueue;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getMedia(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v7

    .line 491
    .local v7, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 492
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/service/UploadService;->syncLocal2Cloud(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z

    move-result v8

    .line 497
    .end local v7           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v10

    .line 498
    if-nez v10, :cond_0

    .line 499
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->removeAllUploadBatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 500
    const v1, 0x7f020095

    const v2, 0x7f0600b9

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 495
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 506
    .end local v9           #smib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v11           #ulqList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadQueue;>;"
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    iget v2, v2, Lcom/ecareme/pixwe/service/Uploader;->apistatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 507
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 508
    const-string v1, "upload_status"

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 509
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->uploader:Lcom/ecareme/pixwe/service/Uploader;

    iget v1, v1, Lcom/ecareme/pixwe/service/Uploader;->apistatus:I

    goto/16 :goto_0

    .line 520
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 521
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->cooling()V

    .line 522
    const-string v1, "upload_status"

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 526
    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private postDelayTime()J
    .locals 4

    .prologue
    const-wide/32 v2, 0xf4240

    .line 764
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->$SWITCH_TABLE$com$ecareme$pixwe$service$UploadService$STATUS()[I

    move-result-object v0

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-wide v0, v2

    .line 778
    :goto_0
    return-wide v0

    .line 766
    :pswitch_0
    const-wide/16 v0, 0x64

    goto :goto_0

    .line 768
    :pswitch_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 770
    :pswitch_2
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 772
    :pswitch_3
    const-wide/32 v0, 0x186a0

    goto :goto_0

    :pswitch_4
    move-wide v0, v2

    .line 774
    goto :goto_0

    .line 776
    :pswitch_5
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private syncCloud2Local(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 10
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    const v7, 0x7f0600b8

    const v9, 0x7f020096

    const/4 v8, 0x2

    .line 679
    const/4 v3, 0x0

    .line 680
    .local v3, isDownload:Z
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 681
    sget-object v6, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v6, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 682
    const v6, 0x7f020041

    invoke-virtual {p0, v7}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 683
    const-string v6, "upload_status"

    sget-object v7, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 685
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/service/UploadService;->getCloudChangedAlbums(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v2

    .line 686
    .local v2, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    if-eqz v2, :cond_2

    .line 688
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 689
    .local v1, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 703
    .end local v1           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_1
    if-eqz v3, :cond_3

    .line 704
    sget-object v6, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v6, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 705
    const v6, 0x7f020095

    const v7, 0x7f0600b9

    invoke-virtual {p0, v7}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {p0, v6, v7, v8}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 706
    const-string v6, "upload_status"

    sget-object v7, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    .line 717
    .end local v2           #folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_2
    return v3

    .line 691
    .restart local v1       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v2       #folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 692
    .local v0, _folderInfo:Lnet/yostore/aws/api/entity/FolderInfo;
    new-instance v5, Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-direct {v5, p1, p2}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 693
    .local v5, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediasInfoBeanList(J)Ljava/util/List;

    move-result-object v4

    .line 694
    .local v4, mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    if-eqz v4, :cond_0

    .line 695
    invoke-static {p1, v4}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMediaLists(Landroid/content/Context;Ljava/util/List;)V

    .line 696
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 697
    const/4 v3, 0x1

    goto :goto_0

    .line 701
    .end local v0           #_folderInfo:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v1           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v4           #mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v5           #pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 708
    :cond_3
    sget-object v6, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v6, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 709
    const v6, 0x7f0600b5

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v6, v8}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 710
    const-string v6, "upload_status"

    sget-object v7, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto :goto_2

    .line 713
    .end local v2           #folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_4
    sget-object v6, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v6, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 714
    invoke-virtual {p0, v7}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v6, v8}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 715
    const-string v6, "upload_status"

    sget-object v7, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private syncLocal2Cloud(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z
    .locals 10
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "mediaFolderId"

    .prologue
    const/4 v9, 0x3

    .line 649
    invoke-static {p1, p3, p4}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object v0

    .line 650
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    const/4 v2, 0x0

    .line 651
    .local v2, isUpload:Z
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 652
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v9, :cond_1

    .line 673
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 653
    .restart local v1       #i:I
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/ecareme/pixwe/PixWe;->uploadAlbumToXML(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    if-eqz v0, :cond_0

    .line 655
    new-instance v4, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v5, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v4, p1, v5}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 656
    .local v4, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v9, :cond_0

    .line 657
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getXml()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateAlbumInfo(JLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 658
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 659
    const/4 v2, 0x1

    .line 660
    goto :goto_1

    .line 656
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 652
    .end local v3           #j:I
    .end local v4           #pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v1           #i:I
    :cond_4
    sget-object v5, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v5, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 670
    const v5, 0x7f020096

    const v6, 0x7f0600b8

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v6, v7}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 671
    const-string v5, "upload_status"

    sget-object v6, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/ecareme/pixwe/service/UploadService;->broadcastMsg(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private updateApicfg()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 132
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadService;->updateApicfg()V

    .line 165
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->uBinder:Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 95
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->contentIntent:Landroid/app/PendingIntent;

    .line 96
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v3

    iput-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    .line 97
    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->nm:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 98
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/service/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->nm:Landroid/app/NotificationManager;

    .line 100
    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 102
    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecareme/pixwe/service/UploadService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v2

    .line 103
    .local v2, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    if-eqz v2, :cond_1

    .line 104
    sget-object v3, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v3, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    .line 105
    const v3, 0x7f020096

    const v4, 0x7f0600b6

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 113
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.asus.webstorage.id"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, mFilter01:Landroid/content/IntentFilter;
    new-instance v3, Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;-><init>(Lcom/ecareme/pixwe/service/UploadService;)V

    iput-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->mReceiver:Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;

    .line 116
    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->mReceiver:Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/ecareme/pixwe/service/UploadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1           #mFilter01:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 107
    :cond_1
    sget-object v3, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sput-object v3, Lcom/ecareme/pixwe/service/UploadService;->status:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->mReceiver:Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/service/UploadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    invoke-virtual {p0}, Lcom/ecareme/pixwe/service/UploadService;->stopSelf()V

    .line 146
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method public updateNotification(ILjava/lang/CharSequence;I)V
    .locals 5
    .parameter "idIcon"
    .parameter "text"
    .parameter "notificationFlg"

    .prologue
    .line 338
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, title:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->note:Landroid/app/Notification;

    .line 341
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->note:Landroid/app/Notification;

    iput p3, v1, Landroid/app/Notification;->flags:I

    .line 344
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->note:Landroid/app/Notification;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v0, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 347
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService;->nm:Landroid/app/NotificationManager;

    const v2, 0x7f020041

    .line 350
    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService;->note:Landroid/app/Notification;

    .line 347
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 351
    return-void
.end method
