.class public Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;
.super Landroid/app/Service;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadManagerService"
.end annotation


# instance fields
.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 693
    new-instance v0, Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 694
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadManager binded via: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 699
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onCreate()V

    .line 700
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 738
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 739
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onDestroy()V

    .line 740
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 705
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 706
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {p0, v2}, Lcom/google/android/music/dl/DownloadManager;->access$100(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V

    .line 727
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 713
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v2, "com.google.android.music.accountchanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadManager;->stop()V

    .line 715
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$200(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_0

    .line 716
    :cond_3
    const-string v2, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$300(Lcom/google/android/music/dl/DownloadManager;)V

    .line 718
    const-string v2, "deleteCachedFiles"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 721
    .local v1, fileCleanupRequested:Z
    if-eqz v1, :cond_1

    .line 722
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$200(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_0
.end method
