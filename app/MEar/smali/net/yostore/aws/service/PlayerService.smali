.class public Lnet/yostore/aws/service/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;,
        Lnet/yostore/aws/service/PlayerService$TeleListener;,
        Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;,
        Lnet/yostore/aws/service/PlayerService$nextSongTask;,
        Lnet/yostore/aws/service/PlayerService$preSongTask;
    }
.end annotation


# static fields
.field public static final MEARSERVICE:Ljava/lang/String; = "MEAR_SERVICE"

.field private static final NOTIFY_ID:I = 0x7f030008

.field private static final TAG:Ljava/lang/String; = "PlayerService"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private apicookies:Lnet/yostore/aws/api/entity/ApiCookies;

.field private bufferPercent:I

.field private contentIntent:Landroid/app/PendingIntent;

.field private currentPath:Ljava/lang/String;

.field private currentPosition:I

.field private insertMp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;

.field private insertPlaying:Z

.field private isBuffering:Z

.field private isMPopening:Z

.field private isUpdateApiCfg:Z

.field private final mBinder:Lnet/yostore/aws/service/PlayerServiceInterface$Stub;

.field private mBrocastRecv:Landroid/content/BroadcastReceiver;

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mp:Landroid/media/MediaPlayer;

.field private nm:Landroid/app/NotificationManager;

.field private note:Landroid/app/Notification;

.field public phonePlayerSW:Z

.field private final playUnknowErrorLimit:I

.field private playUnknowErrorTimes:I

.field private repeatMode:I

.field private servicePlayinFolder:J

.field private shuffleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/Mp3Item;",
            ">;"
        }
    .end annotation
.end field

.field private shuffleMode:I

.field private shufflePosition:I

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/Mp3Item;",
            ">;"
        }
    .end annotation
.end field

.field private updateBufferTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    .line 61
    iput v2, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    .line 62
    iput v2, p0, Lnet/yostore/aws/service/PlayerService;->shuffleMode:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 78
    iput-object v3, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 79
    iput v2, p0, Lnet/yostore/aws/service/PlayerService;->bufferPercent:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isBuffering:Z

    .line 82
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/service/PlayerService;->servicePlayinFolder:J

    .line 84
    iput v2, p0, Lnet/yostore/aws/service/PlayerService;->playUnknowErrorTimes:I

    .line 85
    const/16 v0, 0x1e

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->playUnknowErrorLimit:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->isUpdateApiCfg:Z

    .line 89
    iput v2, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 91
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicookies:Lnet/yostore/aws/api/entity/ApiCookies;

    .line 93
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->insertPlaying:Z

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/service/PlayerService;->updateBufferTime:J

    .line 101
    iput-object v3, p0, Lnet/yostore/aws/service/PlayerService;->note:Landroid/app/Notification;

    .line 688
    new-instance v0, Lnet/yostore/aws/service/PlayerService$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/service/PlayerService$1;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mBinder:Lnet/yostore/aws/service/PlayerServiceInterface$Stub;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->deCompleteListen()V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/service/PlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    return-void
.end method

.method static synthetic access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->insertMp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/service/PlayerService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    return-void
.end method

