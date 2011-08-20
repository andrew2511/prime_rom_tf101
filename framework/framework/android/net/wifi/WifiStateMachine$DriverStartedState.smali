.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2549
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2553
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2555
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2556
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 2563
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z

    .line 2565
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)V

    .line 2567
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)V

    .line 2569
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2571
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2572
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 2573
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 2574
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    .line 2580
    :goto_4a
    return-void

    .line 2576
    :cond_4b
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 2577
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 2578
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_4a
.end method

.method public exit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2648
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2649
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 2650
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$7502(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 2651
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2584
    const/4 v2, 0x1

    .line 2585
    .local v2, eventLoggingEnabled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_110

    move v3, v5

    .line 2643
    :goto_9
    return v3

    .line 2587
    :sswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1d

    .line 2588
    invoke-static {v6}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z

    .line 2640
    :cond_11
    :goto_11
    if-eqz v2, :cond_1b

    .line 2641
    const v3, 0xc366

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1b
    move v3, v6

    .line 2643
    goto :goto_9

    .line 2590
    :cond_1d
    invoke-static {v5}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z

    goto :goto_11

    .line 2594
    :sswitch_21
    const/4 v2, 0x0

    .line 2595
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_30

    move v3, v6

    :goto_27
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z

    .line 2596
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$5802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_11

    :cond_30
    move v3, v5

    .line 2595
    goto :goto_27

    .line 2599
    :sswitch_32
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_3d

    move v4, v6

    :goto_39
    #calls: Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabledNative(Z)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;Z)V

    goto :goto_11

    :cond_3d
    move v4, v5

    goto :goto_39

    .line 2602
    :sswitch_3f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2603
    .local v1, country:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set country code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setCountryCodeCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2605
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set country code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2609
    .end local v1           #country:Ljava/lang/String;
    :sswitch_7f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2610
    .local v0, band:I
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set frequency band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBandCommand(I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 2612
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2614
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_11

    .line 2616
    :cond_b0
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set frequency band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 2620
    .end local v0           #band:I
    :sswitch_ca
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_df

    move v4, v6

    :goto_d1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2622
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z

    goto/16 :goto_11

    :cond_df
    move v4, v5

    .line 2620
    goto :goto_d1

    .line 2625
    :sswitch_e1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2626
    invoke-static {v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 2627
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z

    .line 2628
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    .line 2629
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_11

    .line 2632
    :sswitch_106
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z

    goto/16 :goto_11

    .line 2635
    :sswitch_10b
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z

    goto/16 :goto_11

    .line 2585
    :sswitch_data_110
    .sparse-switch
        0x1000e -> :sswitch_e1
        0x10019 -> :sswitch_ca
        0x10047 -> :sswitch_21
        0x10049 -> :sswitch_a
        0x1004d -> :sswitch_32
        0x10050 -> :sswitch_3f
        0x10054 -> :sswitch_106
        0x10055 -> :sswitch_10b
        0x1005a -> :sswitch_7f
    .end sparse-switch
.end method
