.class public Lcom/android/server/vpn/VpnServiceBinder;
.super Landroid/net/vpn/IVpnService$Stub;
.source "VpnServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnServiceBinder$3;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/vpn/VpnService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vpn/VpnServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/net/vpn/IVpnService$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;
    .registers 8
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vpn/VpnProfile;",
            ")",
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v4, Lcom/android/server/vpn/VpnServiceBinder$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4a

    .line 114
    const/4 v4, 0x0

    .end local p1
    :goto_10
    return-object v4

    .line 94
    .restart local p1
    :pswitch_11
    new-instance v0, Lcom/android/server/vpn/L2tpService;

    invoke-direct {v0}, Lcom/android/server/vpn/L2tpService;-><init>()V

    .line 95
    .local v0, l2tp:Lcom/android/server/vpn/L2tpService;
    iget-object v4, p0, Lcom/android/server/vpn/VpnServiceBinder;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {v0, v4, p1}, Lcom/android/server/vpn/L2tpService;->setContext(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v0

    .line 96
    goto :goto_10

    .line 99
    .end local v0           #l2tp:Lcom/android/server/vpn/L2tpService;
    .restart local p1
    :pswitch_1f
    new-instance v2, Lcom/android/server/vpn/PptpService;

    invoke-direct {v2}, Lcom/android/server/vpn/PptpService;-><init>()V

    .line 100
    .local v2, pptp:Lcom/android/server/vpn/PptpService;
    iget-object v4, p0, Lcom/android/server/vpn/VpnServiceBinder;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-virtual {v2, v4, p1}, Lcom/android/server/vpn/PptpService;->setContext(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v2

    .line 101
    goto :goto_10

    .line 104
    .end local v2           #pptp:Lcom/android/server/vpn/PptpService;
    .restart local p1
    :pswitch_2d
    new-instance v3, Lcom/android/server/vpn/L2tpIpsecPskService;

    invoke-direct {v3}, Lcom/android/server/vpn/L2tpIpsecPskService;-><init>()V

    .line 105
    .local v3, psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    iget-object v4, p0, Lcom/android/server/vpn/VpnServiceBinder;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-virtual {v3, v4, p1}, Lcom/android/server/vpn/L2tpIpsecPskService;->setContext(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v3

    .line 106
    goto :goto_10

    .line 109
    .end local v3           #psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    .restart local p1
    :pswitch_3b
    new-instance v1, Lcom/android/server/vpn/L2tpIpsecService;

    invoke-direct {v1}, Lcom/android/server/vpn/L2tpIpsecService;-><init>()V

    .line 110
    .local v1, l2tpIpsec:Lcom/android/server/vpn/L2tpIpsecService;
    iget-object v4, p0, Lcom/android/server/vpn/VpnServiceBinder;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-virtual {v1, v4, p1}, Lcom/android/server/vpn/L2tpIpsecService;->setContext(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v1

    .line 111
    goto :goto_10

    .line 92
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1f
        :pswitch_2d
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "p"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService;->isIdle()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 60
    :goto_e
    monitor-exit p0

    return v1

    .line 53
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 55
    .local v0, s:Lcom/android/server/vpn/VpnService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder$1;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_25

    .line 60
    const/4 v1, 0x1

    goto :goto_e

    .line 52
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect()V
    .registers 4

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v1, :cond_7

    .line 74
    :goto_5
    monitor-exit p0

    return-void

    .line 66
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 67
    .local v0, s:Lcom/android/server/vpn/VpnService;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 69
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/vpn/VpnServiceBinder$2;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 65
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getState(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .registers 4
    .parameter "p"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 80
    :cond_17
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-virtual {v0}, Landroid/net/vpn/VpnState;->toString()Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2a

    move-result-object v0

    .line 82
    :goto_1d
    monitor-exit p0

    return-object v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService;->getState()Landroid/net/vpn/VpnState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vpn/VpnState;->toString()Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    move-result-object v0

    goto :goto_1d

    .line 78
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService;->isIdle()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
