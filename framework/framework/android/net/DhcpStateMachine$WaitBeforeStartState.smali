.class Landroid/net/DhcpStateMachine$WaitBeforeStartState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeStartState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 226
    const/4 v0, 0x1

    .line 228
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    .line 243
    :pswitch_6
    const/4 v0, 0x0

    .line 246
    :goto_7
    :pswitch_7
    return v0

    .line 230
    :pswitch_8
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v2, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    #calls: Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 231
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_7

    .line 233
    :cond_1e
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_7

    .line 237
    :pswitch_2a
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeStartState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v2

    #calls: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_7

    .line 228
    :pswitch_data_36
    .packed-switch 0x20001
        :pswitch_7
        :pswitch_2a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
