.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingHid"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .registers 4

    .prologue
    .line 744
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingHid state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    .line 746
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4f

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_4f

    .line 748
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingHid state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_4f
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    .line 751
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 752
    :cond_64
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "message"

    .prologue
    .line 756
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutgoingHid State->Processing Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 757
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 758
    .local v0, deferMsg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_7e

    .line 813
    const/4 v1, 0x0

    .line 815
    :goto_25
    return v1

    .line 766
    :sswitch_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 815
    :cond_2b
    :goto_2b
    :sswitch_2b
    const/4 v1, 0x1

    goto :goto_25

    .line 770
    :sswitch_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2b

    .line 773
    :sswitch_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9300(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    .line 780
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-eqz v1, :cond_2b

    .line 781
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 782
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2b

    .line 787
    :sswitch_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2b

    .line 796
    :sswitch_5e
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-eqz v1, :cond_2b

    .line 797
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 798
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2b

    .line 807
    :sswitch_6c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_2b

    .line 810
    :sswitch_72
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$9800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2b

    .line 758
    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_26
        0x4 -> :sswitch_39
        0x5 -> :sswitch_26
        0x6 -> :sswitch_52
        0x32 -> :sswitch_26
        0x33 -> :sswitch_5e
        0x34 -> :sswitch_26
        0x35 -> :sswitch_5e
        0x36 -> :sswitch_26
        0x37 -> :sswitch_2b
        0x38 -> :sswitch_6c
        0x64 -> :sswitch_6c
        0x65 -> :sswitch_6c
        0x66 -> :sswitch_72
    .end sparse-switch
.end method
