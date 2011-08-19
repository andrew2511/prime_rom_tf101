.class Lcom/infraware/filemanager/MTPSyncManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MTPSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/MTPSyncManager;->registerMediaScanReceiver(Landroid/content/Context;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {v3}, Lcom/infraware/filemanager/MTPSyncManager;->access$0(Z)V

    .line 89
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$1()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 92
    :try_start_0
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$2()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 92
    monitor-exit v1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$1()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 103
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$2()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    .line 104
    :try_start_3
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$3()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->access$4()V

    goto :goto_0

    .line 103
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 110
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/infraware/filemanager/MTPSyncManager;->access$0(Z)V

    goto :goto_0
.end method
