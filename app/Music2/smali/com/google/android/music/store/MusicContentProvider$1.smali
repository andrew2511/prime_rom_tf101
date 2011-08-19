.class Lcom/google/android/music/store/MusicContentProvider$1;
.super Ljava/lang/Object;
.source "MusicContentProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MusicContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MusicContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 1601
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, className:Ljava/lang/String;
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->access$002(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 1609
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    monitor-enter v1

    .line 1610
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1611
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    return-void

    .line 1604
    :cond_0
    const-class v1, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    iget-object v1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-static {p2}, Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/artwork/IArtDownloadService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->access$102(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/artwork/IArtDownloadService;)Lcom/google/android/music/dl/artwork/IArtDownloadService;

    goto :goto_0

    .line 1607
    :cond_1
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown connection to class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1611
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    const/4 v2, 0x0

    .line 1615
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, className:Ljava/lang/String;
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->access$002(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 1623
    :goto_0
    return-void

    .line 1618
    :cond_0
    const-class v1, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    iget-object v1, p0, Lcom/google/android/music/store/MusicContentProvider$1;->this$0:Lcom/google/android/music/store/MusicContentProvider;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->access$102(Lcom/google/android/music/store/MusicContentProvider;Lcom/google/android/music/dl/artwork/IArtDownloadService;)Lcom/google/android/music/dl/artwork/IArtDownloadService;

    goto :goto_0

    .line 1621
    :cond_1
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown connection to class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
