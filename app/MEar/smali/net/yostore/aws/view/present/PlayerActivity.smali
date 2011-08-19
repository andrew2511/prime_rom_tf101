.class public Lnet/yostore/aws/view/present/PlayerActivity;
.super Landroid/app/ListActivity;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;,
        Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;,
        Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;,
        Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;,
        Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerActivity"

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;


# instance fields
.field private final accountFreezeHandlerCode:I

.field private final addFileFailHandlerCode:I

.field private final addListFail:I

.field private final addListSuccess:I

.field private addThread:Ljava/lang/Thread;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private btn_next:Landroid/widget/ImageButton;

.field private btn_play:Landroid/widget/ImageButton;

.field private btn_playlist:Landroid/widget/ImageButton;

.field private btn_pre:Landroid/widget/ImageButton;

.field private btn_repeat:Landroid/widget/ImageButton;

.field private btn_shuffle:Landroid/widget/ImageButton;

.field private final connectServerNGHandlerCode:I

.field private final createListFailHandlerCode:I

.field private ctx:Landroid/content/Context;

.field private currentIdx:I

.field private errmsg:Ljava/lang/String;

.field private final errun:I

.field private final failListName:I

.field private final getPlaylist:I

.field private handler:Landroid/os/Handler;

.field private final listExceedsLimit:I

.field private final loginFailHandlerCode:I

.field private mBrocastRecv:Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTimepos:Landroid/widget/TextView;

.field private mdialog:Landroid/app/ProgressDialog;

.field private mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

.field private operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

.field private playListView:Landroid/widget/ListView;

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

.field private songList:Lnet/yostore/aws/view/present/PlayingAdapter;

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 101
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    .line 102
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 103
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_next:Landroid/widget/ImageButton;

    .line 104
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 105
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 106
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 110
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->handler:Landroid/os/Handler;

    .line 113
    const/16 v0, 0x14

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressCancelHandlerCode:I

    .line 114
    const/16 v0, 0x1e

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addFileFailHandlerCode:I

    .line 115
    const/16 v0, 0x28

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->createListFailHandlerCode:I

    .line 116
    const/16 v0, 0x32

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->loginFailHandlerCode:I

    .line 117
    const/16 v0, 0x3c

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->connectServerNGHandlerCode:I

    .line 118
    const/16 v0, 0x46

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->accountFreezeHandlerCode:I

    .line 119
    const/16 v0, 0x78

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->errun:I

    .line 120
    const/16 v0, 0x82

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->failListName:I

    .line 121
    const/16 v0, 0x8c

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->getPlaylist:I

    .line 122
    const/16 v0, 0x96

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addListSuccess:I

    .line 123
    const/16 v0, 0xa0

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addListFail:I

    .line 124
    const/16 v0, 0xaa

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->listExceedsLimit:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songs:Ljava/util/List;

    .line 128
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playListView:Landroid/widget/ListView;

    .line 129
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songList:Lnet/yostore/aws/view/present/PlayingAdapter;

    .line 130
    iput-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->errmsg:Ljava/lang/String;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->currentIdx:I

    .line 98
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getCurrentSong()V

    return-void
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1289
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changePlayBtn()V

    return-void
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changePlayingName()V

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    return-void
.end method

