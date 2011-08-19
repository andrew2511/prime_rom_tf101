.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"


# static fields
.field static factory:Ljava/net/DatagramSocketImplFactory;


# instance fields
.field address:Ljava/net/InetAddress;

.field impl:Ljava/net/DatagramSocketImpl;

.field isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private lock:Ljava/lang/Object;

.field port:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 42
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 44
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 46
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 74
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 42
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 44
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 46
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 92
    if-nez p2, :cond_1f

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    :goto_1b
    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 93
    return-void

    :cond_1f
    move-object v0, p2

    .line 92
    goto :goto_1b
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .parameter "socketImpl"

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 42
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 44
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 46
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 532
    if-nez p1, :cond_1c

    .line 533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 535
    :cond_1c
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 536
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Ljava/net/DatagramSocket;->port:I

    .line 42
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 44
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 46
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 48
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 551
    if-eqz p1, :cond_42

    .line 552
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_37

    .line 553
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local address not an InetSocketAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_37
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 558
    :cond_42
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v2, :cond_5d

    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v2}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    :goto_4c
    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 560
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2}, Ljava/net/DatagramSocketImpl;->create()V

    .line 561
    if-eqz p1, :cond_58

    .line 563
    :try_start_55
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_58
    .catch Ljava/net/SocketException; {:try_start_55 .. :try_end_58} :catch_63

    .line 570
    :cond_58
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 571
    return-void

    .line 558
    :cond_5d
    new-instance v2, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    invoke-direct {v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>()V

    goto :goto_4c

    .line 564
    :catch_63
    move-exception v1

    .line 565
    .local v1, e:Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 566
    throw v1
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 5
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const-class v1, Ljava/net/DatagramSocket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 514
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 515
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 517
    :cond_c
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v2, :cond_1b

    .line 518
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Factory already set"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 513
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_18
    move-exception v2

    monitor-exit v1

    throw v2

    .line 520
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1b
    :try_start_1b
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_18

    .line 521
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 9
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 599
    const/4 v3, 0x0

    .line 600
    .local v3, localPort:I
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 601
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_58

    .line 602
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_2a

    .line 603
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 606
    :cond_2a
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 607
    .local v2, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 608
    if-nez v1, :cond_51

    .line 609
    new-instance v4, Ljava/net/SocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    :cond_51
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 612
    invoke-virtual {p0, v3}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 614
    .end local v2           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_58
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v3, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 615
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 616
    return-void
.end method

.method checkClosedAndBind(Z)V
    .registers 5
    .parameter "bind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 575
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_f
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_24

    .line 578
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 579
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 582
    :cond_24
    return-void
.end method

.method checkListen(I)V
    .registers 6
    .parameter "aPort"

    .prologue
    .line 104
    if-ltz p1, :cond_7

    const v1, 0xffff

    if-le p1, v1, :cond_20

    .line 105
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 108
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_29

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 111
    :cond_29
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 120
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 121
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "anAddress"
    .parameter "aPort"

    .prologue
    .line 136
    if-eqz p1, :cond_9

    if-ltz p2, :cond_9

    const v1, 0xffff

    if-le p2, v1, :cond_11

    .line 137
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Address null or destination port out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_11
    iget-object v1, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_14
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 142
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3d

    .line 168
    :goto_1b
    return-void

    .line 145
    :cond_1c
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_3d
    .catch Ljava/net/SocketException; {:try_start_1d .. :try_end_20} :catch_48

    .line 150
    :goto_20
    :try_start_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 151
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2f

    .line 152
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_3d

    .line 160
    :cond_2f
    :goto_2f
    :try_start_2f
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3d
    .catch Ljava/net/SocketException; {:try_start_2f .. :try_end_34} :catch_4a

    .line 164
    :goto_34
    :try_start_34
    iput-object p1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 165
    iput p2, p0, Ljava/net/DatagramSocket;->port:I

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 167
    monitor-exit v1

    goto :goto_1b

    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v2

    .line 155
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    goto :goto_2f

    .line 146
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catch_48
    move-exception v2

    goto :goto_20

    .line 161
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :catch_4a
    move-exception v2

    goto :goto_34
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 9
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 630
    if-nez p1, :cond_a

    .line 631
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "remoteAddr == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    :cond_a
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_2b

    .line 635
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote address not an InetSocketAddress: "

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

    .line 639
    :cond_2b
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 640
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_52

    .line 641
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host is unresolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 644
    :cond_52
    iget-object v3, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 646
    const/4 v4, 0x1

    :try_start_56
    invoke-virtual {p0, v4}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 648
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 649
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_70

    .line 650
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 651
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_9e

    .line 662
    :cond_70
    :goto_70
    :try_start_70
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7d} :catch_a1

    .line 668
    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 669
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Ljava/net/DatagramSocket;->port:I

    .line 670
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 671
    monitor-exit v3

    .line 672
    return-void

    .line 653
    :cond_8e
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_70

    .line 671
    .end local v2           #security:Ljava/lang/SecurityManager;
    :catchall_9e
    move-exception v4

    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_7d .. :try_end_a0} :catchall_9e

    throw v4

    .line 663
    .restart local v2       #security:Ljava/lang/SecurityManager;
    :catch_a1
    move-exception v4

    goto :goto_7d
