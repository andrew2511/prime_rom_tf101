.class public Lnet/yostore/aws/service/PlayListService;
.super Landroid/app/Service;
.source "PlayListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;,
        Lnet/yostore/aws/service/PlayListService$STATUS;
    }
.end annotation


# static fields
.field public static final MEARSERVICE:Ljava/lang/String; = "net.yostore.aws.service.PlayListService"

.field private static final NOTIFY_ID:I = 0x7f030002

.field private static final TAG:Ljava/lang/String; = "PlayListService"

.field public static storage:Ljava/lang/String;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private isDownloading:Z

.field private isShowMsg:Z

.field private isUpdating:Z

.field private final mBinder:Lnet/yostore/aws/service/PlayListServiceInterface$Stub;

.field private mBrocastRecv:Landroid/content/BroadcastReceiver;

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private msg:I

.field private nm:Landroid/app/NotificationManager;

.field private search:Lnet/yostore/aws/handler/entity/Search;

.field private sid:Ljava/lang/String;

.field status:Lnet/yostore/aws/service/PlayListService$STATUS;

.field private tryPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/MEar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/service/PlayListService;->storage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 79
    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    .line 80
    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->sid:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 82
    iput-boolean v1, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isShowMsg:Z

    .line 85
    iput-boolean v1, p0, Lnet/yostore/aws/service/PlayListService;->isUpdating:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->handler:Landroid/os/Handler;

    .line 88
    sget-object v0, Lnet/yostore/aws/service/PlayListService$STATUS;->COMPLETED:Lnet/yostore/aws/service/PlayListService$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/service/PlayListService;->msg:I

    .line 635
    new-instance v0, Lnet/yostore/aws/service/PlayListService$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/PlayListService$1;-><init>(Lnet/yostore/aws/service/PlayListService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mBinder:Lnet/yostore/aws/service/PlayListServiceInterface$Stub;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/PlayListService;->copyPlistSongsToDlQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lnet/yostore/aws/service/PlayListService;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/service/PlayListService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayListService;->isShowMsg:Z

    return-void
.end method

.method static synthetic access$12(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListService;->statDoneAll()V

    return-void
.end method

.method static synthetic access$13(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListService;->statMoreToDo()V

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/service/PlayListService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    return-void
.end method

.method static synthetic access$15(Lnet/yostore/aws/service/PlayListService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->sid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/PlayListService;->getDataSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lnet/yostore/aws/service/PlayListService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lnet/yostore/aws/service/PlayListService;->msg:I

    return-void
.end method

.method static synthetic access$18(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListService;->statApPaused()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 835
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/PlayListService;->broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/service/PlayListService;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isUpdating:Z

    return v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/service/PlayListService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayListService;->isUpdating:Z

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/service/PlayListService;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/PlayListService;->compareAndUpdatePlayList(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/service/PlayListService;Lnet/yostore/aws/sqlite/entity/PlayList;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/PlayListService;->compareAndUpdateSongs(Lnet/yostore/aws/sqlite/entity/PlayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListService;->statUserResume()V

    return-void
.end method

.method static synthetic access$8(Lnet/yostore/aws/service/PlayListService;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lnet/yostore/aws/service/PlayListService;->msg:I

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/service/PlayListService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "val"

    .prologue
    .line 836
    const-string v1, "PlayListService"

    const-string v2, "broadcastMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.yostore.aws.service.PlayListService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayListService;->sendBroadcast(Landroid/content/Intent;)V

    .line 841
    return-void
.end method

.method private compareAndUpdatePlayList(J)Z
    .locals 12
    .parameter "now"

    .prologue
    .line 307
    const-string v8, "PlayListService"

    const-string v9, "compareAndUpdatePlayList"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    iget-object v9, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v9, v9, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v8, v9}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getAllPlayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 311
    .local v3, bydb:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/PlayListService;->folderBrowseToPlaylist(J)Ljava/util/List;

    move-result-object v2

    .line 312
    .local v2, byapi:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v7, update:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v6, lastmod:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 319
    .local v5, dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 341
    .end local v5           #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_1
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v8, v7}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->updatePlayLists(Landroid/content/Context;Ljava/util/List;)V

    .line 342
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v8, v2}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->insertPlayLists(Landroid/content/Context;Ljava/util/List;)V

    .line 343
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v8, v3}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->delPlayLists(Landroid/content/Context;Ljava/util/List;)V

    .line 344
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v8, v6}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->updateLastMods(Landroid/content/Context;Ljava/util/List;)V

    .line 346
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_1
    return v8

    .line 320
    .restart local v5       #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, apiitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 322
    .local v4, dbitm:Lnet/yostore/aws/sqlite/entity/PlayList;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 326
    .local v0, apiitm:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v8, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    iget-object v9, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 327
    iget-object v8, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    iget-object v9, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 328
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 330
    :cond_5
    iget-wide v8, v4, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    iget-wide v10, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 331
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 346
    .end local v0           #apiitm:Lnet/yostore/aws/sqlite/entity/PlayList;
    .end local v1           #apiitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v4           #dbitm:Lnet/yostore/aws/sqlite/entity/PlayList;
    .end local v5           #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_6
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private compareAndUpdateSongs(Lnet/yostore/aws/sqlite/entity/PlayList;)Z
    .locals 9
    .parameter "pl"

    .prologue
    .line 350
    const-string v7, "PlayListService"

    const-string v8, "compareAndUpdateSongs"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    iget-object v8, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-static {v7, v8}, Lnet/yostore/aws/sqlite/helper/SongHelper;->getSongListByPlist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 355
    .local v3, bydb:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    iget-object v7, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-direct {p0, v7}, Lnet/yostore/aws/service/PlayListService;->folderBrowseToSonglist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 356
    .local v2, byapi:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v6, update:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 359
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 362
    .local v5, dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 392
    .end local v5           #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :cond_1
    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v7, v6}, Lnet/yostore/aws/sqlite/helper/SongHelper;->updateSongLists(Landroid/content/Context;Ljava/util/List;)V

    .line 393
    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v7, v2}, Lnet/yostore/aws/sqlite/helper/SongHelper;->insertSongLists(Landroid/content/Context;Ljava/util/List;)V

    .line 394
    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v7, v3}, Lnet/yostore/aws/sqlite/helper/SongHelper;->delSongLists(Landroid/content/Context;Ljava/util/List;)V

    .line 396
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    return v7

    .line 363
    .restart local v5       #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    .local v1, apiitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/Song;

    .line 365
    .local v4, dbitm:Lnet/yostore/aws/sqlite/entity/Song;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/Song;

    .line 367
    .local v0, apiitm:Lnet/yostore/aws/sqlite/entity/Song;
    iget-object v7, v4, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    iget-object v8, v0, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 383
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 396
    .end local v0           #apiitm:Lnet/yostore/aws/sqlite/entity/Song;
    .end local v1           #apiitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    .end local v4           #dbitm:Lnet/yostore/aws/sqlite/entity/Song;
    .end local v5           #dbitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private copyPlistSongsToDlQueue(Ljava/lang/String;)V
    .locals 10
    .parameter "plistid"

    .prologue
    .line 165
    const-string v0, "PlayListService"

    const-string v1, "copyPlistSongsToDlQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, dllist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/yostore/aws/sqlite/helper/SongHelper;->getSongListByPlist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 169
    .local v8, mp3list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 170
    .local v9, mp3s:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    invoke-static {v0, v6}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->insertList(Landroid/content/Context;Ljava/util/List;)V

    .line 182
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/yostore/aws/sqlite/entity/Song;

    .line 172
    .local v7, mp3:Lnet/yostore/aws/sqlite/entity/Song;
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue;

    .line 173
    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    .line 174
    iget-object v2, v7, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 175
    iget-object v3, v7, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    .line 176
    sget-object v4, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->QUEUED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    .line 177
    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/sqlite/entity/DlQueue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)V

    .line 172
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private folderBrowseToPlaylist(J)Ljava/util/List;
    .locals 2
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v0, v0, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lnet/yostore/aws/service/PlayListService;->folderBrowseToPlaylist(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private folderBrowseToPlaylist(Ljava/lang/String;J)Ljava/util/List;
    .locals 17
    .parameter "parent"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/PlayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    const-string v2, "PlayListService"

    const-string v3, "folderBrowseToPlaylist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v10, byapi:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    new-instance v9, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 273
    .local v9, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v15, 0x0

    .line 275
    .local v15, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v2, v0

    invoke-virtual {v9, v2}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v15, v0

    .line 276
    if-eqz v15, :cond_0

    .line 277
    invoke-virtual {v15}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v12

    .line 278
    .local v12, finfo:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    if-eqz v12, :cond_0

    .line 279
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 280
    .local v14, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    .end local v12           #finfo:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v14           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_0
    :goto_1
    return-object v10

    .line 281
    .restart local v12       #finfo:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v14       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 283
    .local v13, foi:Lnet/yostore/aws/api/entity/FolderInfo;
    new-instance v2, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v3, v0

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 285
    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v5

    .line 287
    sget-object v6, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-wide/from16 v7, p2

    .line 288
    invoke-direct/range {v2 .. v8}, Lnet/yostore/aws/sqlite/entity/PlayList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;J)V

    .line 283
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v12           #finfo:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v13           #foi:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v14           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 297
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "PlayListService"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private folderBrowseToSonglist(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "PlayListService"

    const-string v1, "folderBrowseToSonglist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListService;->getSearchString()Ljava/lang/String;

    .line 228
    const-string v0, "1"

    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/ecareme/mear/Mear;->pageSize:I

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lnet/yostore/aws/service/PlayListService;->searchFileDir(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v8

    .line 263
    .local v8, byapi:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    return-object v8
.end method

.method private getDataSource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "strPath"
    .parameter "mp3ID"

    .prologue
    .line 497
    const-string v14, "PlayListService"

    const-string v15, "getDataSource"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lnet/yostore/aws/service/PlayListService;->storage:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v11, myTempFile:Ljava/io/File;
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 507
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .local v12, myURL:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 516
    .local v3, conn:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 518
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 519
    .local v9, is:Ljava/io/InputStream;
    if-nez v9, :cond_0

    .line 520
    const v14, 0x7f0600a2

    .line 585
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v12           #myURL:Ljava/net/URL;
    :goto_0
    return v14

    .line 508
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 509
    .local v5, e1:Ljava/net/MalformedURLException;
    const v14, 0x7f0600a2

    goto :goto_0

    .line 523
    .end local v5           #e1:Ljava/net/MalformedURLException;
    .restart local v12       #myURL:Ljava/net/URL;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 524
    .local v8, ie:Ljava/io/IOException;
    const v14, 0x7f0600a2

    goto :goto_0

    .line 531
    .end local v8           #ie:Ljava/io/IOException;
    .restart local v3       #conn:Ljava/net/URLConnection;
    .restart local v9       #is:Ljava/io/InputStream;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v7, v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 537
    .local v7, fos:Ljava/io/FileOutputStream;
    const/16 v14, 0x80

    new-array v2, v14, [B

    .line 539
    .local v2, buf:[B
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 540
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 560
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 561
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    move v14, v0

    if-nez v14, :cond_3

    .line 571
    new-instance v10, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lnet/yostore/aws/service/PlayListService;->storage:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".mp3"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v10, myMp3File:Ljava/io/File;
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 576
    const/4 v14, -0x1

    goto :goto_0

    .line 533
    .end local v2           #buf:[B
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #myMp3File:Ljava/io/File;
    :catch_2
    move-exception v14

    move-object v4, v14

    .line 534
    .local v4, e:Ljava/io/FileNotFoundException;
    const v14, 0x7f0600a3

    goto :goto_0

    .line 543
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #buf:[B
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v13, 0x0

    .line 545
    .local v13, numread:I
    :try_start_4
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    .line 549
    if-lez v13, :cond_1

    .line 553
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v7, v2, v14, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 554
    :catch_3
    move-exception v4

    .line 555
    .local v4, e:Ljava/io/IOException;
    const v14, 0x7f0600a3

    goto :goto_0

    .line 546
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 547
    .local v5, e1:Ljava/io/IOException;
    const v14, 0x7f0600a3

    goto :goto_0

    .line 562
    .end local v5           #e1:Ljava/io/IOException;
    .end local v13           #numread:I
    :catch_5
    move-exception v14

    move-object v6, v14

    .line 563
    .local v6, ex:Ljava/lang/Exception;
    const-string v14, "PlayListService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "error: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    invoke-direct/range {p0 .. p0}, Lnet/yostore/aws/service/PlayListService;->statApPaused()V

    .line 565
    const v14, 0x7f0600a2

    goto/16 :goto_0

    .line 579
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lnet/yostore/aws/service/PlayListService;->statUserPaused()V

    .line 580
    const v14, 0x7f0600a0

    goto/16 :goto_0

    .line 584
    .end local v2           #buf:[B
    .end local v3           #conn:Ljava/net/URLConnection;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v12           #myURL:Ljava/net/URL;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lnet/yostore/aws/service/PlayListService;->statApPaused()V

    .line 585
    const v14, 0x7f0600a2

    goto/16 :goto_0
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lnet/yostore/aws/handler/entity/Search;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Search;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 216
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setName(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setMark(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setChoiceall(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setSrhopt(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private statApPaused()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "PlayListService"

    const-string v1, "statApPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 612
    sget-object v0, Lnet/yostore/aws/service/PlayListService$STATUS;->PAUSED:Lnet/yostore/aws/service/PlayListService$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    .line 613
    return-void
.end method

.method private statDoneAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    const-string v0, "PlayListService"

    const-string v1, "statDoneAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 618
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 619
    sget-object v0, Lnet/yostore/aws/service/PlayListService$STATUS;->COMPLETED:Lnet/yostore/aws/service/PlayListService$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    .line 620
    const v0, 0x7f02004d

    const v1, 0x7f0600a4

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayListService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 621
    return-void
.end method

.method private statMoreToDo()V
    .locals 2

    .prologue
    .line 623
    const-string v0, "PlayListService"

    const-string v1, "statMoreToDo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 626
    sget-object v0, Lnet/yostore/aws/service/PlayListService$STATUS;->DOWNLOADING:Lnet/yostore/aws/service/PlayListService$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    .line 627
    const v0, 0x7f020059

    const v1, 0x7f0600a5

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayListService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 628
    return-void
.end method

.method private statUserPaused()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "PlayListService"

    const-string v1, "statUserPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    .line 597
    sget-object v0, Lnet/yostore/aws/service/PlayListService$STATUS;->PAUSED:Lnet/yostore/aws/service/PlayListService$STATUS;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    .line 598
    return-void
.end method

.method private statUserResume()V
    .locals 2

    .prologue
    .line 601
    const-string v0, "PlayListService"

    const-string v1, "statUserResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 605
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 157
    const-string v0, "PlayListService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mBinder:Lnet/yostore/aws/service/PlayListServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "PlayListService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;-><init>(Lnet/yostore/aws/service/PlayListService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    .line 128
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayListService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayListService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mPrefs:Landroid/content/SharedPreferences;

    .line 130
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 131
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->ctx:Landroid/content/Context;

    .line 132
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->sid:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/io/File;

    sget-object v1, Lnet/yostore/aws/service/PlayListService;->storage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 135
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayListService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    .line 138
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListService;->resumeDownload()V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 145
    const-string v0, "PlayListService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayListService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayListService;->stopSelf()V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pauseDownload()V
    .locals 4

    .prologue
    .line 482
    const-string v0, "PlayListService"

    const-string v1, "pauseDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->isDownloading:Z

    if-nez v0, :cond_0

    .line 492
    const v0, 0x7f02004e

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 493
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 486
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/yostore/aws/service/PlayListService$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayListService$3;-><init>(Lnet/yostore/aws/service/PlayListService;)V

    .line 490
    const-wide/16 v2, 0x1f4

    .line 486
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public resumeDownload()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "PlayListService"

    const-string v1, "resumeDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayListService;->tryPaused:Z

    .line 416
    new-instance v0, Lnet/yostore/aws/service/PlayListService$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/PlayListService$2;-><init>(Lnet/yostore/aws/service/PlayListService;)V

    .line 477
    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayListService$2;->start()V

    .line 479
    return-void
.end method

.method public searchFileDir(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/util/List;
    .locals 14
    .parameter "isFullTextSearch"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "folderid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v13, 0x0

    .line 187
    .local v13, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v9, byapi:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v5, 0x0

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lnet/yostore/aws/view/navigate/LibHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v13

    .line 189
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v10

    .line 191
    .local v10, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 193
    .local v12, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    .end local v10           #elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    .end local v12           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    return-object v9

    .line 194
    .restart local v10       #elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    .restart local v12       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 195
    .local v11, foi:Lnet/yostore/aws/api/entity/EntryInfo;
    new-instance v8, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v8}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 196
    .local v8, _mp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 198
    new-instance v0, Lnet/yostore/aws/sqlite/entity/Song;

    .line 199
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 200
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Item;->getShortcutId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v5

    .line 204
    sget-object v6, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Online:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)V

    .line 198
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateNotification(ILjava/lang/CharSequence;)V
    .locals 7
    .parameter "idIcon"
    .parameter "text"

    .prologue
    const v6, 0x7f030002

    const/4 v5, 0x0

    .line 789
    const-string v3, "PlayListService"

    const-string v4, "updateNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lnet/yostore/aws/service/PlayListService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, title:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 796
    .local v1, note:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lnet/yostore/aws/view/present/DlQueueActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 795
    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 800
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, v2, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 803
    iget-boolean v3, p0, Lnet/yostore/aws/service/PlayListService;->isShowMsg:Z

    if-eqz v3, :cond_1

    .line 804
    iget-object v3, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v3, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 821
    iget-object v3, p0, Lnet/yostore/aws/service/PlayListService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
