.class public Lnet/yostore/aws/service/InitPlayingList;
.super Ljava/lang/Object;
.source "InitPlayingList.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;Landroid/content/Context;)V
    .locals 0
    .parameter "apicfg"
    .parameter "ctx"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lnet/yostore/aws/service/InitPlayingList;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 28
    iput-object p2, p0, Lnet/yostore/aws/service/InitPlayingList;->ctx:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getCurrentSong()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v0

    sput-object v0, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 130
    :cond_0
    return-void
.end method

.method private getPlayMode()Z
    .locals 2

    .prologue
    .line 82
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getShufflePlay()I

    move-result v1

    sput v1, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 87
    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getRepeatPlay()I

    move-result v1

    sput v1, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 88
    invoke-direct {p0}, Lnet/yostore/aws/service/InitPlayingList;->getCurrentSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateNowPlaying()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 107
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v0

    if-eq v0, v6, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/InitPlayingList;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getPlayList()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 118
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    sget-object v1, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getPlayList()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z

    .line 119
    iget-object v0, p0, Lnet/yostore/aws/service/InitPlayingList;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v1, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getPlayList()J

    move-result-wide v1

    sget-object v3, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getFileId()J

    move-result-wide v3

    sget-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getN()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/ecareme/mear/Mear;->updatePlayingList(Lnet/yostore/aws/api/ApiConfig;JJLjava/lang/String;)V

    .line 123
    :cond_0
    return v6
.end method

.method private updateSongList()Z
    .locals 4

    .prologue
    .line 53
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSongList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 77
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 66
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 67
    .local v0, e:Landroid/os/DeadObjectException;
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/service/InitPlayingList;->ctx:Landroid/content/Context;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 68
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lnet/yostore/aws/service/InitPlayingList;->ctx:Landroid/content/Context;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public update()Z
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lnet/yostore/aws/service/InitPlayingList;->updateSongList()Z

    move-result v1

    .line 36
    .local v1, rtn:Z
    invoke-direct {p0}, Lnet/yostore/aws/service/InitPlayingList;->getPlayMode()Z

    move-result v2

    and-int/2addr v1, v2

    .line 40
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/service/InitPlayingList;->updateNowPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/2addr v1, v2

    .line 47
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method
