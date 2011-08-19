.class Landroid/media/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 4
    .parameter
    .parameter "cb"

    .prologue
    .line 738
    iput-object p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 739
    iput-object p2, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 740
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .prologue
    .line 743
    iget-object v3, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 744
    :try_start_7
    const-string v4, "AudioService"

    const-string/jumbo v5, "setMode() client died"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 746
    .local v1, index:I
    if-gez v1, :cond_25

    .line 747
    const-string v4, "AudioService"

    const-string/jumbo v5, "unregistered setMode() client died"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_23
    :goto_23
    monitor-exit v3

    .line 778
    return-void

    .line 749
    :cond_25
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 752
    if-nez v1, :cond_23

    .line 755
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$SetModeDeathHandler;

    .line 756
    .local v0, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v0}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result v2

    .line 757
    .local v2, mode:I
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v4}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v4

    if-eq v4, v2, :cond_23

    .line 758
    invoke-static {v2}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v4

    if-nez v4, :cond_23

    .line 759
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v4, v2}, Landroid/media/AudioService;->access$1102(Landroid/media/AudioService;I)I

    .line 760
    if-eqz v2, :cond_23

    .line 761
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_8e

    .line 762
    :try_start_5d
    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v5}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)V

    .line 763
    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v5}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_91

    .line 764
    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 766
    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 771
    :goto_89
    monitor-exit v4

    goto :goto_23

    :catchall_8b
    move-exception v5

    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_5d .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v5

    .line 777
    .end local v0           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v1           #index:I
    .end local v2           #mode:I
    :catchall_8e
    move-exception v4

    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_8e

    throw v4

    .line 769
    .restart local v0       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v1       #index:I
    .restart local v2       #mode:I
    :cond_91
    :try_start_91
    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    iget-object v6, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioService;->clearAllScoClients(Landroid/os/IBinder;Z)V
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_8b

    goto :goto_89
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 785
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 781
    iput p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 782
    return-void
.end method
