.class Lcom/android/server/vpn/VpnDaemons;
.super Ljava/lang/Object;
.source "VpnDaemons.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final IPSEC:Ljava/lang/String; = "racoon"

.field private static final L2TP:Ljava/lang/String; = "l2tp"

.field private static final L2TP_PORT:Ljava/lang/String; = "1701"

.field private static final MTPD:Ljava/lang/String; = "mtpd"

.field private static final PPP_ARGS_SEPARATOR:Ljava/lang/String; = ""

.field private static final PPTP:Ljava/lang/String; = "pptp"

.field private static final PPTP_PORT:Ljava/lang/String; = "1723"

.field private static final VPN_LINKNAME:Ljava/lang/String; = "vpn"

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDaemonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/vpn/DaemonProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnDaemons;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vpn/VpnDaemons;->mDaemonList:Ljava/util/List;

    return-void
.end method

.method private static addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "linkname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "vpn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "refuse-eap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nodefaultroute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "usepeerdns"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "idle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1800"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mtu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1400"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mru"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1400"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    if-eqz p4, :cond_63

    .line 144
    const-string v0, "+mppe"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_63
    return-void
.end method

.method private getResultFromSocket(Lcom/android/server/vpn/DaemonProxy;)I
    .registers 4
    .parameter "s"

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vpn/DaemonProxy;->getResultFromSocket()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 114
    :goto_4
    return v1

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_4
.end method

.method private declared-synchronized startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 4
    .parameter "daemonName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/vpn/DaemonProxy;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/DaemonProxy;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, daemon:Lcom/android/server/vpn/DaemonProxy;
    iget-object v1, p0, Lcom/android/server/vpn/VpnDaemons;->mDaemonList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v0}, Lcom/android/server/vpn/DaemonProxy;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 107
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0           #daemon:Lcom/android/server/vpn/DaemonProxy;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startMtpd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/vpn/DaemonProxy;
    .registers 12
    .parameter "protocol"
    .parameter "serverIp"
    .parameter "port"
    .parameter "secret"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    if-eqz p4, :cond_1d

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1d
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {v0, p2, p5, p6, p7}, Lcom/android/server/vpn/VpnDaemons;->addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    const-string v2, "mtpd"

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnDaemons;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v1

    .line 128
    .local v1, mtpd:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 129
    return-object v1
.end method


# virtual methods
.method public declared-synchronized anyDaemonStopped()Z
    .registers 6

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnDaemons;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .line 86
    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    iget-object v2, p0, Lcom/android/server/vpn/VpnDaemons;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    VPN daemon gone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3a

    .line 88
    const/4 v2, 0x1

    .line 91
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :goto_36
    monitor-exit p0

    return v2

    :cond_38
    const/4 v2, 0x0

    goto :goto_36

    .line 85
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized closeSockets()V
    .registers 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnDaemons;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 82
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getSocketError()I
    .registers 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/vpn/VpnDaemons;->mDaemonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vpn/DaemonProxy;

    .line 96
    .local v2, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnDaemons;->getResultFromSocket(Lcom/android/server/vpn/DaemonProxy;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v0

    .line 97
    .local v0, errCode:I
    if-eqz v0, :cond_7

    move v3, v0

    .line 99
    .end local v0           #errCode:I
    .end local v2           #s:Lcom/android/server/vpn/DaemonProxy;
    :goto_1a
    monitor-exit p0

    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1a

    .line 95
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public startIpsecForL2tp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 7
    .parameter "serverIp"
    .parameter "pskKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v1, "racoon"

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnDaemons;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v0

    .line 63
    .local v0, ipsec:Lcom/android/server/vpn/DaemonProxy;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "1701"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public startIpsecForL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 9
    .parameter "serverIp"
    .parameter "userKeyKey"
    .parameter "userCertKey"
    .parameter "caCertKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v1, "racoon"

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnDaemons;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v0

    .line 70
    .local v0, ipsec:Lcom/android/server/vpn/DaemonProxy;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "1701"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public startL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 13
    .parameter "serverIp"
    .parameter "secret"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "l2tp"

    const-string v3, "1701"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vpn/VpnDaemons;->startMtpd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v0

    return-object v0
.end method

.method public startPptp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/vpn/DaemonProxy;
    .registers 13
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const-string/jumbo v1, "pptp"

    const-string v3, "1723"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vpn/VpnDaemons;->startMtpd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized stopAll()V
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/vpn/DaemonProxy;

    const-string v1, "mtpd"

    invoke-direct {v0, v1}, Lcom/android/server/vpn/DaemonProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/vpn/DaemonProxy;->stop()V

    .line 77
    new-instance v0, Lcom/android/server/vpn/DaemonProxy;

    const-string/jumbo v1, "racoon"

    invoke-direct {v0, v1}, Lcom/android/server/vpn/DaemonProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/vpn/DaemonProxy;->stop()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
