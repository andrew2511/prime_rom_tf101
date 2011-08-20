.class Landroid/net/wifi/WifiStateMachine$ConnectingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2867
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 11

    .prologue
    const v9, 0x10010

    .line 2872
    const v6, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2874
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v6

    if-nez v6, :cond_46

    .line 2876
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/HierarchicalStateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$9202(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 2878
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 2879
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v7, 0x20001

    invoke-virtual {v6, v7}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2900
    :goto_45
    return-void

    .line 2881
    :cond_46
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->getIpConfiguration(I)Landroid/net/DhcpInfoInternal;

    move-result-object v1

    .line 2883
    .local v1, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2884
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 2885
    .local v4, netd:Landroid/os/INetworkManagementService;
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 2886
    .local v3, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    iput-object v6, v3, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 2887
    const-string v6, "[up]"

    iput-object v6, v3, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 2889
    :try_start_69
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2890
    const-string v6, "WifiStateMachine"

    const-string v7, "Static IP configuration succeeded"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x1000f

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_81} :catch_82
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_81} :catch_a2

    goto :goto_45

    .line 2892
    :catch_82
    move-exception v6

    move-object v5, v6

    .line 2893
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_45

    .line 2895
    .end local v5           #re:Landroid/os/RemoteException;
    :catch_a2
    move-exception v6

    move-object v2, v6

    .line 2896
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_45
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "message"

    .prologue
    const v5, 0x1004a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2905
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_d2

    move v1, v2

    .line 2967
    :goto_c
    return v1

    .line 2907
    :sswitch_d
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 2908
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v1

    const v2, 0x20006

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2966
    :cond_1e
    :goto_1e
    :sswitch_1e
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v3

    .line 2967
    goto :goto_c

    .line 2911
    :sswitch_28
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 2912
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_46

    .line 2913
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 2914
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1e

    .line 2915
    :cond_46
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1e

    .line 2916
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;)V

    .line 2917
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1e

    .line 2921
    :sswitch_5b
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 2922
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1e

    .line 2925
    :sswitch_70
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;)V

    .line 2926
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1e

    .line 2929
    :sswitch_81
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 2930
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1e

    .line 2934
    :sswitch_90
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2935
    .local v0, netId:I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v0, :cond_1e

    move v1, v2

    .line 2938
    goto/16 :goto_c

    .line 2940
    .end local v0           #netId:I
    :sswitch_a1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1e

    .line 2946
    :sswitch_a8
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2947
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1e

    .line 2950
    :sswitch_b4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1e

    .line 2951
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2952
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1e

    .line 2957
    :sswitch_c4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1e

    .line 2961
    :sswitch_cb
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1e

    .line 2905
    :sswitch_data_d2
    .sparse-switch
        0x1000e -> :sswitch_a8
        0x1000f -> :sswitch_5b
        0x10010 -> :sswitch_70
        0x10024 -> :sswitch_1e
        0x10047 -> :sswitch_c4
        0x10048 -> :sswitch_b4
        0x1004a -> :sswitch_81
        0x1004d -> :sswitch_cb
        0x10056 -> :sswitch_90
        0x10057 -> :sswitch_a1
        0x20004 -> :sswitch_d
        0x20005 -> :sswitch_28
    .end sparse-switch
.end method
