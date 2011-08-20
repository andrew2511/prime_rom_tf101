.class Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWpsCompletionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3261
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 3265
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3266
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 3270
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_30

    .line 3293
    const/4 v0, 0x0

    .line 3296
    :goto_6
    return v0

    .line 3281
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 3295
    :goto_c
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3296
    const/4 v0, 0x1

    goto :goto_6

    .line 3284
    :sswitch_16
    const-string v0, "WifiStateMachine"

    const-string v1, "Network connection lost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_c

    .line 3290
    :sswitch_23
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_c

    .line 3270
    nop

    :sswitch_data_30
    .sparse-switch
        0x1000e -> :sswitch_7
        0x10024 -> :sswitch_7
        0x10025 -> :sswitch_16
        0x10036 -> :sswitch_7
        0x10048 -> :sswitch_7
        0x1004b -> :sswitch_7
        0x1004c -> :sswitch_7
        0x10056 -> :sswitch_7
        0x10079 -> :sswitch_23
    .end sparse-switch
.end method
