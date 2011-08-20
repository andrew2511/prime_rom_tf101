.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3300
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 3304
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3305
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3309
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_c4

    move v1, v5

    .line 3348
    :goto_8
    return v1

    .line 3311
    :sswitch_9
    const-string v1, "WifiStateMachine"

    const-string v2, "Stopping Soft AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3314
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-nez v1, :cond_32

    .line 3315
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$11902(Landroid/net/wifi/WifiStateMachine;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 3318
    :cond_32
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const-string/jumbo v2, "wl0.1"

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_48

    .line 3319
    const-string v1, "WifiStateMachine"

    const-string v2, "Untether initiate failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_66

    .line 3326
    :goto_51
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    .line 3347
    :goto_5c
    const v1, 0xc366

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    move v1, v6

    .line 3348
    goto :goto_8

    .line 3323
    :catch_66
    move-exception v1

    move-object v0, v1

    .line 3324
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiStateMachine"

    const-string v2, "Exception in stopAccessPoint()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3329
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_70
    const-string v1, "WifiStateMachine"

    const-string v2, "SoftAP set on a running access point"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #calls: Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v2, v1, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 3331
    const-string v1, "WifiStateMachine"

    const-string v2, "Soft AP start successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0xd

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3333
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_5c

    .line 3335
    :cond_9d
    const-string v1, "WifiStateMachine"

    const-string v2, "Soft AP start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x10002

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_5c

    .line 3341
    :sswitch_b5
    const-string v1, "WifiStateMachine"

    const-string v2, "Cannot start supplicant with a running soft AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_5c

    .line 3309
    nop

    :sswitch_data_c4
    .sparse-switch
        0x1000b -> :sswitch_b5
        0x10015 -> :sswitch_70
        0x10016 -> :sswitch_9
    .end sparse-switch
.end method
