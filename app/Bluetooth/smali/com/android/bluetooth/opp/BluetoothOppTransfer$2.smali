.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bleutooth.device.action.UUID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 560
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 562
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    const/4 v0, -0x1

    .line 564
    .local v0, channel:I
    const-string v5, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 565
    .local v3, uuid:[Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    .line 566
    array-length v5, v3

    new-array v4, v5, [Landroid/os/ParcelUuid;

    .line 567
    .local v4, uuids:[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 568
    aget-object v5, v3, v2

    check-cast v5, Landroid/os/ParcelUuid;

    aput-object v5, v4, v2

    .line 567
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_0
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 572
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 576
    .end local v2           #i:I
    .end local v4           #uuids:[Landroid/os/ParcelUuid;
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v5

    const/16 v6, 0xc

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6, v0, v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 580
    .end local v0           #channel:I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #uuid:[Landroid/os/Parcelable;
    :cond_2
    return-void
.end method
