.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 503
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 522
    :cond_5
    :goto_5
    return-void

    .line 505
    :pswitch_6
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_d
    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v1, v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;Z)V

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    goto :goto_d

    .line 508
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 509
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 510
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_5

    .line 515
    .end local v0           #address:Ljava/lang/String;
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 516
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 517
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_5

    .line 503
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_24
    .end packed-switch
.end method
