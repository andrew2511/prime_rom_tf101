.class Lcom/google/android/music/dl/DownloadManager$2$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager$2;

.field final synthetic val$playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager$2;Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->this$0:Lcom/google/android/music/dl/DownloadManager$2;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->val$playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 761
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->val$playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->val$playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->this$0:Lcom/google/android/music/dl/DownloadManager$2;

    iget-object v2, v2, Lcom/google/android/music/dl/DownloadManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "music_playlist_prefetch_count"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 773
    .local v1, prefetchCount:I
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->val$playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v2, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getNextSongs(I)[J

    move-result-object v0

    .line 775
    .local v0, playlist:[J
    if-nez v0, :cond_1

    .line 776
    const-string v2, "MusicDL"

    const-string v3, "No queue to download"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->this$0:Lcom/google/android/music/dl/DownloadManager$2;

    iget-object v2, v2, Lcom/google/android/music/dl/DownloadManager$2;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/dl/DownloadManager;->updateQueue([JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)V

    goto :goto_0
.end method

.method public taskCompleted()V
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$2$1;->this$0:Lcom/google/android/music/dl/DownloadManager$2;

    iget-object v1, v1, Lcom/google/android/music/dl/DownloadManager$2;->val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 788
    .local v0, token:Lcom/google/android/music/MusicUtils$ServiceToken;
    if-eqz v0, :cond_0

    .line 789
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 791
    :cond_0
    return-void
.end method