.method static synthetic access$16(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/handler/entity/Mp3Item;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    return-object v0
.end method

.method static synthetic access$17(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity;->chkListName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lnet/yostore/aws/view/present/PlayerActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity;->setShuffle(I)V

    return-void
.end method

.method static synthetic access$19(Lnet/yostore/aws/view/present/PlayerActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity;->setRepeat(I)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/present/PlayerActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/present/PlayerActivity;->addToPlayList(J)V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 665
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getPlayListFolder()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->plist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->plist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private addToPlayList(J)V
    .locals 4
    .parameter "playlist"

    .prologue
    .line 606
    new-instance v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;

    sget-object v1, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 607
    return-void
.end method

.method private btn_play_control()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$9;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$9;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_pre:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$10;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$10;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_next:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$11;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$11;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    return-void
.end method

.method private changePlayBtn()V
    .locals 4

    .prologue
    const v3, 0x7f020036

    const/4 v2, 0x0

    .line 1291
    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 1322
    :goto_0
    return-void

    .line 1294
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1295
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1296
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1299
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1302
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1303
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1308
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1309
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1312
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1317
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1291
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
    .line 1335
    sget v0, Lcom/ecareme/mear/Mear;->bufferPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 1336
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playingName:Landroid/widget/TextView;

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

    .line 1339
    :goto_1
    return-void

    .line 1336
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

    .line 1338
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playingName:Landroid/widget/TextView;

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
    .line 1232
    sget v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    packed-switch v1, :pswitch_data_0

    .line 1261
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1264
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setRepeatPlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1277
    :cond_0
    :goto_1
    return-void

    .line 1234
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1235
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/present/PlayerActivity$14;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/PlayerActivity$14;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1242
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1243
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/present/PlayerActivity$15;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/PlayerActivity$15;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1250
    :pswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1251
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/present/PlayerActivity$16;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/PlayerActivity$16;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1269
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1270
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1232
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
    .line 1193
    sget v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 1213
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1216
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setShufflePlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1229
    :cond_0
    :goto_1
    return-void

    .line 1195
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1196
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/present/PlayerActivity$12;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/PlayerActivity$12;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1203
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1204
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    new-instance v2, Lnet/yostore/aws/view/present/PlayerActivity$13;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/present/PlayerActivity$13;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1221
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1222
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1225
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1193
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

    .line 759
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1112
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {}, Lcom/ecareme/mear/Mear;->getCurrentSong()V

    .line 1121
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentIdx()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->currentIdx:I

    .line 1122
    iget v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->currentIdx:I

    if-ltz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songList:Lnet/yostore/aws/view/present/PlayingAdapter;

    iget v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->currentIdx:I

    iput v1, v0, Lnet/yostore/aws/view/present/PlayingAdapter;->currentPlay:I

    .line 1124
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songList:Lnet/yostore/aws/view/present/PlayingAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1125
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playListView:Landroid/widget/ListView;

    iget v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->currentIdx:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1130
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
    .line 666
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 667
    .local v13, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v14, 0x0

    .line 668
    .local v14, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v8, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 670
    .local v8, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v1, v0

    invoke-virtual {v8, v1}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 679
    .local v12, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v9, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v13

    .line 689
    .end local v9           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .end local v12           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_1
    return-object v1

    .line 671
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 674
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 682
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v9       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .restart local v12       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 683
    .local v11, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v1, "system.my.encrypted.root"

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
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

    .line 686
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPlayMode()V
    .locals 2

    .prologue
    .line 1089
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 1092
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changePlayBtn()V

    .line 1093
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changeShuffleMode()V

    .line 1094
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changeRepeatMode()V

    .line 1096
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getCurrentSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1101
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1102
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lnet/yostore/aws/view/present/PlayerActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/PlayerActivity$2;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->handler:Landroid/os/Handler;

    .line 349
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 421
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 422
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$3;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 446
    sget-boolean v1, Lcom/ecareme/mear/Mear;->onlinemode:Z

    if-eqz v1, :cond_0

    .line 447
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$4;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 472
    :cond_0
    return-void
.end method

.method private setRepeat(I)V
    .locals 0
    .parameter "_repeat"

    .prologue
    .line 1285
    sput p1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 1286
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changeRepeatMode()V

    .line 1287
    return-void
.end method

.method private setShuffle(I)V
    .locals 0
    .parameter "_shuffle"

    .prologue
    .line 1280
    sput p1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 1281
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->changeShuffleMode()V

    .line 1282
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->setContentView(I)V

    .line 150
    iput-object p0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->initHandler()V

    .line 152
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play:Landroid/widget/ImageButton;

    .line 153
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 154
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_next:Landroid/widget/ImageButton;

    .line 155
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 156
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 157
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 159
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 160
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playingName:Landroid/widget/TextView;

    .line 161
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->playListView:Landroid/widget/ListView;

    .line 162
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->updateSongList()V

    .line 164
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 165
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 166
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    .line 169
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->btn_playlist:Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$1;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "MEAR_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mFilter:Landroid/content/IntentFilter;

    .line 175
    new-instance v0, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mBrocastRecv:Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;

    .line 176
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->initList()V

    .line 177
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1328
    .line 1330
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
    .line 382
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mBrocastRecv:Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->addThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 356
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 359
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 360
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->stop()V

    .line 364
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 186
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mBrocastRecv:Lnet/yostore/aws/view/present/PlayerActivity$MyBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getPlayMode()V

    .line 199
    invoke-direct {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->btn_play_control()V

    .line 201
    new-instance v0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    .line 202
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity;->mus:Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;

    invoke-virtual {v0}, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->start()V

    .line 203
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
    .line 574
    .local p1, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    const-string v2, "PlayerActivity"

    const-string v3, "showAddPlaylistMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000f

    invoke-direct {v1, v2, v3, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 577
    .local v1, tmpbr:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 579
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    const v3, 0x7f06008f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 581
    new-instance v3, Lnet/yostore/aws/view/present/PlayerActivity$6;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/present/PlayerActivity$6;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 602
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 603
    return-void
.end method

.method protected showCreateNewPlayList(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 610
    const-string v3, "PlayerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Now Position -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 613
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 616
    .local v2, textEntryView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 618
    const v4, 0x7f060091

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 619
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 620
    const v4, 0x7f060093

    new-instance v5, Lnet/yostore/aws/view/present/PlayerActivity$7;

    invoke-direct {v5, p0, v2}, Lnet/yostore/aws/view/present/PlayerActivity$7;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 654
    const v4, 0x7f060092

    new-instance v5, Lnet/yostore/aws/view/present/PlayerActivity$8;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/present/PlayerActivity$8;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 658
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 659
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 662
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 475
    const-string v2, "PlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/high16 v1, 0x7f04

    .line 478
    .local v1, menuid:I
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity;->operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v2, :cond_0

    .line 479
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->operatedSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 481
    new-instance v3, Lnet/yostore/aws/view/present/PlayerActivity$5;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/present/PlayerActivity$5;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 517
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 519
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public updateSongList()V
    .locals 7

    .prologue
    .line 388
    :try_start_0
    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSongList()Ljava/util/List;

    move-result-object v2

    .line 389
    .local v2, playinglist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songs:Ljava/util/List;

    .line 390
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 391
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 400
    .end local v1           #i:I
    :cond_0
    new-instance v3, Lnet/yostore/aws/view/present/PlayingAdapter;

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000e

    iget-object v6, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songs:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lnet/yostore/aws/view/present/PlayingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songList:Lnet/yostore/aws/view/present/PlayingAdapter;

    .line 401
    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songList:Lnet/yostore/aws/view/present/PlayingAdapter;

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/present/PlayerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 417
    .end local v2           #playinglist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    :goto_1
    return-void

    .line 393
    .restart local v1       #i:I
    .restart local v2       #playinglist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity;->songs:Ljava/util/List;

    new-instance v5, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 394
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v3

    .line 395
    const-string v6, "0"

    invoke-direct {v5, v3, v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v1           #i:I
    .end local v2           #playinglist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/Mp3Item;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 407
    .local v0, e:Landroid/os/DeadObjectException;
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    .end local v0           #e:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 414
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
