.class Lcom/android/server/asus/DockManagerService$6;
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
    .line 262
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 265
    const-string v2, "DockManagerService"

    const-string v3, "mUpdateFirmwareReceiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/android/server/asus/DockManagerService$FirmwareData;

    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/asus/DockManagerService$FirmwareData;-><init>(Lcom/android/server/asus/DockManagerService;)V

    .line 268
    .local v0, fw:Lcom/android/server/asus/DockManagerService$FirmwareData;
    const-string v2, "fw_rom"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    .line 269
    const-string v2, "fw_cfg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg:Ljava/lang/String;

    .line 270
    const-string v2, "fw_cfg_d"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg_d:Ljava/lang/String;

    .line 271
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firmware:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    iget-object v2, v2, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_43
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mSystemReady:Z
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$500(Lcom/android/server/asus/DockManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 275
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 276
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$6;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    .end local v1           #msg:Landroid/os/Message;
    :cond_5f
    monitor-exit v2

    .line 279
    return-void

    .line 278
    :catchall_61
    move-exception v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    throw v3
.end method
