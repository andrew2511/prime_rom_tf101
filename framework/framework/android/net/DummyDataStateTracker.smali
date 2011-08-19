.class public Landroid/net/DummyDataStateTracker;
.super Ljava/lang/Object;
.source "DummyDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DummyDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Z

.field private mIsDefaultOrHipri:Z

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 46
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 47
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 51
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mIsDefaultOrHipri:Z

    .line 59
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(I)V

    iput-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 60
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 195
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 199
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/DummyDataStateTracker;->log(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method


# virtual methods
.method public defaultRouteSet(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 91
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 184
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 79
    return-void
.end method

.method public reconnect()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/DummyDataStateTracker;->setTeardownRequested(Z)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public setDataEnable(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 172
    return-void
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .registers 2
    .parameter "isRequested"

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 145
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 69
    iput-object p2, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Landroid/net/DummyDataStateTracker;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public teardown()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Dummy data state: none, dummy!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
