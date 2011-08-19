.class public Lnet/yostore/aws/view/navigate/LibActivity;
.super Landroid/app/ListActivity;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;,
        Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;,
        Lnet/yostore/aws/view/navigate/LibActivity$NAVI;,
        Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;,
        Lnet/yostore/aws/view/navigate/LibActivity$createNewPlayList;,
        Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;,
        Lnet/yostore/aws/view/navigate/LibActivity$getPlaylistTask;,
        Lnet/yostore/aws/view/navigate/LibActivity$moreTask;,
        Lnet/yostore/aws/view/navigate/LibActivity$naviTo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibActivity"

.field public static awsCnt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static awsIdx:I

.field public static awsl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field public static isLoading:Z

.field public static nav:Lnet/yostore/aws/view/navigate/LibHandler;

.field public static offset:I


# instance fields
.field private final ShowCopyMp3Msg:I

.field private final accountFreezeHandlerCode:I

.field private final addFileFailHandlerCode:I

.field private final addListFail:I

.field private final addListSuccess:I

.field private final afterNavi:I

.field private final aftermore:I

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private btn_next:Landroid/widget/ImageButton;

.field private btn_play:Landroid/widget/ImageButton;

.field private btn_playlist:Landroid/widget/ImageButton;

.field private btn_pre:Landroid/widget/ImageButton;

.field private btn_repeat:Landroid/widget/ImageButton;

.field private btn_shuffle:Landroid/widget/ImageButton;

.field private clickPosition:I

.field private final connectServerNGHandlerCode:I

.field private final createListFailHandlerCode:I

.field private createListName:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private final doSearchTop:I

.field private errmsg:Ljava/lang/String;

.field private final errun:I

.field private final failListName:I

.field private final getPlaylist:I

.field private handler:Landroid/os/Handler;

.field private final listExceedsLimit:I

.field private final loginFailHandlerCode:I

.field private lv:Landroid/widget/ListView;

.field private mBrocastRecv:Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private final moreProcess:I

.field private mus:Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;

.field private naviStat:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

.field private playingName:Landroid/widget/TextView;

.field private plist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private final progressCancelHandlerCode:I

.field private root:Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

.field private search:Lnet/yostore/aws/handler/entity/Search;

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    .line 133
    sput v0, Lnet/yostore/aws/view/navigate/LibActivity;->offset:I

    .line 135
    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    .line 136
    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    .line 137
    sput v0, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    .line 138
    sput-boolean v0, Lnet/yostore/aws/view/navigate/LibActivity;->isLoading:Z

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 87
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    .line 88
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 89
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_next:Landroid/widget/ImageButton;

    .line 90
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 91
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 92
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 97
    sget-object v0, Lnet/yostore/aws/view/navigate/LibHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->root:Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

    .line 101
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    .line 107
    const/16 v0, 0x14

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressCancelHandlerCode:I

    .line 108
    const/16 v0, 0x1e

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->addFileFailHandlerCode:I

    .line 109
    const/16 v0, 0x28

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->createListFailHandlerCode:I

    .line 110
    const/16 v0, 0x32

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->loginFailHandlerCode:I

    .line 111
    const/16 v0, 0x3c

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->connectServerNGHandlerCode:I

    .line 112
    const/16 v0, 0x46

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->accountFreezeHandlerCode:I

    .line 113
    const/16 v0, 0x50

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->aftermore:I

    .line 114
    const/16 v0, 0x5a

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ShowCopyMp3Msg:I

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->doSearchTop:I

    .line 116
    const/16 v0, 0x6e

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->afterNavi:I

    .line 117
    const/16 v0, 0x78

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->errun:I

    .line 118
    const/16 v0, 0x82

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->failListName:I

    .line 119
    const/16 v0, 0x8c

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->getPlaylist:I

    .line 120
    const/16 v0, 0x96

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->addListSuccess:I

    .line 121
    const/16 v0, 0xa0

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->addListFail:I

    .line 122
    const/16 v0, 0xaa

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->listExceedsLimit:I

    .line 123
    const/16 v0, 0xb4

    iput v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->moreProcess:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->errmsg:Ljava/lang/String;

    .line 126
    iput v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->clickPosition:I

    .line 129
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->createListName:Ljava/lang/String;

    .line 134
    iput v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->total:I

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 1556
    const/4 v2, 0x0

    .line 1557
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1559
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1561
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1569
    :cond_1
    :goto_0
    return v2

    .line 1561
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1562
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1563
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 1564
    const/4 v2, 0x1

    .line 1566
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 560
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/navigate/LibActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->total:I

    return-void
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/LibActivity$NAVI;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->naviStat:Lnet/yostore/aws/view/navigate/LibActivity$NAVI;

    return-object v0
.end method

