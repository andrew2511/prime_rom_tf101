.class Lcom/google/android/music/dl/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v1}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->getNextDownload()[J

    move-result-object v0

    .line 810
    .local v0, xids:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/dl/DownloadManager;->updateQueue([JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)V

    goto :goto_0
.end method
