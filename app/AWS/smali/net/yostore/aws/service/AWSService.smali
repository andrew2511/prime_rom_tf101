.class public Lnet/yostore/aws/service/AWSService;
.super Landroid/app/Service;
.source "AWSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/AWSService$APIBroadcastRecv;,
        Lnet/yostore/aws/service/AWSService$StartUploadTask;,
        Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFY_ID:I = 0x7f0200a1

.field private static final TAG:Ljava/lang/String; = "AWSService"

.field public static final UPLOADPERCENTUPDATE:Ljava/lang/String; = "net.yostore.aws.service.UploadPercentUpdate"

.field public static final UPLOADSERVICE:Ljava/lang/String; = "net.yostore.aws.service.UploadService"

.field public static final broadcastUploadFileIdKey:Ljava/lang/String; = "FileId"

.field public static final broadcastUploadFolderKey:Ljava/lang/String; = "UploadFolder"

.field public static final broadcastUploadRowKey:Ljava/lang/String; = "UploadRow"

.field public static isSpaceEnough:Z

.field public static isUploading:Z

.field public static uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;


# instance fields
.field private final MYCOLLECTION_ROOT_ID:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private isUpdateApiCfg:Z

.field private final mBinder:Lnet/yostore/aws/service/AWSServiceInterface$Stub;

.field private mBrocastRecv:Landroid/content/BroadcastReceiver;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;

.field private nm:Landroid/app/NotificationManager;

.field private toRestart:Z

.field private uploadIdx:I

.field private uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