.method static synthetic access$16(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/LibHandler$ROOT;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->root:Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

    return-object v0
.end method

.method static synthetic access$17(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$18(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getCurrentSong()V

    return-void
.end method

.method static synthetic access$19(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1518
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changePlayBtn()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$20(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1572
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changePlayingName()V

    return-void
.end method

.method static synthetic access$21(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$23(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mus:Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;

    return-object v0
.end method

.method static synthetic access$24(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity;->chkListName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$26(Lnet/yostore/aws/view/navigate/LibActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity;->setShuffle(I)V

    return-void
.end method

.method static synthetic access$27(Lnet/yostore/aws/view/navigate/LibActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity;->setRepeat(I)V

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/LibActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/navigate/LibActivity;->addToPlayList(J)V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 415
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getPlayListFolder()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->plist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->plist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-void
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method private addAllToPlay()V
    .locals 8

    .prologue
    .line 748
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-wide v6, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v6, v5, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 749
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->stop()V

    .line 750
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget-wide v6, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-interface {v5, v6, v7}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 751
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->clearPlaylist()V

    .line 752
    sget-object v5, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 753
    .local v1, _total:I
    sget-object v5, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 754
    add-int/lit8 v1, v1, -0x1

    .line 756
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 768
    .end local v1           #_total:I
    .end local v3           #i:I
    :cond_1
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    iget v6, p0, Lnet/yostore/aws/view/navigate/LibActivity;->clickPosition:I

    invoke-interface {v5, v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->playFile(I)V

    .line 783
    :goto_1
    return-void

    .line 757
    .restart local v1       #_total:I
    .restart local v3       #i:I
    :cond_2
    sget-object v5, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/navigate/LibHandler;->getFsInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 759
    .local v4, tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 762
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 763
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 764
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRootFolder(Ljava/lang/String;)V

    .line 765
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 777
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    .end local v1           #_total:I
    .end local v3           #i:I
    .end local v4           #tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 780
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "LibActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private addToPlayList(J)V
    .locals 4
    .parameter "playlist"

    .prologue
    .line 787
    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 788
    return-void
.end method

.method private btn_play_control()V
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$9;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/LibActivity$9;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/LibActivity$10;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/LibActivity$11;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    return-void
.end method

.method private changePlayBtn()V
    .locals 4

    .prologue
    const v3, 0x7f020036

    const/4 v2, 0x0

    .line 1520
    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1552
    :goto_0
    return-void

    .line 1523
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1524
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1525
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1528
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1531
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1532
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1534
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1539
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1542
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1520
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
    .line 1573
    sget v0, Lcom/ecareme/mear/Mear;->bufferPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 1574
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->playingName:Landroid/widget/TextView;

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

    .line 1578
    :goto_1
    return-void

    .line 1574
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

    .line 1576
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->playingName:Landroid/widget/TextView;

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
    .line 1460
    sget v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    packed-switch v1, :pswitch_data_0

    .line 1489
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1492
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setRepeatPlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :cond_0
    :goto_1
    return-void

    .line 1462
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1463
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$14;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$14;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1470
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1471
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$15;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$15;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1478
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1479
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$16;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$16;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1502
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1494
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1460
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
    .line 1420
    sget v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 1440
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1443
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setShufflePlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :cond_0
    :goto_1
    return-void

    .line 1422
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1423
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$12;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$12;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1430
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1431
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$13;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$13;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1453
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1445
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private chkListName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    .line 801
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 1346
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 1347
    invoke-static {}, Lcom/ecareme/mear/Mear;->getCurrentSong()V

    .line 1348
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changePlayingName()V

    .line 1349
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v0

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/LibActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1354
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1357
    :cond_0
    return-void
.end method

.method private getPlayListFolder()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 417
    .local v13, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v14, 0x0

    .line 418
    .local v14, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v8, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 420
    .local v8, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v1, v0

    invoke-virtual {v8, v1}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 429
    .local v12, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v9, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v13

    .line 439
    .end local v9           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .end local v12           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_1
    return-object v1

    .line 421
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 424
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 432
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .restart local v12       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 433
    .local v11, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v1, "system.my.encrypted.root"

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    new-instance v1, Lnet/yostore/aws/handler/entity/BrowseRaw;

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020050

    const-string v4, "1"

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v5

    sget-wide v6, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPlayMode()V
    .locals 3

    .prologue
    .line 1325
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1328
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changePlayBtn()V

    .line 1329
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changeShuffleMode()V

    .line 1330
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changeRepeatMode()V

    .line 1332
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getCurrentSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1336
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1333
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Lnet/yostore/aws/handler/entity/Search;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Search;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 563
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setName(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setMark(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setChoice(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Search;->setSrhopt(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    .line 413
    return-void
.end method

.method private initList()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 482
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    .line 483
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 484
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$2;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 503
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$3;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 522
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    if-eqz v1, :cond_3

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 523
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 525
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 526
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    .end local v0           #_msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.reject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 530
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    .line 531
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 533
    .end local v0           #_msg:Landroid/os/Message;
    :cond_2
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.freeze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 535
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 536
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 540
    .end local v0           #_msg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lnet/yostore/aws/view/present/SettingActivity;->isChanged:Z

    if-eqz v1, :cond_6

    .line 541
    :cond_4
    sget-boolean v1, Lnet/yostore/aws/view/navigate/LibActivity;->isLoading:Z

    if-nez v1, :cond_5

    .line 542
    sput-boolean v3, Lnet/yostore/aws/view/navigate/LibActivity;->isLoading:Z

    .line 543
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f030007

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 544
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 545
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 546
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 547
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    .end local v0           #_msg:Landroid/os/Message;
    :cond_5
    const/4 v1, 0x0

    sput-boolean v1, Lnet/yostore/aws/view/present/SettingActivity;->isChanged:Z

    goto :goto_0

    .line 552
    :cond_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 553
    .restart local v0       #_msg:Landroid/os/Message;
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 554
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private initPlayControl()V
    .locals 3

    .prologue
    .line 1210
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play:Landroid/widget/ImageButton;

    .line 1211
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 1212
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_next:Landroid/widget/ImageButton;

    .line 1213
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 1214
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 1215
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 1216
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->playingName:Landroid/widget/TextView;

    .line 1217
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 1220
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1222
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->btn_playlist:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$8;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$8;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MEAR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mFilter:Landroid/content/IntentFilter;

    .line 1243
    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;

    .line 1244
    return-void

    .line 1230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1233
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1225
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setRepeat(I)V
    .locals 0
    .parameter "_repeat"

    .prologue
    .line 1514
    sput p1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 1515
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changeRepeatMode()V

    .line 1516
    return-void
.end method

.method private setShuffle(I)V
    .locals 0
    .parameter "_shuffle"

    .prologue
    .line 1509
    sput p1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 1510
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changeShuffleMode()V

    .line 1511
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/navigate/LibActivity;->setContentView(I)V

    .line 147
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->initHandler()V

    .line 148
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 150
    .local v0, _msg:Landroid/os/Message;
    :try_start_0
    const-string v3, "MearPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 151
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iput-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 152
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->initPlayControl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    :try_start_1
    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    :try_start_2
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->root:Lnet/yostore/aws/view/navigate/LibHandler$ROOT;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/LibActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v3, v4, v5}, Lnet/yostore/aws/view/navigate/LibHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/LibHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/LibHandler;

    move-result-object v3

    sput-object v3, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    :goto_2
    return-void

    .line 159
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 160
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LibActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 181
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 188
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "LibActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 175
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 460
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 794
    .line 796
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/LibActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 471
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 472
    sget-object v0, Lnet/yostore/aws/view/navigate/LibHandler;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/yostore/aws/view/navigate/LibHandler;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/LibHandler;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    .line 479
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 210
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->initList()V

    .line 212
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mBrocastRecv:Lnet/yostore/aws/view/navigate/LibActivity$MyBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->changePlayingName()V

    .line 214
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->getPlayMode()V

    .line 215
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->btn_play_control()V

    .line 216
    new-instance v0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mus:Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;

    .line 217
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity;->mus:Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->start()V

    .line 218
    return-void
.end method

.method protected showAddPlaylistMenu(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    const-string v2, "LibActivity"

    const-string v3, "showAddPlaylistMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000f

    invoke-direct {v1, v2, v3, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 646
    .local v1, tmpbr:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 648
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    const v3, 0x7f06008f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 650
    new-instance v3, Lnet/yostore/aws/view/navigate/LibActivity$5;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/LibActivity$5;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 675
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 676
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 677
    return-void
.end method

.method protected showCreateNewPlayList(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 680
    const-string v4, "LibActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showCreateNewPlayList -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v2, Lnet/yostore/aws/handler/entity/Mp3Info;

    sget-object v4, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v2, v4}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 684
    .local v2, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 685
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 688
    .local v3, textEntryView:Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 690
    const v5, 0x7f060091

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 691
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 692
    const v5, 0x7f060093

    new-instance v6, Lnet/yostore/aws/view/navigate/LibActivity$6;

    invoke-direct {v6, p0, v3}, Lnet/yostore/aws/view/navigate/LibActivity$6;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 734
    const v5, 0x7f060092

    new-instance v6, Lnet/yostore/aws/view/navigate/LibActivity$7;

    invoke-direct {v6, p0}, Lnet/yostore/aws/view/navigate/LibActivity$7;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 739
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 740
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 743
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 600
    const-string v2, "LibActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/high16 v1, 0x7f04

    .line 603
    .local v1, menuid:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    sget-object v3, Lnet/yostore/aws/view/navigate/LibActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 605
    new-instance v3, Lnet/yostore/aws/view/navigate/LibActivity$4;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/LibActivity$4;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 639
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 640
    return-void
.end method

.method protected updateCurrentPlay(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 572
    const-string v2, "LibActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iput p1, p0, Lnet/yostore/aws/view/navigate/LibActivity;->clickPosition:I

    .line 574
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/LibActivity;->addAllToPlay()V

    .line 578
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    .line 579
    .local v0, currentIdx:I
    if-ltz v0, :cond_0

    .line 580
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0           #currentIdx:I
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 593
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LibActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
