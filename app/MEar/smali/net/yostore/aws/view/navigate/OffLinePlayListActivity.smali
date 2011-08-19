.class public Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;
.super Landroid/app/ListActivity;
.source "OffLinePlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;,
        Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OffLinePlayListActivity"

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field public static nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private btn_next:Landroid/widget/ImageButton;

.field private btn_play:Landroid/widget/ImageButton;

.field private btn_playlist:Landroid/widget/ImageButton;

.field private btn_pre:Landroid/widget/ImageButton;

.field private btn_repeat:Landroid/widget/ImageButton;

.field private btn_shuffle:Landroid/widget/ImageButton;

.field private clickPosition:I

.field private ctx:Landroid/content/Context;

.field private errmsg:Ljava/lang/String;

.field private errrun:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private mBrocastRecv:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private naviStat:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

.field private playingName:Landroid/widget/TextView;

.field private progressHandler:Landroid/os/Handler;

.field private progressStart:Ljava/lang/Runnable;

.field private root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

.field private showOfflineSettingAlert:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 59
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    .line 60
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 61
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_next:Landroid/widget/ImageButton;

    .line 62
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 63
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 64
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 69
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->PlayList:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 73
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->handler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->progressHandler:Landroid/os/Handler;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->errmsg:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->clickPosition:I

    .line 80
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->errrun:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->progressStart:Ljava/lang/Runnable;

    .line 462
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->showOfflineSettingAlert:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 776
    const/4 v2, 0x0

    .line 777
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 779
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 781
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 789
    :cond_1
    :goto_0
    return v2

    .line 781
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 782
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 783
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 784
    const/4 v2, 0x1

    .line 786
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->showOfflineSettingAlert:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->errrun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->folderRemove(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fileRemove(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$17(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setShuffle(I)V

    return-void
.end method

.method static synthetic access$18(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setRepeat(I)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getCurrentSong()V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changePlayBtn()V

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviStat:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-void
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAllToPlay()V
    .locals 8

    .prologue
    .line 382
    :try_start_0
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->stop()V

    .line 383
    const-wide/16 v4, -0x3e7

    .line 384
    .local v4, toPlayfolder:J
    sget-object v6, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->isTop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    sget-wide v4, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 389
    :goto_0
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6, v4, v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z

    .line 390
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->clearPlaylist()V

    .line 391
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v6, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 400
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    iget v7, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->clickPosition:I

    invoke-interface {v6, v7}, Lnet/yostore/aws/service/PlayerServiceInterface;->playFile(I)V

    .line 413
    .end local v2           #i:I
    .end local v4           #toPlayfolder:J
    :goto_2
    return-void

    .line 387
    .restart local v4       #toPlayfolder:J
    :cond_0
    sget-object v6, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getPathId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 392
    .restart local v2       #i:I
    :cond_1
    sget-object v6, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 394
    .local v3, tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 395
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 396
    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 398
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    .end local v2           #i:I
    .end local v3           #tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    .end local v4           #toPlayfolder:J
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 405
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 407
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 410
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addToPlay()V
    .locals 4

    .prologue
    .line 419
    :try_start_0
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 420
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 421
    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 422
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 427
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 432
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private btn_play_control()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$9;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$9;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$10;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$11;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    return-void
.end method

.method private changePlayBtn()V
    .locals 2

    .prologue
    const v1, 0x7f020036

    .line 758
    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    packed-switch v0, :pswitch_data_0

    .line 772
    :goto_0
    return-void

    .line 761
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 764
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 767
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeRepeatMode()V
    .locals 3

    .prologue
    .line 698
    sget v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    packed-switch v1, :pswitch_data_0

    .line 727
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 730
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setRepeatPlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    :cond_0
    :goto_1
    return-void

    .line 700
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 701
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$14;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$14;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 708
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 709
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$15;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$15;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 716
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 717
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$16;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$16;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 740
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeShuffleMode()V
    .locals 3

    .prologue
    .line 658
    sget v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 678
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 681
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setShufflePlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    :cond_0
    :goto_1
    return-void

    .line 660
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 661
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$12;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$12;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 669
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$13;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$13;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 688
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 691
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fileRemove(Ljava/lang/String;)V
    .locals 5
    .parameter "folderId"

    .prologue
    .line 367
    new-instance v2, Lnet/yostore/aws/api/helper/FileRemoveHelper;

    invoke-direct {v2, p1}, Lnet/yostore/aws/api/helper/FileRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, helper:Lnet/yostore/aws/api/helper/FileRemoveHelper;
    const/4 v3, 0x0

    .line 371
    .local v3, response:Lnet/yostore/aws/api/entity/FileRemoveResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/FileRemoveHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/FileRemoveResponse;

    move-object v3, v0

    .line 372
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    sget-object v4, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 375
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private folderRemove(Ljava/lang/String;)V
    .locals 5
    .parameter "folderId"

    .prologue
    .line 354
    new-instance v2, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    invoke-direct {v2, p1}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 355
    .local v2, helper:Lnet/yostore/aws/api/helper/FolderRemoveHelper;
    const/4 v3, 0x0

    .line 358
    .local v3, response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    move-object v3, v0

    .line 359
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 360
    sget-object v4, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 362
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private getCurrentSong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Lcom/ecareme/mear/Mear;->getCurrentSong()V

    .line 589
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->playingName:Landroid/widget/TextView;

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v0

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 592
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->lv:Landroid/widget/ListView;

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 595
    :cond_0
    return-void

    .line 589
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getPlayMode()V
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 580
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changePlayBtn()V

    .line 581
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changeShuffleMode()V

    .line 582
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changeRepeatMode()V

    .line 584
    :cond_0
    return-void
.end method

.method private initHeader()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->lv:Landroid/widget/ListView;

    .line 201
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 202
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$4;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    return-void
.end method

.method private initNavigate()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method private initPlayControl()V
    .locals 2

    .prologue
    .line 481
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play:Landroid/widget/ImageButton;

    .line 482
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 483
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_next:Landroid/widget/ImageButton;

    .line 484
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 485
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 486
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 487
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->playingName:Landroid/widget/TextView;

    .line 491
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$8;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$8;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "MEAR_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mFilter:Landroid/content/IntentFilter;

    .line 497
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;

    .line 498
    return-void
.end method

.method private naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V
    .locals 2
    .parameter "na"

    .prologue
    .line 233
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->progressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->progressStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviStat:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    .line 235
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    .line 277
    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->start()V

    .line 278
    return-void
.end method

.method private setRepeat(I)V
    .locals 0
    .parameter "_repeat"

    .prologue
    .line 752
    sput p1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 753
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changeRepeatMode()V

    .line 754
    return-void
.end method

.method private setShuffle(I)V
    .locals 0
    .parameter "_shuffle"

    .prologue
    .line 747
    sput p1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 748
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changeShuffleMode()V

    .line 749
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setContentView(I)V

    .line 91
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 93
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ctx:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initPlayControl()V

    .line 96
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initHeader()V

    .line 97
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initNavigate()V

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 441
    packed-switch p1, :pswitch_data_0

    .line 450
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 443
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->isTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    .line 445
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 189
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 107
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->initList()V

    .line 109
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v1, v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    .line 165
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$MyBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->playingName:Landroid/widget/TextView;

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getPlayMode()V

    .line 177
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->btn_play_control()V

    .line 178
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->SEARCH_DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;->SHARE_DEEP:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->naviTo(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$NAVI;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected showFileContextMenu(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 331
    const-string v2, "OffLinePlayListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v1, Lnet/yostore/aws/handler/entity/Mp3Info;

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 335
    const v3, 0x7f040001

    new-instance v4, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$7;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$7;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 349
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 350
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 351
    return-void
.end method

.method protected showFolderContextMenu(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 308
    const-string v1, "OffLinePlayListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Now Position -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 311
    const v2, 0x7f040001

    new-instance v3, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method

.method protected updateCurrentPlay(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 281
    const-string v2, "OffLinePlayListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->clickPosition:I

    .line 284
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->addAllToPlay()V

    .line 288
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    .line 289
    .local v0, currentIdx:I
    if-ltz v0, :cond_0

    .line 290
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v0           #currentIdx:I
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 297
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 302
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
