.class Landroid/net/wifi/WifiStateMachine$DriverStartingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2504
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2508
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2509
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 2513
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_22

    .line 2542
    const/4 v0, 0x0

    .line 2545
    :goto_6
    return v0

    .line 2515
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    .line 2544
    :goto_12
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2545
    const/4 v0, 0x1

    goto :goto_6

    .line 2539
    :sswitch_1c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_12

    .line 2513
    :sswitch_data_22
    .sparse-switch
        0x1000d -> :sswitch_1c
        0x1000e -> :sswitch_1c
        0x10021 -> :sswitch_7
        0x10024 -> :sswitch_1c
        0x10025 -> :sswitch_1c
        0x10027 -> :sswitch_1c
        0x10028 -> :sswitch_1c
        0x10029 -> :sswitch_1c
        0x1002a -> :sswitch_1c
        0x1002b -> :sswitch_1c
        0x10047 -> :sswitch_1c
        0x10049 -> :sswitch_1c
        0x1004a -> :sswitch_1c
        0x1004b -> :sswitch_1c
        0x1004c -> :sswitch_1c
        0x1004d -> :sswitch_1c
        0x10050 -> :sswitch_1c
        0x10054 -> :sswitch_1c
        0x10055 -> :sswitch_1c
        0x1005a -> :sswitch_1c
    .end sparse-switch
.end method