.end method

.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 188
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 190
    :try_start_12
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_1a} :catch_25

    .line 196
    monitor-exit p0

    return-void

    .line 186
    :cond_1c
    :try_start_1c
    new-instance v1, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 192
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, e:Ljava/net/SocketException;
    :try_start_27
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 194
    throw v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_22
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 178
    :cond_d
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    goto :goto_c
.end method

.method public getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 772
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 6

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    const/4 v3, 0x0

    .line 232
    :goto_7
    return-object v3

    .line 220
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_11

    .line 221
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_7

    .line 223
    :cond_11
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3}, Ljava/net/DatagramSocketImpl;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 225
    .local v0, anAddr:Ljava/net/InetAddress;
    :try_start_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 226
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 227
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_25} :catch_27

    :cond_25
    move-object v3, v0

    .line 232
    goto :goto_7

    .line 229
    .end local v2           #security:Ljava/lang/SecurityManager;
    :catch_27
    move-exception v3

    move-object v1, v3

    .line 230
    .local v1, e:Ljava/lang/SecurityException;
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    const/4 v0, -0x1

    .line 248
    :goto_7
    return v0

    .line 245
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 246
    const/4 v0, 0x0

    goto :goto_7

    .line 248
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 712
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 713
    const/4 v0, 0x0

    .line 715
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Ljava/net/DatagramSocket;->port:I

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 275
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 274
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 699
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 700
    const/4 v0, 0x0

    .line 702
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 745
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 283
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 282
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 294
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 293
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 798
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 680
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 807
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 689
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    return v0
.end method

