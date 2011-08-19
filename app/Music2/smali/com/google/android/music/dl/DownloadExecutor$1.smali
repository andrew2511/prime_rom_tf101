.class Lcom/google/android/music/dl/DownloadExecutor$1;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-static {v1}, Lcom/google/android/music/dl/DownloadExecutor;->access$000(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-static {v1}, Lcom/google/android/music/dl/DownloadExecutor;->access$000(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 237
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$1;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/dl/DownloadExecutor;->access$002(Lcom/google/android/music/dl/DownloadExecutor;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 239
    :cond_0
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
