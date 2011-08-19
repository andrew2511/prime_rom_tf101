.class public Landroid/bluetooth/BluetoothTetheringDataTracker;
.super Ljava/lang/Object;
.source "BluetoothTetheringDataTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field private static final NETWORKTYPE:Ljava/lang/String; = "BLUETOOTH_TETHER"

.field private static final TAG:Ljava/lang/String; = "BluetoothTethering"

.field private static mIface:Ljava/lang/String;

.field public static sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothTetheringDataTracker$1;-><init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 68
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x7

    const-string v2, "BLUETOOTH_TETHER"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 69
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 70
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 72
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 73
    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothTetheringDataTracker;->setTeardownRequested(Z)V

    .line 74
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;
    .registers 2

    .prologue
    .line 77
    const-class v0, Landroid/bluetooth/BluetoothTetheringDataTracker;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;

    if-nez v1, :cond_e

    new-instance v1, Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;-><init>()V

    sput-object v1, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;

    .line 78
    :cond_e
    sget-object v1, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 250
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void
.end method

.method public getDefaultGatewayAddr()I
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    return-void
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public setDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 191
    const-string v0, "BluetoothTethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .registers 3
    .parameter "isRequested"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .parameter "context"
    .parameter "target"

    .prologue
    .line 97
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 100
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_12

    .line 101
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 103
    :cond_12
    return-void
.end method

.method public declared-synchronized startReverseTether(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .parameter "iface"
    .parameter "device"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    sput-object p1, Landroid/bluetooth/BluetoothTetheringDataTracker;->mIface:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/bluetooth/BluetoothTetheringDataTracker$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothTetheringDataTracker$2;-><init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 287
    .local v0, dhcpThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 288
    monitor-exit p0

    return-void

    .line 263
    .end local v0           #dhcpThread:Ljava/lang/Thread;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 167
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized stopReverseTether(Ljava/lang/String;)V
    .registers 7
    .parameter "iface"

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 293
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 294
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 295
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 302
    monitor-exit p0

    return-void

    .line 291
    .end local v0           #msg:Landroid/os/Message;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_26

    .line 122
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_14

    .line 126
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_26
    return v3
.end method
