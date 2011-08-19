.class Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFreeSpaceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method private constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 590
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v1}, Lcom/google/android/music/OfflineMusicManager;->access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 592
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v3}, Lcom/google/android/music/OfflineMusicManager;->access$1800(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/music/dl/IDownloadManager;->getTotalSpace()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$1702(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 593
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v3}, Lcom/google/android/music/OfflineMusicManager;->access$1800(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/music/dl/IDownloadManager;->getAvailableFreeSpace()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$1902(Lcom/google/android/music/OfflineMusicManager;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 602
    return-void

    .line 598
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 599
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OfflineMusicManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public taskCompleted()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$2000(Lcom/google/android/music/OfflineMusicManager;)V

    .line 606
    return-void
.end method
