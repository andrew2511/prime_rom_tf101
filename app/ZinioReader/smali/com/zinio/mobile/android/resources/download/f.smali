.class final Lcom/zinio/mobile/android/resources/download/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/resources/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/resources/download/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 638
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->d()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 640
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": there is no connectivity and the ServiceWorker is not paused. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Pausing the thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Z)V

    .line 647
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": there is connectivity and the ServiceWorker is paused. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Resuming the thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->g()V

    .line 654
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": there is connectivity and the ServiceWorker is not paused. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Restarting the thread."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Z)V

    .line 659
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/f;->a:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->g()V

    .line 661
    :cond_2
    return-void

    .line 638
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
