.class public Lnet/yostore/aws/view/search/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;,
        Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;,
        Lnet/yostore/aws/view/search/SearchActivity$NAVI;,
        Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field public static awsSearchCnt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static awsSearchIdx:I

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field public static nav:Lnet/yostore/aws/view/search/SearchHandler;

.field public static offset:I


# instance fields
.field private addList:Ljava/lang/Runnable;

.field private addListFail:Ljava/lang/Runnable;

.field private addListSuccess:Ljava/lang/Runnable;

.field private addThread:Ljava/lang/Thread;

.field private aftermore:Ljava/lang/Runnable;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private btn_next:Landroid/widget/ImageButton;

.field private btn_play:Landroid/widget/ImageButton;

.field private btn_playlist:Landroid/widget/ImageButton;

.field private btn_pre:Landroid/widget/ImageButton;

.field private btn_repeat:Landroid/widget/ImageButton;

.field private btn_search:Landroid/widget/ImageButton;

.field private btn_shuffle:Landroid/widget/ImageButton;

.field private clickPosition:I

.field private createListName:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private errmsg:Ljava/lang/String;

.field private errrun:Ljava/lang/Runnable;

.field private failListName:Ljava/lang/Runnable;

.field private failSearchName:Ljava/lang/Runnable;

.field private getPlaylist:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private listExceedsLimit:Ljava/lang/Runnable;

.field private lv:Landroid/widget/ListView;

.field private mBrocastRecv:Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private mus:Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;

.field private naviStat:Lnet/yostore/aws/view/search/SearchActivity$NAVI;

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

.field private root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

.field private search:Lnet/yostore/aws/handler/entity/Search;

.field private searchKeyWord:Ljava/lang/String;

.field private search_edit:Landroid/widget/TextView;

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    sput-object v1, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 106
    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 109
    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 112
    sput-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 79
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 80
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    .line 81
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 82
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_next:Landroid/widget/ImageButton;

    .line 83
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 84
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 85
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 90
    sget-object v0, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->Lib:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    .line 94
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->handler:Landroid/os/Handler;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->errmsg:Ljava/lang/String;

    .line 99
    iput v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->clickPosition:I

    .line 102
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->createListName:Ljava/lang/String;

    .line 107
    iput v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->total:I

    .line 111
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    .line 113
    const-string v0, " "

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->searchKeyWord:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 644
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$1;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->getPlaylist:Ljava/lang/Runnable;

    .line 682
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$2;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->aftermore:Ljava/lang/Runnable;

    .line 689
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$3;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$3;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addList:Ljava/lang/Runnable;

    .line 695
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$4;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$4;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addListSuccess:Ljava/lang/Runnable;

    .line 702
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$5;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$5;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addListFail:Ljava/lang/Runnable;

    .line 709
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$6;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$6;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->listExceedsLimit:Ljava/lang/Runnable;

    .line 720
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$7;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$7;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->failListName:Ljava/lang/Runnable;

    .line 737
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$8;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$8;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->failSearchName:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$9;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$9;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->errrun:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/search/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1184
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 1186
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1194
    :cond_1
    :goto_0
    return v2

    .line 1186
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1187
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayerService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1188
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 1189
    const/4 v2, 0x1

    .line 1191
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getPlayListFolder()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/search/SearchActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->plist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 695
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addListSuccess:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addListFail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->listExceedsLimit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getCurrentSong()V

    return-void
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changePlayBtn()V

    return-void
.end method

