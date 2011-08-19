.class Lcom/google/android/music/dl/artwork/ArtDownloadService$3;
.super Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;
.source "ArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumArt(J)Ljava/lang/String;
    .locals 8
    .parameter "albumId"

    .prologue
    const/4 v7, 0x0

    .line 194
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v7

    .line 212
    :goto_0
    return-object v2

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-static {v3}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    new-instance v4, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {v4, v5, v6}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    invoke-static {v3, v4}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$202(Lcom/google/android/music/dl/artwork/ArtDownloadService;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-static {v3}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    move-result-object v0

    .line 205
    .local v0, executor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->downloadNow(Ljava/lang/Long;)Ljava/io/File;

    move-result-object v1

    .line 209
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 205
    .end local v0           #executor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0       #executor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    move-object v2, v7

    .line 212
    goto :goto_0
.end method
