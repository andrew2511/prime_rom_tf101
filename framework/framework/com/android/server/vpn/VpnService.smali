.class abstract Lcom/android/server/vpn/VpnService;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnService$NotificationHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Landroid/net/vpn/VpnProfile;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final REMOTE_IP:Ljava/lang/String; = "net.ipremote"

.field private static final VPN_DNS1:Ljava/lang/String; = "vpn.dns1"

.field private static final VPN_DNS2:Ljava/lang/String; = "vpn.dns2"

.field private static final VPN_IS_DOWN:Ljava/lang/String; = "down"

.field private static final VPN_IS_UP:Ljava/lang/String; = "ok"

.field private static final VPN_STATUS:Ljava/lang/String; = "vpn.status"


# instance fields
.field private final TAG:Ljava/lang/String;

.field transient mContext:Landroid/content/Context;

.field private mDaemons:Lcom/android/server/vpn/VpnDaemons;

.field private mError:Ljava/lang/Throwable;

.field private mLocalIf:Ljava/lang/String;

.field private mLocalIp:Ljava/lang/String;

.field private transient mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<TE;>.NotificationHelper;"
        }
    .end annotation
.end field

.field private mOriginalDns1:Ljava/lang/String;

.field private mOriginalDns2:Ljava/lang/String;

.field private mOriginalDomainSuffices:Ljava/lang/String;

.field mProfile:Landroid/net/vpn/VpnProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mState:Landroid/net/vpn/VpnState;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    .line 61
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 74
    new-instance v0, Lcom/android/server/vpn/VpnDaemons;

    invoke-direct {v0}, Lcom/android/server/vpn/VpnDaemons;-><init>()V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    .line 403
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vpn/VpnService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/vpn/VpnService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkConnectivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/vpn/VpnService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkDns()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vpn/VpnService;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private anyError()Z
    .registers 2

    .prologue
    .line 239
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private broadcastConnectivity(Landroid/net/vpn/VpnState;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 291
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, m:Landroid/net/vpn/VpnManager;
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 293
    .local v0, err:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne p1, v2, :cond_5a

    if-eqz v0, :cond_5a

    .line 294
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1f

    .line 295
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 310
    .end local v0           #err:Ljava/lang/Throwable;
    :goto_1e
    return-void

    .line 297
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_1f
    instance-of v2, v0, Lcom/android/server/vpn/VpnConnectingError;

    if-eqz v2, :cond_33

    .line 298
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/server/vpn/VpnConnectingError;

    .end local v0           #err:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/server/vpn/VpnConnectingError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1e

    .line 300
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_33
    const-string v2, "ok"

    const-string/jumbo v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 301
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1e

    .line 304
    :cond_4e
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1e

    .line 308
    :cond_5a
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    goto :goto_1e
.end method

.method private checkConnectivity()Z
    .registers 3

    .prologue
    .line 360
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnDaemons;->anyDaemonStopped()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->isLocalIpChanged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 361
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connectivity lost"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private checkDns()V
    .registers 4

    .prologue
    .line 369
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v2, "net.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, dns1:Ljava/lang/String;
    const-string/jumbo v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, vpnDns1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 373
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 375
    :cond_1e
    return-void
.end method

.method private isLocalIpChanged()Z
    .registers 8

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v6, 0x1

    .line 379
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 380
    .local v2, localIp:Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 382
    .local v1, localIf:Ljava/net/NetworkInterface;
    if-eqz v1, :cond_19

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 383
    :cond_19
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       local If changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3d} :catch_41

    move v3, v6

    .line 391
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :goto_3e
    return v3

    .line 387
    .restart local v1       #localIf:Ljava/net/NetworkInterface;
    .restart local v2       #localIp:Ljava/net/InetAddress;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_3e

    .line 389
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 390
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v4, "isLocalIpChanged()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v6

    .line 391
    goto :goto_3e
.end method

.method private onBeforeConnect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 176
    const-string/jumbo v0, "vpn.dns1"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "vpn.dns2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "vpn.status"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       VPN UP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vpn.status"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private declared-synchronized onConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnDaemons;->closeSockets()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveOriginalDns()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveAndSetDomainSuffices()V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    .line 217
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 218
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 221
    monitor-exit p0

    return-void

    .line 209
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onError(I)V
    .registers 3
    .parameter "errorCode"

    .prologue
    .line 169
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Lcom/android/server/vpn/VpnConnectingError;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/VpnConnectingError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 159
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_1c

    .line 160
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   multiple errors occur, record the last one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1c
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->onDisconnect()V

    .line 166
    return-void
.end method

.method private declared-synchronized onFinalCleanUp()V
    .registers 3

    .prologue
    .line 224
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onFinalCleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2f

    if-ne v0, v1, :cond_10

    .line 236
    :goto_e
    monitor-exit p0

    return-void

    .line 229
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->anyError()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 231
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDns()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDomainSuffices()V

    .line 233
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 235
    const-string/jumbo v0, "vpn.status"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2f

    goto :goto_e

    .line 224
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreOriginalDns()V
    .registers 9

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const-string/jumbo v1, "vpn.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 246
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restore original dns prop: %s --> %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "net.dns1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restore original dns prop: %s --> %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "net.dns2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "net.dns1"

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "net.dns2"

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_58
    return-void
