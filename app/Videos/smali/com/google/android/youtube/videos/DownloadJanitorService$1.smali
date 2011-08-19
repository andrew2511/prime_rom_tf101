.class Lcom/google/android/youtube/videos/DownloadJanitorService$1;
.super Ljava/lang/Thread;
.source "DownloadJanitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DownloadJanitorService;->onRestored()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

.field final synthetic val$snapshot:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->val$snapshot:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v3, "scanFile error"

    const-string v7, "Janitor done"

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->val$snapshot:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v0, download:Lcom/google/android/youtube/core/transfer/Transfer;
    :try_start_1
    iget-wide v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    const-wide/32 v5, 0x40000

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$000(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 96
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :try_start_2
    const-string v3, "scanFile error"

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 104
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "Janitor aborted"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-static {v3}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 107
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 108
    const-string v3, "Janitor done"

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 110
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 97
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 98
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :try_start_4
    const-string v3, "scanFile error"

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 106
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-static {v4}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 107
    iget-object v4, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v4}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 108
    const-string v4, "Janitor done"

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    throw v3

    .line 99
    .restart local v0       #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    const-string v3, "scanFile error"

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 106
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-static {v3}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;)V

    .line 107
    iget-object v3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 108
    const-string v3, "Janitor done"

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_1
.end method
