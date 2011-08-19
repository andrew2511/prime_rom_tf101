.class public interface abstract Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceHooks"
.end annotation


# virtual methods
.method public abstract addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelTryNext()V
.end method

.method public abstract getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyChange(Ljava/lang/String;)V
.end method

.method public abstract removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportMediaServerDied()V
.end method

.method public abstract reportTrackEnded()V
.end method

.method public abstract streamSong(J)Lcom/google/android/music/dl/DownloadOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
