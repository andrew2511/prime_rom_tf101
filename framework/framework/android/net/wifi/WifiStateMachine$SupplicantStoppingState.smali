.class Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2461
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2465
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2466
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 2470
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_34

    .line 2497
    const/4 v0, 0x0

    .line 2500
    :goto_6
    return v0

    .line 2472
    :sswitch_7
    const-string v0, "WifiStateMachine"

    const-string v1, "Supplicant connection received while stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :goto_e
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2500
    const/4 v0, 0x1

    goto :goto_6

    .line 2475
    :sswitch_18
    const-string v0, "WifiStateMachine"

    const-string v1, "Supplicant connection lost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 2477
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_e

    .line 2494
    :sswitch_2e
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_e

    .line 2470
    :sswitch_data_34
    .sparse-switch
        0x10001 -> :sswitch_2e
        0x10002 -> :sswitch_2e
        0x1000b -> :sswitch_2e
        0x1000c -> :sswitch_2e
        0x1000d -> :sswitch_2e
        0x1000e -> :sswitch_2e
        0x10015 -> :sswitch_2e
        0x10016 -> :sswitch_2e
        0x1001f -> :sswitch_7
        0x10020 -> :sswitch_18
        0x10048 -> :sswitch_2e
        0x10049 -> :sswitch_2e
        0x1004d -> :sswitch_2e
        0x10050 -> :sswitch_2e
        0x10054 -> :sswitch_2e
        0x10055 -> :sswitch_2e
        0x1005a -> :sswitch_2e
    .end sparse-switch
.end method
