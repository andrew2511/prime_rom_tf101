.class Lcom/google/android/music/MusicPlaybackService$18;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 2065
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 2067
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, className:Ljava/lang/String;
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2069
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$202(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 2073
    :goto_0
    return-void

    .line 2071
    :cond_0
    const-string v1, "MediaPlaybackService"

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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    .line 2076
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, className:Ljava/lang/String;
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2078
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$202(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 2082
    :goto_0
    return-void

    .line 2080
    :cond_0
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown disconnection from class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
