.class public Lnet/yostore/aws/view/navigate/PlayListActivity;
.super Landroid/app/ListActivity;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$fileRemoveTask;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;,
        Lnet/yostore/aws/view/navigate/PlayListActivity$renewPlayListTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayListActivity"

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field public static nav:Lnet/yostore/aws/view/navigate/PlayListHandler;


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

.field private final errun:I

.field private final forceRenew:I

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private mBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mus:Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;

.field private naviStat:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

.field private plBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;

.field private plFilter:Landroid/content/IntentFilter;

.field private playingName:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

.field private final setadapterlist:I

.field private sum_reload:Landroid/view/SubMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 90
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    .line 91
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 92
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_next:Landroid/widget/ImageButton;

    .line 93
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 94
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 95
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 100
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->PlayList:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    .line 106
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->handler:Landroid/os/Handler;

    .line 117
    const/16 v0, 0x78

    iput v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->errun:I

    .line 123
    const/16 v0, 0xb4

    iput v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->forceRenew:I

    .line 124
    const/16 v0, 0xbe

    iput v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->setadapterlist:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->errmsg:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->clickPosition:I

    .line 86
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 1474
    const/4 v2, 0x0

    .line 1475
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1477
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1479
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1487
    :cond_1
    :goto_0
    return v2

    .line 1479
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1480
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1481
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 1482
    const/4 v2, 0x1

    .line 1484
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/PlayListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 595
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->doGetChangeSeq()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/PlayListActivity;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->compareChangeSeq(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1489
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changePlayingName()V

    return-void
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/navigate/PlayListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/navigate/PlayListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1426
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setShuffle(I)V

    return-void
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/navigate/PlayListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1431
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setRepeat(I)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/PlayListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getCurrentSong()V

    return-void
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1436
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changePlayBtn()V

    return-void
.end method

.method private addAllToPlay()V
    .locals 8

    .prologue
    .line 970
    :try_start_0
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->stop()V

    .line 971
    const-wide/16 v4, -0x3e7

    .line 972
    .local v4, toPlayfolder:J
    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/PlayListHandler;->isTop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 973
    sget-wide v4, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 977
    :goto_0
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6, v4, v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z

    .line 978
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->clearPlaylist()V

    .line 979
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 994
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    iget v7, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->clickPosition:I

    invoke-interface {v6, v7}, Lnet/yostore/aws/service/PlayerServiceInterface;->playFile(I)V

    .line 1009
    .end local v2           #i:I
    .end local v4           #toPlayfolder:J
    :goto_2
    return-void

    .line 975
    .restart local v4       #toPlayfolder:J
    :cond_0
    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getPathId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 980
    .restart local v2       #i:I
    :cond_1
    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v6}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getFsInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 982
    .local v3, tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 983
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 985
    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 986
    iget-object v6, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 989
    :cond_2
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->setUserid(Ljava/lang/String;)V

    .line 992
    sget-object v6, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v6, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 998
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    .end local v2           #i:I
    .end local v3           #tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    .end local v4           #toPlayfolder:J
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1001
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1003
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 1006
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addToPlay()V
    .locals 4

    .prologue
    .line 1015
    :try_start_0
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 1016
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 1017
    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 1018
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1031
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1023
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1025
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1028
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private btn_play_control()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$10;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$11;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$12;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$12;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    return-void
.end method

.method private changePlayBtn()V
    .locals 4

    .prologue
    const v3, 0x7f020036

    const/4 v2, 0x0

    .line 1438
    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1470
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1442
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1443
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1446
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1449
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1450
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1455
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1457
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1460
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changePlayingName()V
    .locals 3

    .prologue
    .line 1490
    sget v0, Lcom/ecareme/mear/Mear;->bufferPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 1491
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->playingName:Landroid/widget/TextView;

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ecareme/mear/Mear;->bufferPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    :goto_1
    return-void

    .line 1491
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ecareme/mear/Mear;->bufferPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1493
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->playingName:Landroid/widget/TextView;

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_2
.end method