.method static synthetic access$13(Lnet/yostore/aws/service/PlayerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/service/PlayerService;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->insertPlaying:Z

    return v0
.end method

.method static synthetic access$15(Lnet/yostore/aws/service/PlayerService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayerService;->insertPlaying:Z

    return-void
.end method

.method static synthetic access$16(Lnet/yostore/aws/service/PlayerService;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isBuffering:Z

    return v0
.end method

.method static synthetic access$17(Lnet/yostore/aws/service/PlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shuffleMode:I

    return v0
.end method

.method static synthetic access$18(Lnet/yostore/aws/service/PlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    return-void
.end method

.method static synthetic access$19(Lnet/yostore/aws/service/PlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    return v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20(Lnet/yostore/aws/service/PlayerService;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lnet/yostore/aws/service/PlayerService;->servicePlayinFolder:J

    return-wide v0
.end method

.method static synthetic access$21(Lnet/yostore/aws/service/PlayerService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-wide p1, p0, Lnet/yostore/aws/service/PlayerService;->servicePlayinFolder:J

    return-void
.end method

.method static synthetic access$22(Lnet/yostore/aws/service/PlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    return v0
.end method

.method static synthetic access$23(Lnet/yostore/aws/service/PlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    return-void
.end method

.method static synthetic access$24(Lnet/yostore/aws/service/PlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleMode:I

    return-void
.end method

.method static synthetic access$25(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService;->insertMp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;

    return-void
.end method

.method static synthetic access$26(Lnet/yostore/aws/service/PlayerService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lnet/yostore/aws/service/PlayerService;->isUpdateApiCfg:Z

    return-void
.end method

.method static synthetic access$27(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->shuffleNextSong()V

    return-void
.end method

.method static synthetic access$28(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->shufflePreSong()V

    return-void
.end method

.method static synthetic access$29(Lnet/yostore/aws/service/PlayerService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lnet/yostore/aws/service/PlayerService;->bufferPercent:I

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/PlayerService;->playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    return-void
.end method

.method static synthetic access$30(Lnet/yostore/aws/service/PlayerService;)J
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-wide v0, p0, Lnet/yostore/aws/service/PlayerService;->updateBufferTime:J

    return-wide v0
.end method

.method static synthetic access$31(Lnet/yostore/aws/service/PlayerService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-wide p1, p0, Lnet/yostore/aws/service/PlayerService;->updateBufferTime:J

    return-void
.end method

.method static synthetic access$32(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->mpStart()V

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/service/PlayerService;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->preSong()V

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->nextSong()V

    return-void
.end method

.method static synthetic access$8(Lnet/yostore/aws/service/PlayerService;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/service/PlayerService;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    return v0
.end method

.method private broadcastMsg(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MEAR_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method private deCompleteListen()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/service/PlayerService$6;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayerService$6;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method private initApiCfg()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isUpdateApiCfg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/service/PlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 137
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isUpdateApiCfg:Z

    .line 140
    :cond_1
    return-void
.end method

.method private mpStart()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 290
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lnet/yostore/aws/service/PlayerService$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayerService$5;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isBuffering:Z

    .line 300
    return-void
.end method

.method private nextSong()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    new-instance v0, Lnet/yostore/aws/service/PlayerService$nextSongTask;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/service/PlayerService$nextSongTask;-><init>(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/service/PlayerService$nextSongTask;)V

    invoke-virtual {v0, v1}, Lnet/yostore/aws/service/PlayerService$nextSongTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 532
    return-void
.end method

.method private playPath(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 473
    :try_start_0
    sget-boolean v2, Lcom/ecareme/mear/Mear;->isLogout:Z

    if-nez v2, :cond_2

    .line 474
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ecareme/mear/Mear;->updatePlayerStatusFlg:Z

    .line 475
    iget v2, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->insertMp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->insertPlaying:Z

    if-eqz v2, :cond_1

    .line 476
    const v2, 0x7f02009f

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService;->insertMp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/yostore/aws/service/PlayerService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 480
    :goto_0
    const-string v2, "PlayStatus"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    .line 481
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->initPlayer()V

    .line 482
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 485
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 486
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 492
    .local v1, puri:Landroid/net/Uri;
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 493
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 495
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    .line 496
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->isBuffering:Z

    .line 497
    const/4 v2, 0x2

    sput v2, Lcom/ecareme/mear/Mear;->playingStatus:I

    .line 498
    const-string v2, "PlayStatus"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    .line 527
    .end local v1           #puri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 478
    :cond_1
    const v3, 0x7f02009f

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v4, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lnet/yostore/aws/service/PlayerService;->updateNotification(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 510
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 512
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->nextSong()V

    goto :goto_1

    .line 508
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 514
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 516
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->nextSong()V

    goto :goto_1

    .line 518
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 520
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->nextSong()V

    goto :goto_1

    .line 522
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 524
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->nextSong()V

    goto :goto_1
.end method

.method private playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 13
    .parameter "mp3Item"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 400
    sget-boolean v4, Lcom/ecareme/mear/Mear;->isLogout:Z

    if-nez v4, :cond_4

    .line 401
    sput v10, Lcom/ecareme/mear/Mear;->bufferPercent:I

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/service/PlayerService;->updateBufferTime:J

    .line 403
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->initApiCfg()V

    .line 404
    iput v10, p0, Lnet/yostore/aws/service/PlayerService;->playUnknowErrorTimes:I

    .line 405
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    .line 406
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/webrelay/directdownload/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/?fi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&dis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/service/PlayerService;->apicookies:Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, url:Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    .line 410
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lnet/yostore/aws/service/PlayListService;->storage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, _playTmp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    const/16 v4, 0x64

    sput v4, Lcom/ecareme/mear/Mear;->bufferPercent:I

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 430
    .end local v0           #_playTmp:Ljava/io/File;
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/ecareme/mear/Mear;->onlinemode:Z

    if-eqz v4, :cond_9

    .line 431
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    if-nez v4, :cond_3

    .line 432
    new-instance v4, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    iget-object v5, p0, Lnet/yostore/aws/service/PlayerService;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v4, v5}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    .line 434
    :cond_3
    iget-wide v4, p0, Lnet/yostore/aws/service/PlayerService;->servicePlayinFolder:J

    sget-wide v6, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 435
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v4, v11}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setInLib(Z)V

    .line 436
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setN(Ljava/lang/String;)V

    .line 437
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setFileId(J)V

    .line 445
    :goto_1
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    iget-wide v5, p0, Lnet/yostore/aws/service/PlayerService;->servicePlayinFolder:J

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setPlayList(J)V

    .line 446
    sget-wide v4, Lcom/ecareme/mear/Mear;->pt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/ecareme/mear/Mear;->pt:J

    .line 447
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->saveNowPlayInfo()V

    .line 448
    sget v4, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    if-lez v4, :cond_8

    sget v4, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    if-lez v4, :cond_8

    sget-wide v4, Lcom/ecareme/mear/Mear;->pt:J

    sget v6, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    sget-wide v4, Lcom/ecareme/mear/Mear;->pt:J

    sget v6, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    sget v6, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    int-to-long v6, v6

    rem-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_8

    .line 449
    const v4, 0x7f02009e

    const v5, 0x7f0600ac

    invoke-virtual {p0, v5}, Lnet/yostore/aws/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/yostore/aws/service/PlayerService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 450
    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    .line 451
    iget-object v4, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->pause()V

    .line 453
    iput-boolean v11, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    .line 454
    sput v11, Lcom/ecareme/mear/Mear;->playingStatus:I

    .line 455
    const-string v4, "PlayStatus"

    invoke-direct {p0, v4, v12}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    .line 469
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 416
    .restart local v0       #_playTmp:Ljava/io/File;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :cond_5
    move-object v2, v3

    goto/16 :goto_0

    .line 420
    .end local v0           #_playTmp:Ljava/io/File;
    :cond_6
    :try_start_1
    sget-boolean v4, Lcom/ecareme/mear/Mear;->onlinemode:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 421
    move-object v2, v3

    goto/16 :goto_0

    .line 423
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 425
    .local v1, e:Ljava/lang/Exception;
    move-object v2, v3

    goto/16 :goto_0

    .line 439
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v4, v10}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setInLib(Z)V

    .line 442
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setN(Ljava/lang/String;)V

    .line 443
    sget-object v4, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->setFileId(J)V

    goto :goto_1

    .line 457
    :cond_8
    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    .line 458
    const-string v4, "PlayStatus"

    invoke-direct {p0, v4, v12}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    .line 459
    iget-object v4, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/yostore/aws/service/PlayerService;->playPath(Ljava/lang/String;)V

    goto :goto_2

    .line 462
    :cond_9
    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    .line 463
    iget-object v4, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/yostore/aws/service/PlayerService;->playPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private preSong()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 573
    new-instance v0, Lnet/yostore/aws/service/PlayerService$preSongTask;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/service/PlayerService$preSongTask;-><init>(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/service/PlayerService$preSongTask;)V

    invoke-virtual {v0, v1}, Lnet/yostore/aws/service/PlayerService$preSongTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    return-void
.end method

.method private resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    .line 144
    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 147
    sput-object v1, Lnet/yostore/aws/view/navigate/PlayListActivity;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPath:Ljava/lang/String;

    .line 149
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->apicookies:Lnet/yostore/aws/api/entity/ApiCookies;

    .line 150
    return-void
.end method

.method private shuffleNextSong()V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 652
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 653
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 655
    :cond_1
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 656
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 657
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 658
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0, v0}, Lnet/yostore/aws/service/PlayerService;->playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 667
    :goto_0
    return-void

    .line 659
    :cond_2
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 660
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 662
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 663
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0, v0}, Lnet/yostore/aws/service/PlayerService;->playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_0
.end method

.method private shufflePreSong()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 670
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 672
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 674
    :cond_1
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    if-lt v0, v2, :cond_2

    .line 675
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 676
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 677
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0, v0}, Lnet/yostore/aws/service/PlayerService;->playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 686
    :goto_0
    return-void

    .line 678
    :cond_2
    iget v0, p0, Lnet/yostore/aws/service/PlayerService;->repeatMode:I

    if-ne v0, v2, :cond_3

    .line 679
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 680
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 681
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    .line 682
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0, v0}, Lnet/yostore/aws/service/PlayerService;->playSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_0
.end method


# virtual methods
.method public generateShuffleIdx()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    .line 632
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 638
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 640
    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    if-ltz v1, :cond_2

    .line 641
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    iget v3, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-interface {v2, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 642
    iput v4, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    .line 647
    :goto_1
    return-void

    .line 634
    :cond_0
    iget v1, p0, Lnet/yostore/aws/service/PlayerService;->currentPosition:I

    if-eq v0, v1, :cond_1

    .line 635
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->shuffleList:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->songs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lnet/yostore/aws/service/PlayerService;->shufflePosition:I

    goto :goto_1
.end method

.method public initPlayer()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->nm:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 154
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->nm:Landroid/app/NotificationManager;

    .line 157
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    .line 163
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    .line 164
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 168
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    new-instance v2, Lnet/yostore/aws/service/PlayerService$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/PlayerService$2;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 197
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    new-instance v2, Lnet/yostore/aws/service/PlayerService$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/PlayerService$3;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 205
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    new-instance v2, Lnet/yostore/aws/service/PlayerService$4;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/PlayerService$4;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 276
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 277
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 278
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    new-instance v1, Lnet/yostore/aws/service/PlayerService$TeleListener;

    invoke-direct {v1, p0}, Lnet/yostore/aws/service/PlayerService$TeleListener;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 280
    .end local v0           #mTelephonyMgr:Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method

.method public mediaStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-boolean v0, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->deCompleteListen()V

    .line 375
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 376
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->nm:Landroid/app/NotificationManager;

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 377
    iput-boolean v2, p0, Lnet/yostore/aws/service/PlayerService;->isMPopening:Z

    .line 378
    sput v2, Lcom/ecareme/mear/Mear;->playingStatus:I

    .line 379
    const-string v0, "PlayStatus"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/service/PlayerService;->broadcastMsg(Ljava/lang/String;I)V

    .line 381
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1065
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mBinder:Lnet/yostore/aws/service/PlayerServiceInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->contentIntent:Landroid/app/PendingIntent;

    .line 110
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    new-instance v2, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    .line 113
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lnet/yostore/aws/service/PlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.asus.webstorage.id"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, mFilter01:Landroid/content/IntentFilter;
    new-instance v2, Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;

    invoke-direct {v2, p0}, Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    iput-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mReceiver:Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;

    .line 121
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->mReceiver:Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;

    invoke-virtual {p0, v2, v1}, Lnet/yostore/aws/service/PlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #mFilter01:Landroid/content/IntentFilter;
    :goto_0
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->initPlayer()V

    .line 132
    return-void

    .line 123
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 356
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mReceiver:Lnet/yostore/aws/service/PlayerService$mMyCloudReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/service/PlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    .line 363
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/service/PlayerService;->mp:Landroid/media/MediaPlayer;

    .line 366
    :cond_0
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerService;->resetData()V

    .line 367
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService;->stopSelf()V

    .line 369
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 343
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 349
    return-void
.end method

.method public updateNotification(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "idIcon"
    .parameter "text"

    .prologue
    .line 1079
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, title:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lnet/yostore/aws/service/PlayerService;->note:Landroid/app/Notification;

    .line 1083
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->note:Landroid/app/Notification;

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v0, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1086
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService;->nm:Landroid/app/NotificationManager;

    const v2, 0x7f030008

    .line 1089
    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService;->note:Landroid/app/Notification;

    .line 1086
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1102
    return-void
.end method
