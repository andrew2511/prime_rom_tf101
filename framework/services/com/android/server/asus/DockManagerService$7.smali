.class Lcom/android/server/asus/DockManagerService$7;
.super Landroid/os/Handler;
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
    .line 400
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 426
    .end local p0
    :goto_5
    return-void

    .line 405
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    #calls: Lcom/android/server/asus/DockManagerService;->handleCheckFirmware(Z)V
    invoke-static {v0, v1}, Lcom/android/server/asus/DockManagerService;->access$800(Lcom/android/server/asus/DockManagerService;Z)V

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 408
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateDockBattery()V
    invoke-static {v0}, Lcom/android/server/asus/DockManagerService;->access$900(Lcom/android/server/asus/DockManagerService;)V

    goto :goto_5

    .line 411
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/asus/DockManagerService$FirmwareData;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    invoke-static {v0, p0}, Lcom/android/server/asus/DockManagerService;->access$1000(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    goto :goto_5

    .line 414
    .restart local p0
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateFirmwareProgress()V
    invoke-static {v0}, Lcom/android/server/asus/DockManagerService;->access$1100(Lcom/android/server/asus/DockManagerService;)V

    goto :goto_5

    .line 417
    :pswitch_29
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/asus/DockManagerService$FirmwareData;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateFail(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    invoke-static {v0, p0}, Lcom/android/server/asus/DockManagerService;->access$1200(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    goto :goto_5

    .line 420
    .restart local p0
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateSuccess()V
    invoke-static {v0}, Lcom/android/server/asus/DockManagerService;->access$1300(Lcom/android/server/asus/DockManagerService;)V

    goto :goto_5

    .line 423
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$7;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->handleUpdateInterrupt()V
    invoke-static {v0}, Lcom/android/server/asus/DockManagerService;->access$1400(Lcom/android/server/asus/DockManagerService;)V

    goto :goto_5

    .line 403
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_6
        :pswitch_19
        :pswitch_23
        :pswitch_13
        :pswitch_29
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method
