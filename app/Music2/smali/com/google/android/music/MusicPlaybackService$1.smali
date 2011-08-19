.class Lcom/google/android/music/MusicPlaybackService$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/MusicPlaybackService$ServiceHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    .locals 1
    .parameter "songid"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    return v0
.end method

.method public cancelTryNext()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    return-void
.end method

.method public getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method public notifyChange(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    .locals 1
    .parameter "songid"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 216
    return-void
.end method

.method public reportMediaServerDied()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method public reportTrackEnded()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 237
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    return-void
.end method

.method public streamSong(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "xId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->streamSong(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method
