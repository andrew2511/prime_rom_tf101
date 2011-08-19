.class Lcom/android/server/asus/DockManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "DockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asus/DockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    const-string v1, "DockManagerService"

    const-string v2, "mBootCompleteReceiver onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    iget-object v1, v1, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_c
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mSystemReady:Z
    invoke-static {v2}, Lcom/android/server/asus/DockManagerService;->access$500(Lcom/android/server/asus/DockManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 252
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$5;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->sendDockVersionIntent()V
    invoke-static {v2}, Lcom/android/server/asus/DockManagerService;->access$700(Lcom/android/server/asus/DockManagerService;)V

    .line 258
    .end local v0           #msg:Landroid/os/Message;
    :cond_2f
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v2
.end method