.field private waitingToUploadNew:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lnet/yostore/aws/service/AWSService;->isSpaceEnough:Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    iput-boolean v2, p0, Lnet/yostore/aws/service/AWSService;->isUpdateApiCfg:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 56
    iput-object p0, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    .line 58
    iput v2, p0, Lnet/yostore/aws/service/AWSService;->uploadIdx:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/service/AWSService;->MYCOLLECTION_ROOT_ID:J

    .line 62
    iput-boolean v2, p0, Lnet/yostore/aws/service/AWSService;->waitingToUploadNew:Z

    .line 72
    iput-boolean v2, p0, Lnet/yostore/aws/service/AWSService;->toRestart:Z

    .line 384
    new-instance v0, Lnet/yostore/aws/service/AWSService$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/AWSService$1;-><init>(Lnet/yostore/aws/service/AWSService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->mBinder:Lnet/yostore/aws/service/AWSServiceInterface$Stub;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/service/AWSService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->restartUploadTask()V

    return-void
.end method

.method static synthetic access$11(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/AWSService;->nextUpload(Lnet/yostore/aws/api/ApiConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/service/AWSService;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct/range {p0 .. p6}, Lnet/yostore/aws/service/AWSService;->broadcastUploadMsg(JJJ)V

    return-void
.end method

.method static synthetic access$13(Lnet/yostore/aws/service/AWSService;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->toRestart:Z

    return v0
.end method

.method static synthetic access$14(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/service/AWSService$StartUploadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    return-void
.end method

.method static synthetic access$15(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->queueEmpty()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/service/AWSService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lnet/yostore/aws/service/AWSService;->isUpdateApiCfg:Z

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->updateApicfg()V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/service/AWSService;JLjava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/yostore/aws/service/AWSService;->createfolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/service/AWSService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->getmysyncfolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->startUploadTask()V

    return-void
.end method

.method static synthetic access$8(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->pauseUploadTask()V

    return-void
.end method

.method static synthetic access$9(Lnet/yostore/aws/service/AWSService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private broadcastUploadMsg(JJJ)V
    .locals 3
    .parameter "uQrowid"
    .parameter "uploadFolder"
    .parameter "realFileId"

    .prologue
    .line 375
    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.yostore.aws.service.UploadService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, mIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "UploadRow"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 378
    const-string v2, "UploadFolder"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    const-string v2, "FileId"

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 380
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/AWSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method private createfolder(JLjava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "pfid"
    .parameter "fname"
    .parameter "attr"

    .prologue
    .line 136
    const-wide/32 v2, -0x1869f

    .line 137
    .local v2, fid:J
    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 138
    new-instance v4, Lnet/yostore/aws/model/FindPropfindModel;

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/model/FindPropfindModel;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 139
    .local v4, findpropfind:Lnet/yostore/aws/model/FindPropfindModel;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "system.folder"

    invoke-virtual {v4, v5, p3, v6}, Lnet/yostore/aws/model/FindPropfindModel;->propfind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, _fid:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 141
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 147
    .end local v0           #_fid:Ljava/lang/String;
    .end local v4           #findpropfind:Lnet/yostore/aws/model/FindPropfindModel;
    :cond_0
    :goto_0
    return-wide v2

    .line 143
    .restart local v0       #_fid:Ljava/lang/String;
    .restart local v4       #findpropfind:Lnet/yostore/aws/model/FindPropfindModel;
    :cond_1
    new-instance v1, Lnet/yostore/aws/model/CreateFolderModel;

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v5, v6}, Lnet/yostore/aws/model/CreateFolderModel;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 144
    .local v1, createfoldermodel:Lnet/yostore/aws/model/CreateFolderModel;
    invoke-virtual {v1, p1, p2, p3, p4}, Lnet/yostore/aws/model/CreateFolderModel;->create(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private getmysyncfolder()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 160
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v2, v3, :cond_3

    .line 162
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 164
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 166
    :cond_0
    const-wide/16 v2, -0x5

    const-string v4, "MySyncFolder"

    const-string v5, ""

    invoke-direct {p0, v2, v3, v4, v5}, Lnet/yostore/aws/service/AWSService;->createfolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 167
    .local v0, _fid:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 168
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 171
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 179
    .end local v0           #_fid:J
    :goto_0
    return-object v2

    .line 174
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initApiCfg()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->isUpdateApiCfg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->updateApicfg()V

    .line 124
    :cond_1
    return-void
.end method

.method private initUpload(ILjava/lang/String;)J
    .locals 5
    .parameter "tp"
    .parameter "postFolder"

    .prologue
    .line 190
    const-wide/16 v1, -0x3e7

    .line 191
    .local v1, fid:J
    if-nez p1, :cond_2

    .line 192
    const-wide/16 v1, 0x0

    .line 202
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 204
    const-string v3, ""

    invoke-direct {p0, v1, v2, p2, v3}, Lnet/yostore/aws/service/AWSService;->createfolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 207
    :cond_1
    return-wide v1

    .line 195
    :cond_2
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->getmysyncfolder()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, ffid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method private itemUpload(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 22
    .parameter "apicfg"
    .parameter "ui"

    .prologue
    .line 336
    const/16 v20, 0x1

    .line 338
    .local v20, rtnDone:Z
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 340
    const-wide/16 v9, -0x3e7

    .line 341
    .local v9, uploadFileId:J
    new-instance v21, Lnet/yostore/aws/model/UploadModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/model/UploadModel;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 344
    .local v21, uploadModel:Lnet/yostore/aws/model/UploadModel;
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/model/UploadModel;->upload(Lnet/yostore/aws/sqlite/entity/UploadItem;)J

    move-result-wide v9

    .line 347
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    move-wide v5, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    move-wide v7, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lnet/yostore/aws/service/AWSService;->broadcastUploadMsg(JJJ)V

    .line 348
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-ltz v4, :cond_0

    .line 350
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    move-wide v5, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    move-wide v7, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lnet/yostore/aws/service/AWSService;->broadcastUploadMsg(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    const/4 v4, 0x0

    sput-object v4, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 371
    .end local v9           #uploadFileId:J
    .end local v21           #uploadModel:Lnet/yostore/aws/model/UploadModel;
    :cond_1
    :goto_0
    return v20

    .line 353
    .restart local v9       #uploadFileId:J
    .restart local v21       #uploadModel:Lnet/yostore/aws/model/UploadModel;
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 355
    .local v18, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    move-wide v12, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    move-wide v14, v0

    const-wide/16 v16, -0x3e7

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lnet/yostore/aws/service/AWSService;->broadcastUploadMsg(JJJ)V

    .line 356
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v19, m_broadcast_intent:Landroid/content/Intent;
    const-string v4, "net.yostore.aws.service.UploadPercentUpdate"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v4, "percent"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v4, "upid"

    move-object/from16 v0, p2

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    move-wide v5, v0

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    goto :goto_0

    .line 363
    .end local v18           #e:Lnet/yostore/aws/api/exception/APIException;
    .end local v19           #m_broadcast_intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    .line 364
    const/4 v5, 0x0

    sput-object v5, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 365
    throw v4
.end method

.method private nextUpload(Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 317
    .local v1, isQueueEnpty:Z
    :try_start_0
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    iget-object v4, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getTopUploadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-result-object v2

    .line 318
    .local v2, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    if-eqz v2, :cond_0

    .line 319
    sput-object v2, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 320
    invoke-direct {p0, p1, v2}, Lnet/yostore/aws/service/AWSService;->itemUpload(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;)Z

    .line 331
    .end local v2           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :goto_0
    return v1

    .line 322
    .restart local v2       #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 v1, 0x1

    goto :goto_0

    .line 326
    .end local v2           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 328
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AWSService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private pauseUploadTask()V
    .locals 4

    .prologue
    .line 223
    sget-boolean v0, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    invoke-virtual {v0}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    sget-object v1, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 231
    :cond_0
    return-void
.end method

.method private queueEmpty()V
    .locals 9

    .prologue
    const v8, 0x7f0200a1

    const/4 v7, 0x0

    .line 552
    sput-boolean v7, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    .line 553
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 554
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    invoke-virtual {v3}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->cancel(Z)Z

    .line 556
    :cond_0
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lnet/yostore/aws/service/AWSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 557
    .local v1, manager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v8, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 558
    .local v2, note:Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 559
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    const-class v6, Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 561
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    const v4, 0x7f060012

    invoke-virtual {p0, v4}, Lnet/yostore/aws/service/AWSService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06004c

    invoke-virtual {p0, v5}, Lnet/yostore/aws/service/AWSService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 562
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 563
    return-void
.end method

.method private restartUploadTask()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->toRestart:Z

    .line 235
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSService;->pauseUploadTask()V

    .line 240
    return-void
.end method

.method private startUploadTask()V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->toRestart:Z

    .line 212
    sget-boolean v0, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lnet/yostore/aws/service/AWSService;->isSpaceEnough:Z

    .line 215
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSService;->acquireWakeLock()V

    .line 216
    const v0, 0x7f020062

    const-string v1, ""

    const-class v2, Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-virtual {p0, v0, v1, v2}, Lnet/yostore/aws/service/AWSService;->updateNotification(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    .line 217
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 218
    new-instance v0, Lnet/yostore/aws/service/AWSService$StartUploadTask;

    iget-object v1, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/service/AWSService$StartUploadTask;-><init>(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/service/AWSService$StartUploadTask;

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->uploadTasker:Lnet/yostore/aws/service/AWSService$StartUploadTask;

    .line 220
    :cond_0
    return-void
.end method

.method private updateApicfg()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 128
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->isUpdateApiCfg:Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService;->isUpdateApiCfg:Z

    goto :goto_0
.end method

.method private uploadPause()V
    .locals 9

    .prologue
    const v8, 0x7f0200a1

    const/4 v7, 0x0

    .line 567
    sput-boolean v7, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    .line 568
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 569
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lnet/yostore/aws/service/AWSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 570
    .local v1, manager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v8, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 572
    .local v2, note:Landroid/app/Notification;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    const-class v6, Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 574
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    const v4, 0x7f060012

    invoke-virtual {p0, v4}, Lnet/yostore/aws/service/AWSService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06004c

    invoke-virtual {p0, v5}, Lnet/yostore/aws/service/AWSService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 575
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 605
    const-string v1, "acquireWakeLock"

    const-string v2, "Acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/AWSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 607
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 608
    iget-object v1, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 611
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 154
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->mBinder:Lnet/yostore/aws/service/AWSServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    iput-object p0, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    .line 79
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lnet/yostore/aws/service/AWSService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v2, Lnet/yostore/aws/service/AWSService$APIBroadcastRecv;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/AWSService$APIBroadcastRecv;-><init>(Lnet/yostore/aws/service/AWSService;)V

    iput-object v2, p0, Lnet/yostore/aws/service/AWSService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    .line 82
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lnet/yostore/aws/service/AWSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 84
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lnet/yostore/aws/service/AWSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    .line 89
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.asus.webstorage.id"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, mFilter01:Landroid/content/IntentFilter;
    new-instance v2, Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;-><init>(Lnet/yostore/aws/service/AWSService;)V

    iput-object v2, p0, Lnet/yostore/aws/service/AWSService;->mReceiver:Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;

    .line 92
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService;->mReceiver:Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;

    invoke-virtual {p0, v2, v1}, Lnet/yostore/aws/service/AWSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1           #mFilter01:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/AWSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->mReceiver:Lnet/yostore/aws/service/AWSService$mMyCloudReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/AWSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    invoke-virtual {p0}, Lnet/yostore/aws/service/AWSService;->stopSelf()V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/service/AWSService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 621
    :cond_0
    return-void
.end method

.method public updateNotification(ILjava/lang/CharSequence;Ljava/lang/Class;)V
    .locals 7
    .parameter "idIcon"
    .parameter "text"
    .parameter "starActivity"

    .prologue
    const/4 v6, 0x0

    .line 507
    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lnet/yostore/aws/service/AWSService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, title:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 510
    .local v1, note:Landroid/app/Notification;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    .line 511
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 514
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 517
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService;->nm:Landroid/app/NotificationManager;

    const v4, 0x7f0200a1

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 533
    return-void
.end method
