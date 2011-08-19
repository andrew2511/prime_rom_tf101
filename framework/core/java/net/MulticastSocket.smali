.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# static fields
.field private static final NO_INTERFACE_INDEX:I = 0x0

.field private static final UNSET_INTERFACE_INDEX:I = -0x1


# instance fields
.field private interfaceSet:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 536
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/InetAddress;)V
    .registers 6
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 287
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_23

    .line 288
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a multicast group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_23
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 291
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 294
    :cond_2c
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 9
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 258
    if-nez p1, :cond_e

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "groupAddress == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_e
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getFirstAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 263
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No address associated with interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_2f
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_50

    .line 267
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group address not an InetSocketAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    :cond_50
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 272
    .local v1, groupAddr:Ljava/net/InetAddress;
    if-nez v1, :cond_73

    .line 273
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group address has no address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_73
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_92

    .line 277
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a multicast group: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_92
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 280
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_9b

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 283
    :cond_9b
    return-void
.end method


# virtual methods
.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 7
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 507
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_24

    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 509
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a

    .line 511
    :try_start_12
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 512
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 513
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->isBound:Z
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2a
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_22} :catch_2d

    .line 518
    monitor-exit p0

    return-void

    .line 507
    :cond_24
    :try_start_24
    new-instance v1, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_b

    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 514
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 515
    .local v0, e:Ljava/net/SocketException;
    :try_start_2f
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 516
    throw v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_2a
.end method

.method public getInterface()Ljava/net/InetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 73
    iget-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    if-nez v4, :cond_38

    .line 74
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 76
    .local v1, ipvXaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 79
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    .line 80
    .local v3, theInterface:Ljava/net/NetworkInterface;
    if-eqz v3, :cond_36

    .line 81
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 83
    .local v0, addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_36

    .line 84
    :cond_24
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 86
    .local v2, nextAddress:Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_24

    move-object v4, v2

    .line 95
    .end local v0           #addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1           #ipvXaddress:Ljava/net/InetAddress;
    .end local v2           #nextAddress:Ljava/net/InetAddress;
    .end local v3           #theInterface:Ljava/net/NetworkInterface;
    :goto_35
    return-object v4

    .restart local v1       #ipvXaddress:Ljava/net/InetAddress;
    :cond_36
    move-object v4, v1

    .line 93
    goto :goto_35

    .line 95
    .end local v1           #ipvXaddress:Ljava/net/InetAddress;
    :cond_38
    iget-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    goto :goto_35
.end method

.method public getLoopbackMode()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 549
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 109
    invoke-virtual {p0, v8}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 113
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 115
    .local v4, theIndex:Ljava/lang/Integer;
    :try_start_9
    iget-object v6, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_15
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_15} :catch_69

    .line 120
    :goto_15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_37

    .line 121
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 122
    .local v5, theInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1f
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 123
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 124
    .local v1, nextInterface:Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1f

    move-object v6, v1

    .line 150
    .end local v1           #nextInterface:Ljava/net/NetworkInterface;
    .end local v5           #theInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_36
    return-object v6

    .line 131
    :cond_37
    iget-object v6, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 132
    .local v2, theAddress:Ljava/net/InetAddress;
    if-eqz v2, :cond_67

    .line 133
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 134
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    goto :goto_36

    .line 140
    :cond_4e
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/net/InetAddress;

    .line 141
    .local v3, theAddresses:[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 142
    sget-object v6, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    aput-object v6, v3, v8

    .line 146
    :goto_5b
    new-instance v6, Ljava/net/NetworkInterface;

    const/4 v7, -0x1

    invoke-direct {v6, v9, v9, v3, v7}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I)V

    goto :goto_36

    .line 144
    :cond_62
    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    aput-object v6, v3, v8

    goto :goto_5b

    .end local v3           #theAddresses:[Ljava/net/InetAddress;
    :cond_67
    move-object v6, v9

    .line 150
    goto :goto_36

    .line 116
    .end local v2           #theAddress:Ljava/net/InetAddress;
    :catch_69
    move-exception v6

    goto :goto_15
.end method

