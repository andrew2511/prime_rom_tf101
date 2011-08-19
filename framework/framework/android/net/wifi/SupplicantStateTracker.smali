.class Landroid/net/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$1;,
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lcom/android/internal/util/HierarchicalState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/HierarchicalState;

.field private mDisconnectState:Lcom/android/internal/util/HierarchicalState;

.field private mDormantState:Lcom/android/internal/util/HierarchicalState;

.field private mHandshakeState:Lcom/android/internal/util/HierarchicalState;

.field private mInactiveState:Lcom/android/internal/util/HierarchicalState;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lcom/android/internal/util/HierarchicalState;

.field private mUninitializedState:Lcom/android/internal/util/HierarchicalState;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .registers 7
    .parameter "context"
    .parameter "wsm"
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 42
    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 46
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 52
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 56
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;

    .line 57
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    .line 58
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/HierarchicalState;

    .line 59
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/HierarchicalState;

    .line 60
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/HierarchicalState;

    .line 61
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/HierarchicalState;

    .line 62
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/HierarchicalState;

    .line 63
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/HierarchicalState;

    .line 68
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 70
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 71
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 72
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 73
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 74
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 75
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 76
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 77
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/HierarchicalState;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 79
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 82
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->start()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/SupplicantStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$108(Landroid/net/wifi/SupplicantStateTracker;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/WifiStateMachine$StateChangeResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/WifiStateMachine$StateChangeResult;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$702(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V

    return-void
.end method

.method private handleNetworkConnectionFailure(I)V
    .registers 3
    .parameter "netId"

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_a

    .line 88
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 92
    :cond_a
    invoke-static {p1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 93
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .registers 6
    .parameter "state"
    .parameter "failedAuth"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    const-string v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    if-eqz p2, :cond_1a

    .line 138
    const-string/jumbo v1, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    :cond_1a
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/WifiStateMachine$StateChangeResult;)V
    .registers 6
    .parameter "stateChangeResult"

    .prologue
    .line 96
    iget-object v0, p1, Landroid/net/wifi/WifiStateMachine$StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 100
    .local v0, supState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    .line 127
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_25
    return-void

    .line 102
    :pswitch_26
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 105
    :pswitch_2c
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 111
    :pswitch_32
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 114
    :pswitch_38
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 117
    :pswitch_3e
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 120
    :pswitch_44
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 124
    :pswitch_4a
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_25

    .line 100
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_38
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method
