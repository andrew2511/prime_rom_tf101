.class Lcom/android/phone/BluetoothHeadsetService$4;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 431
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 432
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 453
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 437
    .restart local p0
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 444
    :pswitch_0
    const-string v2, "Rfcomm connected"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1802(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 446
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/HeadsetBase;

    .line 447
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 449
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 450
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    goto :goto_0

    .line 439
    .end local v1           #headset:Landroid/bluetooth/HeadsetBase;
    .restart local p0
    :pswitch_1
    const-string v2, "Rfcomm error"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1802(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 441
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