.method public getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 177
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 162
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    .line 192
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 193
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 4
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 215
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 216
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    .line 232
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 233
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 4
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 253
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 254
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .registers 8
    .parameter "pack"
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 312
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 313
    .local v1, packAddr:Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 314
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_17

    .line 315
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 316
    invoke-virtual {v2, v1, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    .line 321
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0

    .line 322
    .local v0, currTTL:I
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_43

    int-to-byte v3, v0

    if-eq v3, p2, :cond_43

    .line 324
    and-int/lit16 v3, p2, 0xff

    :try_start_26
    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 325
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_3e

    .line 327
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 332
    :goto_31
    return-void

    .line 318
    .end local v0           #currTTL:I
    :cond_32
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_17

    .line 327
    .restart local v0       #currTTL:I
    :catchall_3e
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    throw v3

    .line 330
    :cond_43
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    goto :goto_31
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .registers 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 347
    if-nez p1, :cond_e

    .line 348
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 350
    :cond_e
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 351
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v3, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 365
    :cond_1b
    :goto_1b
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 366
    .local v0, theInterface:Ljava/net/NetworkInterface;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    if-eqz v1, :cond_43

    .line 368
    :try_start_27
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_36
    .catch Ljava/net/SocketException; {:try_start_27 .. :try_end_36} :catch_75

    .line 383
    :cond_36
    :goto_36
    return-void

    .line 352
    .end local v0           #theInterface:Ljava/net/NetworkInterface;
    :cond_37
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1b

    .line 353
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, v3, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 356
    iput-object p1, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    goto :goto_1b

    .line 373
    .restart local v0       #theInterface:Ljava/net/NetworkInterface;
    :cond_43
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 375
    :try_start_49
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_49 .. :try_end_55} :catch_56

    goto :goto_36

    .line 377
    :catch_56
    move-exception v1

    goto :goto_36

    .line 380
    :cond_58
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_36

    .line 381
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address not associated with an interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :catch_75
    move-exception v1

    goto :goto_36
.end method

.method public setLoopbackMode(Z)V
    .registers 5
    .parameter "disable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 564
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    if-nez p1, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 565
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 10
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x10

    .line 397
    invoke-virtual {p0, v4}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 399
    if-nez p1, :cond_10

    .line 401
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "netInterface == null"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :cond_10
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getFirstAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 405
    .local v0, firstAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_2f

    .line 406
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No address associated with interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_2f
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_49

    .line 412
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v4, v7, v5}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 418
    :try_start_3d
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_49
    .catch Ljava/net/SocketException; {:try_start_3d .. :try_end_49} :catch_a8

    .line 430
    :cond_49
    :goto_49
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 431
    .local v3, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .line 432
    .local v1, found:Z
    const/4 v0, 0x0

    .line 433
    :cond_4f
    :goto_4f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_65

    const/4 v4, 0x1

    if-eq v1, v4, :cond_65

    .line 434
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 435
    .local v2, theAddress:Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet4Address;

    if-eqz v4, :cond_4f

    .line 436
    move-object v0, v2

    .line 437
    const/4 v1, 0x1

    goto :goto_4f

    .line 440
    .end local v2           #theAddress:Ljava/net/InetAddress;
    :cond_65
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-nez v4, :cond_8f

    .line 444
    if-eqz v0, :cond_76

    .line 445
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v7, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 472
    :goto_72
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    .line 473
    return-void

    .line 452
    :cond_76
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No address associated with interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 457
    :cond_8f
    if-eqz v0, :cond_96

    .line 458
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v7, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 465
    :cond_96
    :try_start_96
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x1f

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_a5
    .catch Ljava/net/SocketException; {:try_start_96 .. :try_end_a5} :catch_a6

    goto :goto_72

    .line 467
    :catch_a6
    move-exception v4

    goto :goto_72

    .line 419
    .end local v1           #found:Z
    .end local v3           #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_a8
    move-exception v4

    goto :goto_49
.end method

.method public setTTL(B)V
    .registers 3
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 502
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 503
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 5
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 484
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_23

    .line 485
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeToLive out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_23
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 488
    return-void
.end method
