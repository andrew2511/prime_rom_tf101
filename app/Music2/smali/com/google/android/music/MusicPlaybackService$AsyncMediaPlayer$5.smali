.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;
.super Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2807
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(JIFI)V
    .locals 4
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    const-wide/16 v2, 0x0

    .line 2810
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5000(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2814
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0, p4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5102(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;F)F

    .line 2815
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5202(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 2816
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0, v2, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5300(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;J)V

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2817
    :cond_1
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    aget-object v0, v0, p3

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0, v2, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$5300(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;J)V

    goto :goto_0
.end method
