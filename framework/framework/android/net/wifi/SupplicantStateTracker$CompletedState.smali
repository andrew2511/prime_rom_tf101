.class Landroid/net/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/HierarchicalState;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$102(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 297
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 299
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$702(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 301
    :cond_16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 305
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_48

    move v2, v4

    .line 327
    :goto_7
    return v2

    .line 307
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$StateChangeResult;

    .line 308
    .local v1, stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 309
    .local v0, state:Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    #calls: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 311
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_2d

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_2d

    sget-object v2, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_2d

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_2d

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_2f

    .line 327
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    .end local v1           #stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    :cond_2d
    :goto_2d
    const/4 v2, 0x1

    goto :goto_7

    .line 318
    .restart local v0       #state:Landroid/net/wifi/SupplicantState;
    .restart local v1       #stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    :cond_2f
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #calls: Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/WifiStateMachine$StateChangeResult;)V
    invoke-static {v2, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/WifiStateMachine$StateChangeResult;)V

    goto :goto_2d

    .line 321
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    .end local v1           #stateChangeResult:Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    :sswitch_35
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #calls: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 322
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$500(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v3

    #calls: Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$1000(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2d

    .line 305
    :sswitch_data_48
    .sparse-switch
        0x10027 -> :sswitch_8
        0x1006f -> :sswitch_35
    .end sparse-switch
.end method
