.class Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;
.super Ljava/lang/Object;
.source "DockManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asus/DockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirmwareUpdateRunnable"
.end annotation


# instance fields
.field fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 3
    .parameter
    .parameter "fw"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

    .line 763
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 768
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$1500(Lcom/android/server/asus/DockManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 770
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

    invoke-virtual {v3}, Lcom/android/server/asus/DockManagerService$FirmwareData;->getUpdateCommand()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, cmd:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->shellCmd(Ljava/lang/String;)I
    invoke-static {v3, v0}, Lcom/android/server/asus/DockManagerService;->access$1600(Lcom/android/server/asus/DockManagerService;Ljava/lang/String;)I

    move-result v2

    .line 772
    .local v2, ret:I
    const-string v3, "DockManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    const/4 v4, 0x1

    #calls: Lcom/android/server/asus/DockManagerService;->updateProgressNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/server/asus/DockManagerService;->access$1700(Lcom/android/server/asus/DockManagerService;Z)V

    .line 779
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$1500(Lcom/android/server/asus/DockManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 782
    packed-switch v2, :pswitch_data_80

    .line 792
    :pswitch_53
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->fw:Lcom/android/server/asus/DockManagerService$FirmwareData;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 793
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 796
    .end local v1           #msg:Landroid/os/Message;
    :goto_69
    return-void

    .line 784
    :pswitch_6a
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_69

    .line 788
    :pswitch_75
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;->this$0:Lcom/android/server/asus/DockManagerService;

    #getter for: Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/asus/DockManagerService;->access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_69

    .line 782
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_53
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method
