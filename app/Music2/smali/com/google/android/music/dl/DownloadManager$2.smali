.class final Lcom/google/android/music/dl/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

.field final synthetic val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadManager$2;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    iput-object p3, p0, Lcom/google/android/music/dl/DownloadManager$2;->val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 751
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, className:Ljava/lang/String;
    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    move-object v2, v0

    .line 757
    .local v2, playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/dl/DownloadManager$2$1;

    invoke-direct {v4, p0, v2}, Lcom/google/android/music/dl/DownloadManager$2$1;-><init>(Lcom/google/android/music/dl/DownloadManager$2;Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;)V

    invoke-static {v3, v4}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 798
    .end local v2           #playbackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v3, "MusicDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown connection to class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 801
    return-void
.end method
