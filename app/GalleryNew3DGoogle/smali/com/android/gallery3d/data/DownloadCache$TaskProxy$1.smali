.class Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-static {v0}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->access$400(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->removeProxy(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->access$802(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;Z)Z

    .line 383
    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