.method isMulticastSocket()Z
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 13
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {p0, v6}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 316
    new-instance v5, Ljava/net/DatagramPacket;

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 319
    .local v5, tempPack:Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 321
    .local v0, copy:Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 323
    .local v2, security:Ljava/lang/SecurityManager;
    iget-object v6, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-nez v6, :cond_19

    if-eqz v2, :cond_43

    .line 327
    :cond_19
    if-nez p1, :cond_2d

    .line 328
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_21

    .line 312
    .end local v0           #copy:Z
    .end local v2           #security:Ljava/lang/SecurityManager;
    .end local v5           #tempPack:Ljava/net/DatagramPacket;
    :catchall_21
    move-exception v6

    monitor-exit p0

    throw v6

    .line 364
    .restart local v0       #copy:Z
    .restart local v2       #security:Ljava/lang/SecurityManager;
    .local v3, senderAddr:Ljava/net/InetAddress;
    .local v4, senderPort:I
    .restart local v5       #tempPack:Ljava/net/DatagramPacket;
    :catch_24
    move-exception v6

    move-object v1, v6

    .line 365
    .local v1, e:Ljava/lang/SecurityException;
    if-nez v0, :cond_2d

    .line 367
    :try_start_28
    iget-object v6, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_21

    .line 333
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v3           #senderAddr:Ljava/net/InetAddress;
    .end local v4           #senderPort:I
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 337
    :try_start_2e
    iget-object v6, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v4

    .line 338
    .restart local v4       #senderPort:I
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_21
    .catch Ljava/net/SocketException; {:try_start_2e .. :try_end_37} :catch_70

    move-result-object v3

    .line 356
    .restart local v3       #senderAddr:Ljava/net/InetAddress;
    :goto_38
    :try_start_38
    iget-object v6, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_21

    if-nez v6, :cond_9d

    .line 360
    :try_start_3c
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_21
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_43} :catch_24

    .line 381
    .end local v3           #senderAddr:Ljava/net/InetAddress;
    .end local v4           #senderPort:I
    :cond_43
    if-eqz v0, :cond_b2

    .line 382
    :try_start_45
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v9

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/DatagramPacket;->setLengthOnly(I)V

    .line 387
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 388
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_21

    .line 395
    :goto_6e
    monitor-exit p0

    return-void

    .line 339
    :catch_70
    move-exception v6

    move-object v1, v6

    .line 340
    .local v1, e:Ljava/net/SocketException;
    :try_start_72
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "The socket does not support the operation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 343
    new-instance v5, Ljava/net/DatagramPacket;

    .end local v5           #tempPack:Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getCapacity()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getCapacity()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 345
    .restart local v5       #tempPack:Ljava/net/DatagramPacket;
    iget-object v6, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 348
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 349
    .restart local v3       #senderAddr:Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    .line 350
    .restart local v4       #senderPort:I
    const/4 v0, 0x1

    goto :goto_38

    .line 352
    .end local v3           #senderAddr:Ljava/net/InetAddress;
    .end local v4           #senderPort:I
    :cond_9c
    throw v1

    .line 370
    .end local v1           #e:Ljava/net/SocketException;
    .restart local v3       #senderAddr:Ljava/net/InetAddress;
    .restart local v4       #senderPort:I
    :cond_9d
    iget v6, p0, Ljava/net/DatagramSocket;->port:I

    if-ne v6, v4, :cond_a9

    iget-object v6, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v6, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 374
    :cond_a9
    if-nez v0, :cond_2d

    .line 376
    iget-object v6, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    goto/16 :goto_2d

    .line 390
    .end local v3           #senderAddr:Ljava/net/InetAddress;
    .end local v4           #senderPort:I
    :cond_b2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getCapacity()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 391
    iget-object v6, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v6, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_be
    .catchall {:try_start_72 .. :try_end_be} :catchall_21

    goto :goto_6e
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 6
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 411
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 412
    .local v0, packAddr:Ljava/net/InetAddress;
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-eqz v2, :cond_36

    .line 413
    if-eqz v0, :cond_26

    .line 414
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    if-eq v2, v3, :cond_30

    .line 415
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Packet address mismatch with connected address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_26
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 419
    iget v2, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 435
    :cond_30
    :goto_30
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 436
    return-void

    .line 423
    :cond_36
    if-nez v0, :cond_40

    .line 424
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination address is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_40
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 427
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_30

    .line 428
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_30

    .line 431
    :cond_50
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_30
.end method

.method public setBroadcast(Z)V
    .registers 5
    .parameter "broadcast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 760
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 761
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 5
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 448
    if-nez p1, :cond_a

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "networkInterface == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_a
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x2000

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 454
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 471
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 472
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 471
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 474
    :cond_f
    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 475
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_c

    .line 476
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 5
    .parameter "reuse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 733
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 734
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 460
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 461
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 460
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 463
    :cond_f
    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 464
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_c

    .line 465
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 490
    monitor-enter p0

    if-gez p1, :cond_e

    .line 491
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 490
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 493
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 494
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 495
    monitor-exit p0

    return-void
.end method

.method public setTrafficClass(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 784
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_10

    .line 785
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 787
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 788
    return-void
.end method
