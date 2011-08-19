.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 56
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_2b

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_25
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 58
    return-void

    .line 56
    :cond_2b
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    goto :goto_25
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "dstName"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 11
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 204
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 10
    .parameter "hostName"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 237
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 9
    .parameter "dstAddress"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 258
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 11
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 285
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .registers 10
    .parameter "addr"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 312
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 313
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 8
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v4, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v4, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v4, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v4, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v4, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 84
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_2f

    .line 85
    :cond_27
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Proxy is null or invalid type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_2f
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 88
    .local v1, address:Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_48

    .line 89
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 91
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_55

    .line 92
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, host:Ljava/lang/String;
    :goto_41
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 97
    .local v3, port:I
    invoke-direct {p0, v2, v3}, Ljava/net/Socket;->checkConnectPermission(Ljava/lang/String;I)V

    .line 99
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    :cond_48
    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v4, :cond_5a

    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v4}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v4

    :goto_52
    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 100
    return-void

    .line 94
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_55
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #host:Ljava/lang/String;
    goto :goto_41

    .line 99
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #host:Ljava/lang/String;
    :cond_5a
    new-instance v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-direct {v4, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    goto :goto_52
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .registers 3
    .parameter "impl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 325
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 327
    return-void
.end method

.method private cacheLocalAddress()V
    .registers 3

    .prologue
    .line 1009
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v1, v1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 1010
    return-void
.end method

.method private checkConnectPermission(Ljava/lang/String;I)V
    .registers 4
    .parameter "hostname"
    .parameter "dstPort"

    .prologue
    .line 354
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 355
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 356
    invoke-virtual {v0, p1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 358
    :cond_9
    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "destAddr"
    .parameter "dstPort"

    .prologue
    .line 339
    if-ltz p2, :cond_7

    const v0, 0xffff

    if-le p2, v0, :cond_20

    .line 340
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_20
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/Socket;->checkConnectPermission(Ljava/lang/String;I)V

    .line 343
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .registers 5
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 700
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_e
    if-nez p1, :cond_1e

    .line 703
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_22

    .line 704
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    :cond_1e
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_23

    .line 730
    :cond_22
    :goto_22
    return-void

    .line 717
    :cond_23
    monitor-enter p0

    .line 718
    :try_start_24
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_2d

    .line 719
    monitor-exit p0

    goto :goto_22

    .line 729
    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v1

    .line 722
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a
    .catch Ljava/net/SocketException; {:try_start_2d .. :try_end_33} :catch_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_3b

    .line 728
    const/4 v1, 0x1

    :try_start_34
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    .line 729
    monitor-exit p0

    goto :goto_22

    .line 723
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 724
    .local v0, e:Ljava/net/SocketException;
    throw v0

    .line 725
    .end local v0           #e:Ljava/net/SocketException;
    :catch_3b
    move-exception v1

    move-object v0, v1

    .line 726
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_2a
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 523
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 524
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 526
    :cond_c
    sget-object v2, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_1b

    .line 527
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Factory already set"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 522
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_18
    move-exception v2

    monitor-exit v1

    throw v2

    .line 529
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1b
    :try_start_1b
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_18

    .line 530
    monitor-exit v1

    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .registers 11
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    if-ltz p4, :cond_7

    const v2, 0xffff

    if-le p4, v2, :cond_20

    .line 613
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    :cond_20
    if-nez p3, :cond_4b

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, v2

    .line 617
    .local v0, addr:Ljava/net/InetAddress;
    :goto_25
    monitor-enter p0

    .line 618
    :try_start_26
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    .line 619
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_55

    .line 621
    if-eqz p5, :cond_36

    :try_start_30
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 622
    :cond_36
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 624
    :cond_3b
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    .line 625
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 626
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    .line 627
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_55
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_49} :catch_4d

    .line 632
    :try_start_49
    monitor-exit p0

    .line 633
    return-void

    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_4b
    move-object v0, p3

    .line 616
    goto :goto_25

    .line 628
    .restart local v0       #addr:Ljava/net/InetAddress;
    :catch_4d
    move-exception v2

    move-object v1, v2

    .line 629
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    .line 630
    throw v1

    .line 632
    .end local v1           #e:Ljava/io/IOException;
    :catchall_55
    move-exception v2

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_55

    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .registers 15
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 126
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    .line 131
    .local v6, dstAddresses:[Ljava/net/InetAddress;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6
    array-length v0, v6

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_1c

    .line 132
    aget-object v1, v6, v7

    .line 134
    .local v1, dstAddress:Ljava/net/InetAddress;
    :try_start_c
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 135
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_17} :catch_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    .line 147
    :goto_17
    return-void

    .line 138
    :catch_18
    move-exception v0

    .line 131
    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 144
    .end local v1           #dstAddress:Ljava/net/InetAddress;
    :cond_1c
    array-length v0, v6

    sub-int/2addr v0, v8

    aget-object v1, v6, v0

    .line 145
    .restart local v1       #dstAddress:Ljava/net/InetAddress;
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 146
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    goto :goto_17

    .line 137
    :catch_2c
    move-exception v0

    goto :goto_19
.end method

.method private usingSocks()Z
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method accepted()V
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 1005
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    .line 1006
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 10
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 800
    invoke-direct {p0, v5}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 801
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 802
    new-instance v5, Ljava/net/BindException;

    const-string v6, "Socket is already bound"

    invoke-direct {v5, v6}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 805
    :cond_12
    const/4 v4, 0x0

    .line 806
    .local v4, port:I
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 807
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_63

    .line 808
    instance-of v5, p1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_38

    .line 809
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Local address not an InetSocketAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 812
    :cond_38
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 813
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_5f

    .line 814
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Host is unresolved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 816
    :cond_5f
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 819
    .end local v3           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_63
    monitor-enter p0

    .line 821
    :try_start_64
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, v1, v4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 822
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/net/Socket;->isBound:Z

    .line 823
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_79
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6f} :catch_71

    .line 828
    :try_start_6f
    monitor-exit p0

    .line 829
    return-void

    .line 824
    :catch_71
    move-exception v5

    move-object v2, v5

    .line 825
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5}, Ljava/net/SocketImpl;->close()V

    .line 826
    throw v2

    .line 828
    .end local v2           #e:Ljava/io/IOException;
    :catchall_79
    move-exception v5

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_79

    throw v5
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 370
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 371
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 372
    monitor-exit p0

    return-void

    .line 368
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 845
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 12
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 866
    invoke-direct {p0, v5}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 867
    if-gez p2, :cond_e

    .line 868
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "timeout < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 870
    :cond_e
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 871
    new-instance v5, Ljava/net/SocketException;

    const-string v6, "Already connected"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 873
    :cond_1c
    if-nez p1, :cond_26

    .line 874
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "remoteAddr == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 877
    :cond_26
    instance-of v5, p1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_47

    .line 878
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote address not an InetSocketAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 881
    :cond_47
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 883
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, addr:Ljava/net/InetAddress;
    if-nez v1, :cond_6e

    .line 884
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Host is unresolved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 886
    :cond_6e
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 888
    .local v4, port:I
    invoke-direct {p0, v1, v4}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 889
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 891
    :try_start_78
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v6

    if-nez v6, :cond_8f

    .line 896
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 897
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 899
    :cond_8c
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/Socket;->isBound:Z

    .line 901
    :cond_8f
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 902
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/Socket;->isConnected:Z

    .line 903
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_9a
    .catchall {:try_start_78 .. :try_end_9a} :catchall_a4
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_9a} :catch_9c

    .line 908
    :try_start_9a
    monitor-exit v5

    .line 909
    return-void

    .line 904
    :catch_9c
    move-exception v6

    move-object v2, v6

    .line 905
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6}, Ljava/net/SocketImpl;->close()V

    .line 906
    throw v2

    .line 908
    .end local v2           #e:Ljava/io/IOException;
    :catchall_a4
    move-exception v6

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_a4

    throw v6
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 395
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 396
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_12
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 406
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 422
    const/4 v0, -0x1

    .line 424
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 738
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 961
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 962
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 437
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 438
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_12
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_7
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 473
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 474
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 473
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 752
    const/4 v0, 0x0

    .line 754
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

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
    .line 945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 946
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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
    .line 481
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 482
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 481
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 461
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 463
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 465
    :goto_16
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_17
    const/4 v1, -0x1

    goto :goto_16
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 489
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 490
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 489
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 497
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 498
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 981
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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
    .line 764
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 782
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 773
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .registers 2

    .prologue
    .line 919
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .prologue
    .line 930
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public sendUrgentData(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 995
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 5
    .parameter "keepAlive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_13

    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 507
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 509
    :cond_13
    return-void
.end method

.method public setOOBInline(Z)V
    .registers 5
    .parameter "oobinline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 954
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 955
    return-void
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 1040
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
    const/4 v1, 0x1

    .line 547
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 548
    if-ge p1, v1, :cond_13

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 547
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 551
    :cond_13
    :try_start_13
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    .line 552
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
    .line 937
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 938
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 939
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
    const/4 v1, 0x1

    .line 536
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 537
    if-ge p1, v1, :cond_13

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 536
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 540
    :cond_13
    :try_start_13
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    .line 541
    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .registers 6
    .parameter "on"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 561
    if-eqz p1, :cond_12

    if-gez p2, :cond_12

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_12
    if-eqz p1, :cond_1e

    .line 565
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 569
    :goto_1d
    return-void

    .line 567
    :cond_1e
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_1d
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
    .line 577
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 578
    if-gez p1, :cond_12

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 577
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 581
    :cond_12
    :try_start_12
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    .line 582
    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 588
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 589
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 590
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
    .line 969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 970
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_10

    .line 971
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 973
    :cond_10
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 974
    return-void
.end method

.method public shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 665
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 668
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 670
    return-void
.end method

.method public shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 684
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 687
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 689
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 648
    const-string v0, "Socket[unconnected]"

    .line 650
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