.method private changeRepeatMode()V
    .locals 3

    .prologue
    .line 1378
    sget v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    packed-switch v1, :pswitch_data_0

    .line 1407
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1410
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setRepeatPlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1424
    :cond_0
    :goto_1
    return-void

    .line 1380
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1381
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$15;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$15;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1388
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1389
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$16;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$16;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1396
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1397
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$17;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$17;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1412
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1415
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1417
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1420
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1378
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
    .line 1338
    sget v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 1358
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1361
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setShufflePlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1375
    :cond_0
    :goto_1
    return-void

    .line 1340
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1341
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$13;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$13;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1348
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1349
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$14;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$14;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1366
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1368
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1371
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compareChangeSeq(J)Z
    .locals 5
    .parameter "chgseq"

    .prologue
    .line 618
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;->getMetaMeta(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/MetaMeta;

    move-result-object v0

    .line 620
    .local v0, meta:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    const-string v1, "PlayListActivity"

    const-string v2, "\r--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-wide v1, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    .line 622
    const-string v1, "PlayListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tGet Change CHANGED from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x0

    .line 627
    :goto_0
    return v1

    .line 626
    :cond_0
    const-string v1, "PlayListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tGet Change Same as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doGetChangeSeq()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x64

    .line 596
    new-instance v1, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v5, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .local v1, ir:Lnet/yostore/aws/api/InfoRelayApi;
    new-instance v2, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v5, v5, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v2, request:Lnet/yostore/aws/api/entity/GetChangeSeqRequest;
    const/4 v3, 0x0

    .line 600
    .local v3, response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    :try_start_0
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;->folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    move-result-object v3

    .line 601
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 613
    :goto_0
    return-wide v4

    .line 602
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 603
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v4, v7

    .line 604
    goto :goto_0

    .line 605
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 606
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 607
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :cond_0
    move-wide v4, v7

    .line 610
    goto :goto_0

    .line 612
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move-wide v4, v7

    .line 613
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
    .line 1260
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 1261
    invoke-static {}, Lcom/ecareme/mear/Mear;->getCurrentSong()V

    .line 1262
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changePlayingName()V

    .line 1263
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v0

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v0

    const-wide/16 v2, -0x3e7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1266
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 1267
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1268
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getPlayMode()V
    .locals 2

    .prologue
    .line 1239
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1242
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changePlayBtn()V

    .line 1243
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changeShuffleMode()V

    .line 1244
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changeRepeatMode()V

    .line 1246
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getCurrentSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1253
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1247
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$1;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->handler:Landroid/os/Handler;

    .line 321
    return-void
.end method

.method private initHeader()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 635
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    .line 636
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 637
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$5;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 653
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$6;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$6;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 669
    return-void
.end method

.method private initNavigate()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method private initPlayControl()V
    .locals 3

    .prologue
    .line 1122
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play:Landroid/widget/ImageButton;

    .line 1123
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 1124
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_next:Landroid/widget/ImageButton;

    .line 1125
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 1126
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 1127
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 1128
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->playingName:Landroid/widget/TextView;

    .line 1129
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 1132
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1134
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1149
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_playlist:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/PlayListActivity$9;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$9;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MEAR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mFilter:Landroid/content/IntentFilter;

    .line 1155
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "net.yostore.aws.service.PlayListService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->plFilter:Landroid/content/IntentFilter;

    .line 1156
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;

    .line 1158
    return-void

    .line 1137
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1142
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1145
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setRepeat(I)V
    .locals 0
    .parameter "_repeat"

    .prologue
    .line 1432
    sput p1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 1433
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changeRepeatMode()V

    .line 1434
    return-void
.end method

.method private setShuffle(I)V
    .locals 0
    .parameter "_shuffle"

    .prologue
    .line 1427
    sput p1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 1428
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changeShuffleMode()V

    .line 1429
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setContentView(I)V

    .line 140
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 141
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 142
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->initHandler()V

    .line 144
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->plBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;

    .line 146
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->initPlayControl()V

    .line 147
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->initHeader()V

    .line 148
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->initNavigate()V

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 458
    .local v0, rtn:Z
    const/4 v1, 0x1

    const v2, 0x7f0600ae

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->sum_reload:Landroid/view/SubMenu;

    .line 459
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1037
    packed-switch p1, :pswitch_data_0

    .line 1046
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1039
    :pswitch_0
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->isTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->FLOAT:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    new-array v1, v4, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v4

    .line 1041
    goto :goto_0

    .line 1043
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1037
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 426
    const-string v0, "PlayListActivity"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 435
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 437
    :pswitch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 438
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 439
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-wide v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 442
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    new-array v2, v6, [Ljava/lang/Void;

    aput-object v7, v2, v5

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 444
    :cond_1
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    new-array v2, v6, [Ljava/lang/Void;

    aput-object v7, v2, v5

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 415
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->plBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 417
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 422
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f060019

    const v4, 0x7f060003

    const/4 v3, 0x1

    .line 328
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 330
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    .line 331
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->initList()V

    .line 335
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/PlayListHandler;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 336
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 337
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$2;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    .line 343
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 403
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$MyBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->plBrocastRecv:Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->plFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->changePlayingName()V

    .line 406
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getPlayMode()V

    .line 407
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->btn_play_control()V

    .line 408
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mus:Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;

    .line 409
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->mus:Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity$UpdateStatus;->start()V

    .line 410
    return-void

    .line 353
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.reject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 361
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$3;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    .line 360
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    invoke-static {p0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto :goto_0

    .line 372
    :cond_2
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/PlayListActivity$4;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V

    .line 379
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 389
    invoke-static {p0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 397
    :cond_3
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v6, v1, v7

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 399
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;

    invoke-direct {v0, p0, v6}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v6, v1, v7

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$chkNeedToRenewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected showFileContextMenu(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 827
    const-string v2, "PlayListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v1, Lnet/yostore/aws/handler/entity/Mp3Info;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v1, v2}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 831
    const v3, 0x7f040002

    new-instance v4, Lnet/yostore/aws/view/navigate/PlayListActivity$8;

    invoke-direct {v4, p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$8;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/handler/entity/Mp3Info;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 843
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 844
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 845
    return-void
.end method

.method protected showFolderContextMenu(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 778
    const-string v5, "PlayListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Now Position -->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, itemArray:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 782
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v6, v6, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getPlayList(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList;

    move-result-object v3

    .line 783
    .local v3, pList:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v4, v3, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 784
    .local v4, status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;
    sget-object v5, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v4, v5, :cond_0

    .line 785
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    const v6, 0x7f0600a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemArray:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 790
    .restart local v1       #itemArray:[Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v6, v6, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 793
    new-instance v6, Lnet/yostore/aws/view/navigate/PlayListActivity$7;

    invoke-direct {v6, p0, v4}, Lnet/yostore/aws/view/navigate/PlayListActivity$7;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 822
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 823
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 824
    return-void

    .line 787
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ctx:Landroid/content/Context;

    const v6, 0x7f0600a8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected updateCurrentPlay(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 751
    const-string v2, "PlayListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iput p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->clickPosition:I

    .line 754
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->addAllToPlay()V

    .line 758
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    .line 759
    .local v0, currentIdx:I
    if-ltz v0, :cond_0

    .line 760
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 761
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 775
    .end local v0           #currentIdx:I
    :cond_0
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 767
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 769
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 772
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
