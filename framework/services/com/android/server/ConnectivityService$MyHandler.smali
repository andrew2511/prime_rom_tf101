.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 1733
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1734
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1739
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_194

    .line 1856
    :cond_7
    :goto_7
    return-void

    .line 1741
    :sswitch_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1742
    .local v4, info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 1743
    .local v9, type:I
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    .line 1749
    .local v8, state:Landroid/net/NetworkInfo$State;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, v11, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/android/server/ConnectivityService$NetworkAttributes;->mLastState:Landroid/net/NetworkInfo$State;

    if-ne v11, v8, :cond_5d

    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, v11, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v11, v11, v9

    iget v11, v11, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-ne v11, v12, :cond_5d

    .line 1754
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping ConnectivityChange for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_7

    .line 1760
    :cond_5d
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, v11, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v11, v11, v9

    iput-object v8, v11, Lcom/android/server/ConnectivityService$NetworkAttributes;->mLastState:Landroid/net/NetworkInfo$State;

    .line 1762
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConnectivityChange for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 1773
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    and-int/lit8 v11, v11, 0x7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v12

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v12, v12, 0x3

    or-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v12

    shl-int/lit8 v12, v12, 0x9

    or-int v3, v11, v12

    .line 1776
    .local v3, eventLogParam:I
    const v11, 0xc364

    invoke-static {v11, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1779
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_c9

    .line 1781
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v11, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 1782
    :cond_c9
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_d4

    .line 1783
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v11, v4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 1784
    :cond_d4
    sget-object v11, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_df

    .line 1792
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v11, v4}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 1793
    :cond_df
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_7

    .line 1794
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v11, v4}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 1798
    .end local v3           #eventLogParam:I
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v8           #state:Landroid/net/NetworkInfo$State;
    .end local v9           #type:I
    :sswitch_ea
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1799
    .restart local v4       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 1800
    .restart local v9       #type:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V
    invoke-static {v11, v9}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 1803
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v9           #type:I
    :sswitch_f9
    const/4 v0, 0x0

    .line 1804
    .local v0, causedBy:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v11

    .line 1805
    :try_start_fd
    iget v12, p1, Landroid/os/Message;->arg1:I

    iget-object v13, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)I

    move-result v13

    if-ne v12, v13, :cond_122

    iget-object v12, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_122

    .line 1807
    iget-object v12, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1808
    iget-object v12, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    :cond_122
    monitor-exit v11
    :try_end_123
    .catchall {:try_start_fd .. :try_end_123} :catchall_145

    .line 1811
    if-eqz v0, :cond_7

    .line 1812
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetTransition Wakelock for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " released by timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1810
    :catchall_145
    move-exception v12

    :try_start_146
    monitor-exit v11
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v12

    .line 1816
    .end local v0           #causedBy:Ljava/lang/String;
    :sswitch_148
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1817
    .local v10, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_7

    .line 1821
    .end local v10           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_151
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1822
    .local v5, netType:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1823
    .local v1, condition:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v11, v5, v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_7

    .line 1828
    .end local v1           #condition:I
    .end local v5           #netType:I
    :sswitch_15c
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1829
    .restart local v5       #netType:I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 1830
    .local v7, sequence:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v11, v5, v7}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_7

    .line 1835
    .end local v5           #netType:I
    .end local v7           #sequence:I
    :sswitch_167
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1836
    .local v6, preference:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v11, v6}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 1841
    .end local v6           #preference:I
    :sswitch_170
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v12, :cond_17c

    move v2, v12

    .line 1842
    .local v2, enabled:Z
    :goto_175
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetBackgroundData(Z)V
    invoke-static {v11, v2}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    .end local v2           #enabled:Z
    :cond_17c
    move v2, v13

    .line 1841
    goto :goto_175

    .line 1847
    :sswitch_17e
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v12, :cond_18a

    move v2, v12

    .line 1848
    .restart local v2       #enabled:Z
    :goto_183
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v11, v2}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    .end local v2           #enabled:Z
    :cond_18a
    move v2, v13

    .line 1847
    goto :goto_183

    .line 1853
    :sswitch_18c
    iget-object v11, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 1739
    nop

    :sswitch_data_194
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_ea
        0x65 -> :sswitch_148
        0x67 -> :sswitch_167
        0x68 -> :sswitch_151
        0x69 -> :sswitch_15c
        0x6a -> :sswitch_170
        0x6b -> :sswitch_17e
        0x6c -> :sswitch_f9
        0x6d -> :sswitch_18c
    .end sparse-switch
.end method
