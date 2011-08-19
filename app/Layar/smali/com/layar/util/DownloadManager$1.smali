.class Lcom/layar/util/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/layar/util/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    invoke-static {v1}, Lcom/layar/util/DownloadManager;->access$0(Lcom/layar/util/DownloadManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/util/DownloadManager;->access$2(Lcom/layar/util/DownloadManager;Ljava/lang/Thread;)V

    .line 90
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    invoke-static {v1}, Lcom/layar/util/DownloadManager;->access$1(Lcom/layar/util/DownloadManager;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    invoke-static {v2}, Lcom/layar/util/DownloadManager;->access$1(Lcom/layar/util/DownloadManager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 82
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/layar/util/DownloadManager$1;->this$0:Lcom/layar/util/DownloadManager;

    invoke-static {v2}, Lcom/layar/util/DownloadManager;->access$1(Lcom/layar/util/DownloadManager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 80
    .local v0, next:Ljava/lang/Runnable;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
