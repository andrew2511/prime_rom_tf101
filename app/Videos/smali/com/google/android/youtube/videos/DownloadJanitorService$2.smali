.class Lcom/google/android/youtube/videos/DownloadJanitorService$2;
.super Ljava/lang/Object;
.source "DownloadJanitorService.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DownloadJanitorService;->scanFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$requestComplete:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "e"

    .prologue
    .line 163
    instance-of v1, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-ne v1, v2, :cond_1

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-static {v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-static {v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    :goto_0
    return-void

    .line 171
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "License ok for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 182
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method
