.class public Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
.super Landroid/os/Binder;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMusicPlaybackService"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 2834
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2835
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    .line 2836
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    .locals 3
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 2950
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2954
    :goto_0
    return v1

    .line 2951
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2952
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2954
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->getErrorType()I

    move-result v0

    return v0
.end method

.method public getMediaList()Lcom/google/android/music/medialist/SongList;
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$2700(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    return-object v0
.end method

.method public getNextSongs(I)[J
    .locals 1
    .parameter "songCount"

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->getNextSongs(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLocal()Z
    .locals 1

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$5400(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasRemote()Z
    .locals 1

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$5500(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasValidPlaylist()Z
    .locals 1

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v0

    return v0
.end method

.method public isCurrentSongLoaded()Z
    .locals 1

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->hasCursor()Z

    move-result v0

    return v0
.end method

.method public isInErrorState()Z
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isInErrorState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 2870
    return-void
.end method

.method public openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
    .locals 1
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 2842
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 2858
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 2861
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    .line 2867
    return-void
.end method

.method public removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    .locals 3
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 2959
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    :goto_0
    return-void

    .line 2960
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2961
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->setQueuePosition(I)V

    .line 2852
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->setRepeatMode(I)V

    .line 2915
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 2909
    return-void
.end method

.method public setUIVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->setUIVisible(Z)V

    .line 2967
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 2864
    return-void
.end method
