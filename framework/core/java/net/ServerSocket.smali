.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"


# static fields
.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private volatile isCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_10

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 52
    return-void

    .line 50
    :cond_10
    new-instance v0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;-><init>()V

    goto :goto_d
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "aport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I

    move-result v0

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "aport"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 93
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .registers 8
    .parameter "aport"
    .parameter "backlog"
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p0, p1}, Ljava/net/ServerSocket;->checkListen(I)V

    .line 115
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_33

    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v2}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v2

    :goto_10
    iput-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 117
    if-nez p3, :cond_39

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, v2

    .line 119
    .local v0, addr:Ljava/net/InetAddress;
    :goto_17
    monitor-enter p0

    .line 120
    :try_start_18
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/ServerSocket;->isCreated:Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_46

    .line 123
    :try_start_21
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p1}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/ServerSocket;->isBound:Z

    .line 125
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_3b

    move v3, p2

    :goto_2e
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_46
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_40

    .line 130
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_46

    .line 131
    return-void

    .line 115
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_33
    new-instance v2, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;

    invoke-direct {v2}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;-><init>()V

    goto :goto_10

    :cond_39
    move-object v0, p3

    .line 117
    goto :goto_17

    .line 125
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_3b
    :try_start_3b
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40

    move-result v3

    goto :goto_2e

    .line 126
    :catch_40
    move-exception v2

    move-object v1, v2

    .line 127
    .local v1, e:Ljava/io/IOException;
    :try_start_42
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 128
    throw v1

    .line 130
    .end local v1           #e:Ljava/io/IOException;
    :catchall_46
    move-exception v2

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    throw v2
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "impl"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 61
    return-void
.end method

.method private checkClosedAndCreate(Z)V
    .registers 5
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 441
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_e
    if-eqz p1, :cond_14

    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-eqz v1, :cond_15

    .line 461
    :cond_14
    :goto_14
    return-void

    .line 448
    :cond_15
    monitor-enter p0

    .line 449
    :try_start_16
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-eqz v1, :cond_1f

    .line 450
    monitor-exit p0

    goto :goto_14

    .line 460
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v1

    .line 453
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1c
    .catch Ljava/net/SocketException; {:try_start_1f .. :try_end_25} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_2d

    .line 459
    const/4 v1, 0x1

    :try_start_26
    iput-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    .line 460
    monitor-exit p0

    goto :goto_14

    .line 454
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 455
    .local v0, e:Ljava/net/SocketException;
    throw v0

    .line 456
    .end local v0           #e:Ljava/net/SocketException;
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 457
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_1c
.end method

.method static defaultBacklog()I
    .registers 1

    .prologue
    .line 199
    const/16 v0, 0x32

    return v0
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .parameter "aFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const-class v1, Ljava/net/ServerSocket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 288
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 289
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 291
    :cond_c
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_1b

    .line 292
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Factory already set"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 287
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_18
    move-exception v2

    monitor-exit v1

    throw v2

    .line 294
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1b
    :try_start_1b
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_18

    .line 295
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 144
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_12

    .line 145
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is not bound"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_12
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 150
    .local v0, aSocket:Ljava/net/Socket;
    :try_start_17
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_20

    .line 158
    return-object v0

    .line 151
    :catch_1b
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 153
    throw v1

    .line 154
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_20
    move-exception v1

    .line 155
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 156
    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 354
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 12
    .parameter "localAddr"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 370
    invoke-direct {p0, v6}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 371
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 372
    new-instance v6, Ljava/net/BindException;

    const-string v7, "Socket is already bound"

    invoke-direct {v6, v7}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 374
    :cond_12
    const/4 v4, 0x0

    .line 375
    .local v4, port:I
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 376
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_63

    .line 377
    instance-of v6, p1, Ljava/net/InetSocketAddress;

    if-nez v6, :cond_38

    .line 378
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local address not an InetSocketAddress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 381
    :cond_38
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 382
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_5f

    .line 383
    new-instance v6, Ljava/net/SocketException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Host is unresolved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 385
    :cond_5f
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 387
    .end local v3           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_63
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 388
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_6c

    .line 389
    invoke-virtual {v5, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 392
    :cond_6c
    monitor-enter p0

    .line 394
    :try_start_6d
    iget-object v6, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6, v1, v4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 395
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/ServerSocket;->isBound:Z

    .line 396
    iget-object v6, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_7f

    move v7, p2

    :goto_7a
    invoke-virtual {v6, v7}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_8a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7d} :catch_84

    .line 401
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_8a

    .line 402
    return-void

    .line 396
    :cond_7f
    :try_start_7f
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_8a
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_84

    move-result v7

    goto :goto_7a

    .line 397
    :catch_84
    move-exception v6

    move-object v2, v6

    .line 398
    .local v2, e:Ljava/io/IOException;
    :try_start_86
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 399
    throw v2

    .line 401
    .end local v2           #e:Ljava/io/IOException;
    :catchall_8a
    move-exception v6

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v6
.end method

.method checkListen(I)V
    .registers 6
    .parameter "aPort"

    .prologue
    .line 170
    if-ltz p1, :cond_7

    const v1, 0xffff

    if-le p1, v1, :cond_20

    .line 171
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

    .line 173
    :cond_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 174
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_29

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 177
    :cond_29
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    .line 188
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 189
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 223
    const/4 v0, -0x1

    .line 225
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 505
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 485
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-nez v1, :cond_14

    .line 236
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 237
    :try_start_6
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_27

    if-nez v1, :cond_13

    .line 239
    :try_start_a
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_27
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_10} :catch_24
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_2d

    .line 245
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    .line 247
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    .line 249
    :cond_14
    :try_start_14
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2a

    move-result v1

    monitor-exit p0

    return v1

    .line 240
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/net/SocketException;
    :try_start_26
    throw v0

    .line 247
    .end local v0           #e:Ljava/net/SocketException;
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 235
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 242
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 243
    .local v0, e:Ljava/io/IOException;
    :try_start_2f
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_27
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .registers 5
    .parameter "aSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v2, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 265
    invoke-virtual {p1}, Ljava/net/Socket;->accepted()V

    .line 266
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_22

    .line 267
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 268
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_21

    .line 269
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    .line 272
    :cond_21
    return-void

    .line 266
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    return v0
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 536
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 493
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 494
    if-ge p1, v0, :cond_e

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_e
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 498
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
    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 473
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 474
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
    .line 309
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 310
    if-gez p1, :cond_12

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 309
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_12
    :try_start_12
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    .line 314
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "ServerSocket["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 328
    const-string v1, "unbound]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",port=0,localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method