.end method

.method private restoreOriginalDomainSuffices()V
    .registers 4

    .prologue
    .line 281
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore original suffices --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "net.dns.search"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private saveAndSetDomainSuffices()V
    .registers 5

    .prologue
    .line 272
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v1, "net.dns.search"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save original suffices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, list:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 276
    const-string v1, "net.dns.search"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_34
    return-void
.end method

.method private saveLocalIpAndInterface(Ljava/lang/String;)V
    .registers 9
    .parameter "serverIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 344
    .local v3, s:Ljava/net/DatagramSocket;
    const/16 v2, 0x50

    .line 345
    .local v2, port:I
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 346
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 347
    .local v1, localIp:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    .line 348
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 349
    .local v0, localIf:Ljava/net/NetworkInterface;
    if-nez v0, :cond_31

    const/4 v4, 0x0

    :goto_1f
    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 351
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Local interface is empty!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    :cond_31
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    .line 354
    :cond_36
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Local IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", if: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private saveOriginalDns()V
    .registers 6

    .prologue
    .line 256
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    .line 257
    const-string v0, "net.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "save original dns prop: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private setState(Landroid/net/vpn/VpnState;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 286
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService;->broadcastConnectivity(Landroid/net/vpn/VpnState;)V

    .line 288
    return-void
.end method

.method private setVpnDns()V
    .registers 7

    .prologue
    .line 263
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string/jumbo v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, vpnDns1:Ljava/lang/String;
    const-string/jumbo v2, "vpn.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, vpnDns2:Ljava/lang/String;
    const-string v2, "net.dns1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v2, "net.dns2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set vpn dns prop: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method private startConnectivityMonitor()V
    .registers 3

    .prologue
    .line 313
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/vpn/VpnService$1;

    invoke-direct {v1, p0}, Lcom/android/server/vpn/VpnService$1;-><init>(Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 340
    return-void
.end method

.method private waitUntilConnectedOrTimedout()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 186
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    const/16 v2, 0x50

    if-ge v1, v2, :cond_10

    .line 187
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-eq v2, v3, :cond_21

    .line 203
    :cond_10
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-ne v2, v3, :cond_20

    .line 204
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connecting timed out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 206
    :cond_20
    :goto_20
    return-void

    .line 189
    :cond_21
    const-string v2, "ok"

    const-string/jumbo v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 191
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onConnected()V

    goto :goto_20

    .line 194
    :cond_34
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnDaemons;->getSocketError()I

    move-result v0

    .line 195
    .local v0, err:I
    if-eqz v0, :cond_40

    .line 196
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(I)V

    goto :goto_20

    .line 200
    :cond_40
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method protected abstract connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getDaemons()Lcom/android/server/vpn/VpnDaemons;
    .registers 2

    .prologue
    .line 89
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    return-object v0
.end method

.method protected getIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProfile()Landroid/net/vpn/VpnProfile;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method getState()Landroid/net/vpn/VpnState;
    .registers 2

    .prologue
    .line 118
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method isIdle()Z
    .registers 3

    .prologue
    .line 122
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method declared-synchronized onConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 127
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    sget-object v2, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 129
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnDaemons;->stopAll()V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, serverIp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->saveLocalIpAndInterface(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onBeforeConnect()V

    .line 133
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/vpn/VpnService;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->waitUntilConnectedOrTimedout()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_26

    .line 135
    const/4 v2, 0x1

    .line 138
    .end local v1           #serverIp:Ljava/lang/String;
    :goto_24
    monitor-exit p0

    return v2

    .line 136
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/lang/Throwable;
    :try_start_28
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 138
    const/4 v2, 0x0

    goto :goto_24

    .line 127
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onDisconnect()V
    .registers 4

    .prologue
    .line 144
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "disconnecting VPN..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;->showDisconnect()V

    .line 148
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnDaemons;->stopAll()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1c

    .line 152
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_29

    .line 154
    :goto_1a
    monitor-exit p0

    return-void

    .line 149
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "onDisconnect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2c

    .line 152
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 144
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1

    .line 152
    :catchall_2c
    move-exception v1

    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V

    throw v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_29
.end method

.method setContext(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V
    .registers 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    .local p2, profile:Landroid/net/vpn/VpnProfile;,"TE;"
    iput-object p2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 108
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/server/vpn/VpnService$NotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    .line 111
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 112
    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     recovered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V

    .line 115
    :cond_37
    return-void
.end method

.method protected sleep(I)V
    .registers 4
    .parameter "ms"

    .prologue
    .line 397
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    .line 400
    :goto_7
    return-void

    .line 398
    :catch_8
    move-exception v0

    goto :goto_7
.end method
