.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2751
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2755
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2756
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2761
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_15a

    move v4, v5

    .line 2863
    :goto_8
    return v4

    .line 2765
    :sswitch_9
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 2862
    :goto_16
    const v4, 0xc366

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(II)I

    move v4, v6

    .line 2863
    goto :goto_8

    .line 2769
    :sswitch_20
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v4

    const v5, 0x10028

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_16

    .line 2773
    :sswitch_2d
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_16

    .line 2776
    :sswitch_33
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiStateMachine$StateChangeResult;

    .line 2777
    .local v3, stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    iget-object v2, v3, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2782
    .local v2, state:Landroid/net/wifi/SupplicantState;
    const v4, 0xc367

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2783
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 2785
    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 2786
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2788
    :cond_5d
    sget-object v4, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v2, v4, :cond_6c

    .line 2790
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, v3, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2793
    :cond_6c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 2794
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_16

    .line 2798
    .end local v2           #state:Landroid/net/wifi/SupplicantState;
    .end local v3           #stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    :sswitch_87
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    goto :goto_16

    .line 2801
    :sswitch_8b
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    goto :goto_16

    .line 2804
    :sswitch_8f
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z

    goto :goto_16

    .line 2807
    :sswitch_93
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2808
    .local v1, netId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2817
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_ba

    .line 2818
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 2824
    :goto_9e
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v4

    const v5, 0x10056

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 2826
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 2829
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_16

    .line 2820
    :cond_ba
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    goto :goto_9e

    .line 2832
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #netId:I
    :sswitch_be
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2833
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_16

    .line 2837
    :sswitch_d8
    invoke-static {v6}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    move v4, v5

    .line 2839
    goto/16 :goto_8

    .line 2841
    :sswitch_de
    const-string v4, "WifiStateMachine"

    const-string v5, "Network connection established"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$3802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2843
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$3702(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2846
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 2847
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2848
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2850
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2851
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2852
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_16

    .line 2855
    :sswitch_141
    const-string v4, "WifiStateMachine"

    const-string v5, "Network connection lost"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2857
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_16

    .line 2761
    :sswitch_data_15a
    .sparse-switch
        0x10024 -> :sswitch_de
        0x10025 -> :sswitch_141
        0x10026 -> :sswitch_d8
        0x10027 -> :sswitch_33
        0x10028 -> :sswitch_20
        0x10029 -> :sswitch_2d
        0x1002a -> :sswitch_9
        0x1002b -> :sswitch_9
        0x1004a -> :sswitch_87
        0x1004b -> :sswitch_8b
        0x1004c -> :sswitch_8f
        0x10056 -> :sswitch_93
        0x10059 -> :sswitch_be
    .end sparse-switch
.end method