.method static synthetic access$16(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1197
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changePlayingName()V

    return-void
.end method

.method static synthetic access$17(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$18(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$19(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->initList()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->plist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20(Lnet/yostore/aws/view/search/SearchActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$21(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/search/SearchHandler$ROOT;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    return-object v0
.end method

.method static synthetic access$22(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$23(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->aftermore:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$24(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 377
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->failSearchName:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$26(Lnet/yostore/aws/view/search/SearchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->total:I

    return-void
.end method

.method static synthetic access$27(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->errrun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$29(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->getPlaylist:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$30(Lnet/yostore/aws/view/search/SearchActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/search/SearchActivity;->addToPlayList(J)V

    return-void
.end method

.method static synthetic access$31(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$32(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity;->chkListName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity;->createNewPlayList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$34(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->failListName:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$35(Lnet/yostore/aws/view/search/SearchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity;->setShuffle(I)V

    return-void
.end method

.method static synthetic access$36(Lnet/yostore/aws/view/search/SearchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity;->setRepeat(I)V

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    return-object v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method private addAllToPlay()V
    .locals 8

    .prologue
    .line 580
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-wide v6, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v6, v5, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 581
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->stop()V

    .line 582
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget-wide v6, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-interface {v5, v6, v7}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 583
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->clearPlaylist()V

    .line 584
    sget-object v5, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/search/SearchHandler;->getFsInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 585
    .local v1, _total:I
    sget-object v5, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/search/SearchHandler;->getFsInfos()Ljava/util/List;

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

    .line 586
    add-int/lit8 v1, v1, -0x1

    .line 588
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 600
    .end local v1           #_total:I
    .end local v3           #i:I
    :cond_1
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    iget v6, p0, Lnet/yostore/aws/view/search/SearchActivity;->clickPosition:I

    invoke-interface {v5, v6}, Lnet/yostore/aws/service/PlayerServiceInterface;->playFile(I)V

    .line 615
    :goto_1
    return-void

    .line 589
    .restart local v1       #_total:I
    .restart local v3       #i:I
    :cond_2
    sget-object v5, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    invoke-virtual {v5}, Lnet/yostore/aws/view/search/SearchHandler;->getFsInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 591
    .local v4, tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 594
    .local v0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 595
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 596
    iget-object v5, v4, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRootFolder(Ljava/lang/String;)V

    .line 597
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5, v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    .end local v1           #_total:I
    .end local v3           #i:I
    .end local v4           #tmpFsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 607
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 609
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 612
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private addToPlayList(J)V
    .locals 3
    .parameter "playlist"

    .prologue
    .line 631
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;

    sget-object v2, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, p0, v2, p1, p2}, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;-><init>(Lnet/yostore/aws/view/search/SearchActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->addThread:Ljava/lang/Thread;

    .line 632
    return-void
.end method

.method private btn_play_control()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$22;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$22;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$23;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$23;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$24;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$24;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    return-void
.end method

.method private changePlayBtn()V
    .locals 4

    .prologue
    const v3, 0x7f020036

    const/4 v2, 0x0

    .line 1145
    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1177
    :goto_0
    return-void

    .line 1148
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1149
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1150
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1153
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1156
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1157
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1162
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1164
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1167
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1172
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1145
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
    .line 1198
    sget v0, Lcom/ecareme/mear/Mear;->bufferPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 1199
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->playingName:Landroid/widget/TextView;

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

    .line 1202
    :goto_1
    return-void

    .line 1199
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

    .line 1201
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->playingName:Landroid/widget/TextView;

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
    .line 1091
    sget v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    packed-switch v1, :pswitch_data_0

    .line 1120
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setRepeatPlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :cond_0
    :goto_1
    return-void

    .line 1093
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1094
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$27;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$27;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1102
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$28;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$28;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1109
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1110
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$29;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$29;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1128
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1091
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
    .line 1057
    sget v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 1077
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1080
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setShufflePlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    :goto_1
    return-void

    .line 1059
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1060
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$25;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$25;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1067
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1068
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$26;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$26;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1085
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1057
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

    .line 717
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

.method private createNewPlayList(Ljava/lang/String;)Z
    .locals 10
    .parameter "playlistName"

    .prologue
    const v8, 0x7f06000d

    const/high16 v7, 0x7f06

    const/4 v9, 0x1

    .line 559
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->createListName:Ljava/lang/String;

    .line 560
    new-instance v2, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    sget-wide v4, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity;->createListName:Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v2, v4, v5, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v2, helper:Lnet/yostore/aws/api/helper/FolderCreateHelper;
    const/4 v3, 0x0

    .line 562
    .local v3, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 564
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    move-object v3, v0

    .line 565
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 566
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    const/high16 v5, 0x7f06

    invoke-virtual {p0, v5}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 567
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lnet/yostore/aws/view/search/SearchActivity;->addToPlayList(J)V

    .line 568
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity;->addList:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v9

    .line 573
    :goto_0
    return v4

    .line 571
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 572
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 573
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private doSearchTop()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 332
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 333
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f030012

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 334
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$16;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$16;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    .line 374
    invoke-virtual {v0}, Lnet/yostore/aws/view/search/SearchActivity$16;->start()V

    .line 375
    return-void
.end method

.method private getCurrentSong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 984
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 985
    invoke-static {}, Lcom/ecareme/mear/Mear;->getCurrentSong()V

    .line 986
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changePlayingName()V

    .line 987
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v0

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 989
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 994
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
    .line 142
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 143
    .local v13, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v14, 0x0

    .line 144
    .local v14, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v8, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 146
    .local v8, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v1, v0

    invoke-virtual {v8, v1}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 155
    .local v12, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v9, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v13

    .line 165
    .end local v9           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .end local v12           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_1
    return-object v1

    .line 147
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 150
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 158
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .restart local v12       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 159
    .local v11, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v1, "system.my.encrypted.root"

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
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

    .line 162
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPlayMode()V
    .locals 2

    .prologue
    .line 963
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 966
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changePlayBtn()V

    .line 967
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changeShuffleMode()V

    .line 968
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changeRepeatMode()V

    .line 970
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getCurrentSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 977
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 971
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 378
    new-instance v1, Lnet/yostore/aws/handler/entity/Search;

    invoke-direct {v1}, Lnet/yostore/aws/handler/entity/Search;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 379
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search_edit:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, searckkw:Ljava/lang/String;
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 381
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/Search;->setName(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v1, v3}, Lnet/yostore/aws/handler/entity/Search;->setMark(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/Search;->setChoice(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lnet/yostore/aws/handler/entity/Search;->setSrhopt(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search:Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :goto_1
    return-object v1

    .line 381
    :cond_0
    const-string v2, " "

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 388
    goto :goto_1
.end method

.method private initHeader()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method private initList()V
    .locals 5

    .prologue
    const v4, 0x7f060019

    const v3, 0x7f060003

    const/4 v2, 0x1

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 218
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    .line 219
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 220
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$11;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$12;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$12;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 267
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 268
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$13;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$13;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    .line 274
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.reject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$14;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$14;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    .line 291
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto :goto_0

    .line 302
    :cond_2
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$15;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$15;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    .line 309
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->doSearchTop()V

    goto :goto_0
.end method

.method private initNavigate()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method private initPlayControl()V
    .locals 3

    .prologue
    .line 851
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_play:Landroid/widget/ImageButton;

    .line 852
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 853
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_next:Landroid/widget/ImageButton;

    .line 854
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 855
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 856
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 857
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->playingName:Landroid/widget/TextView;

    .line 858
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 861
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 863
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 877
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_playlist:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$21;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$21;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MEAR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mFilter:Landroid/content/IntentFilter;

    .line 883
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mBrocastRecv:Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;

    .line 884
    return-void

    .line 866
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 871
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 874
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setRepeat(I)V
    .locals 0
    .parameter "_repeat"

    .prologue
    .line 1139
    sput p1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 1140
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changeRepeatMode()V

    .line 1141
    return-void
.end method

.method private setShuffle(I)V
    .locals 0
    .parameter "_shuffle"

    .prologue
    .line 1134
    sput p1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 1135
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changeShuffleMode()V

    .line 1136
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->setContentView(I)V

    .line 123
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 124
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 125
    iput-object p0, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    .line 126
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    .line 127
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->search_edit:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->initPlayControl()V

    .line 129
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->initHeader()V

    .line 131
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->initNavigate()V

    .line 132
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0, v1, v2}, Lnet/yostore/aws/view/search/SearchHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/search/SearchHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/search/SearchHandler;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 133
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->btn_search:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$10;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 638
    .line 640
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 206
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mBrocastRecv:Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->addThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->addThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->addThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 190
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->search_edit:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 196
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 176
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mBrocastRecv:Lnet/yostore/aws/view/search/SearchActivity$MyBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->changePlayingName()V

    .line 178
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->getPlayMode()V

    .line 179
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->btn_play_control()V

    .line 180
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mus:Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity;->mus:Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/search/SearchActivity$UpdateStatus;->start()V

    .line 182
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
    .line 475
    .local p1, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    const-string v2, "SearchActivity"

    const-string v3, "showAddPlaylistMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000f

    invoke-direct {v1, v2, v3, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 478
    .local v1, tmpbr:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 480
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    const v3, 0x7f06008f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 482
    new-instance v3, Lnet/yostore/aws/view/search/SearchActivity$18;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/search/SearchActivity$18;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 502
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 503
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 504
    return-void
.end method

.method protected showCreateNewPlayList(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 507
    const-string v4, "SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showCreateNewPlayList -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v2, Lnet/yostore/aws/handler/entity/Mp3Info;

    sget-object v4, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v2, v4}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 512
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 515
    .local v3, textEntryView:Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 517
    const v5, 0x7f060091

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 518
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 519
    const v5, 0x7f060093

    new-instance v6, Lnet/yostore/aws/view/search/SearchActivity$19;

    invoke-direct {v6, p0, v3}, Lnet/yostore/aws/view/search/SearchActivity$19;-><init>(Lnet/yostore/aws/view/search/SearchActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 547
    const v5, 0x7f060092

    new-instance v6, Lnet/yostore/aws/view/search/SearchActivity$20;

    invoke-direct {v6, p0}, Lnet/yostore/aws/view/search/SearchActivity$20;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 552
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 553
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 556
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 449
    const-string v3, "SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Now Position -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/high16 v1, 0x7f04

    .line 451
    .local v1, menuid:I
    new-instance v2, Lnet/yostore/aws/handler/entity/Mp3Info;

    sget-object v3, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 454
    new-instance v4, Lnet/yostore/aws/view/search/SearchActivity$17;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/search/SearchActivity$17;-><init>(Lnet/yostore/aws/view/search/SearchActivity;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 470
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 471
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 472
    return-void
.end method

.method protected updateCurrentPlay(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 422
    const-string v2, "SearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput p1, p0, Lnet/yostore/aws/view/search/SearchActivity;->clickPosition:I

    .line 424
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SearchActivity;->addAllToPlay()V

    .line 428
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    .line 429
    .local v0, currentIdx:I
    if-ltz v0, :cond_0

    .line 430
    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    .end local v0           #currentIdx:I
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 437
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 442
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
