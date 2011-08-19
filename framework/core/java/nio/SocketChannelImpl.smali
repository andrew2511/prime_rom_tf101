.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$SocketChannelInputStream;,
        Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final EOF:I = -0x1

.field static final SOCKET_STATUS_CLOSED:I = 0x3

.field static final SOCKET_STATUS_CONNECTED:I = 0x2

.field static final SOCKET_STATUS_PENDING:I = 0x1

.field static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field static final SOCKET_STATUS_UNINIT:I = -0x1


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field final fd:Ljava/io/FileDescriptor;

.field volatile isBound:Z

.field localAddress:Ljava/net/InetAddress;

.field localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .registers 6
    .parameter "selectorProvider"
    .parameter "connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 89
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 108
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 109
    if-eqz p2, :cond_31

    .line 110
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 112
    :cond_31
    return-void
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    return-void
.end method

.method private declared-synchronized checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 456
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 455
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 458
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 459
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .line 461
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 468
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 467
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 470
    :cond_10
    :try_start_10
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 471
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 473
    :cond_1b
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 474
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    .line 476
    :cond_26
    monitor-exit p0

    return-void
.end method

.method private initLocalAddressAndPort()V
    .registers 3

    .prologue
    .line 230
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 231
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    .line 232
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_23

    .line 233
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-result-object v0

    iget v1, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->initLocalPort(I)V

    .line 235
    :cond_23
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 13
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 345
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 346
    const/4 v4, 0x0

    .line 348
    .local v4, readCount:I
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 349
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 351
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 352
    .local v3, offset:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 353
    .local v2, length:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 356
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v0

    .line 357
    .local v0, address:I
    sget-object v6, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-int v8, v0, v3

    invoke-interface {v6, v7, v8, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->readDirect(Ljava/io/FileDescriptor;II)I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_4d

    move-result v4

    .line 367
    .end local v0           #address:I
    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 368
    if-lez v4, :cond_4b

    move v6, v10

    :goto_34
    invoke-virtual {p0, v6}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_5b

    return v4

    .line 361
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 362
    .local v1, array:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v3, v6

    .line 363
    sget-object v6, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v6, v7, v1, v3, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_4d

    move-result v4

    goto :goto_2b

    .end local v1           #array:[B
    :cond_4b
    move v6, v9

    .line 368
    goto :goto_34

    .line 367
    .end local v2           #length:I
    .end local v3           #offset:I
    :catchall_4d
    move-exception v6

    :try_start_4e
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 368
    if-lez v4, :cond_5e

    move v7, v10

    :goto_57
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_5a
    throw v6

    .line 371
    :catchall_5b
    move-exception v6

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_5b

    throw v6

    :cond_5e
    move v7, v9

    .line 368
    goto :goto_57
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 4
    .parameter "socketAddress"

    .prologue
    .line 483
    if-nez p0, :cond_8

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 486
    :cond_8
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_12

    .line 487
    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v2

    .line 489
    :cond_12
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 490
    .local v1, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 491
    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v2

    .line 493
    :cond_22
    return-object v1
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 13
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 419
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 420
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_e

    .line 421
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_7d

    move v5, v9

    .line 447
    :goto_d
    return v5

    .line 423
    :cond_e
    const/4 v4, 0x0

    .line 425
    .local v4, writeCount:I
    :try_start_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 426
    .local v3, pos:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 427
    .local v2, length:I
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 428
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 430
    :cond_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 431
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v0

    .line 432
    .local v0, address:I
    sget-object v6, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v6, v7, v0, v3, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->writeDirect(Ljava/io/FileDescriptor;III)I

    move-result v4

    .line 441
    .end local v0           #address:I
    :goto_32
    add-int v6, v3, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_6f

    .line 443
    :try_start_37
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 444
    if-ltz v4, :cond_6d

    move v6, v10

    :goto_40
    invoke-virtual {p0, v6}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 447
    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_7d

    move v5, v4

    goto :goto_d

    .line 433
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 434
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v3, v6

    .line 435
    sget-object v6, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v6, v7, v8, v3, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    goto :goto_32

    .line 437
    :cond_5e
    new-array v1, v2, [B

    .line 438
    .local v1, array:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 439
    sget-object v6, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v1, v8, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_6f

    move-result v4

    goto :goto_32

    .end local v1           #array:[B
    :cond_6d
    move v6, v9

    .line 444
    goto :goto_40

    .line 443
    .end local v2           #length:I
    .end local v3           #pos:I
    :catchall_6f
    move-exception v6

    :try_start_70
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 444
    if-ltz v4, :cond_80

    move v7, v10

    :goto_79
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_7c
    throw v6

    .line 448
    .end local v4           #writeCount:I
    :catchall_7d
    move-exception v6

    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_7d

    throw v6

    .restart local v4       #writeCount:I
    :cond_80
    move v7, v9

    .line 444
    goto :goto_79
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .registers 14
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 160
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    .line 163
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 164
    .local v3, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 167
    .local v4, normalAddr:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 168
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    .line 171
    :cond_16
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 172
    .local v5, port:I
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, hostName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 175
    .local v7, sm:Ljava/lang/SecurityManager;
    if-eqz v7, :cond_27

    .line 176
    invoke-virtual {v7, v2, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 180
    :cond_27
    const/4 v6, -0x1

    .line 181
    .local v6, result:I
    const/4 v1, 0x0

    .line 184
    .local v1, finished:Z
    :try_start_29
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 185
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 186
    sget-object v8, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v5, v10}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    .line 187
    const/4 v1, 0x1

    .line 195
    :cond_3b
    :goto_3b
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3d} :catch_87

    .line 207
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 208
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 212
    :cond_46
    :goto_46
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 213
    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 214
    iget-object v8, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v8, :cond_64

    .line 215
    iget-object v8, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v8}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-result-object v8

    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    iget-object v10, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->initRemoteAddressAndPort(Ljava/net/InetAddress;I)V

    .line 219
    :cond_64
    monitor-enter p0

    .line 220
    :try_start_65
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 221
    if-eqz v1, :cond_b6

    const/4 v8, 0x2

    :goto_6e
    iput v8, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 225
    :goto_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_bc

    .line 226
    return v1

    .line 189
    :cond_72
    :try_start_72
    sget-object v8, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v8, v9, v4, v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectNonBlocking(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    move-result v1

    .line 191
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-nez v8, :cond_3b

    .line 192
    iget-object v8, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_86} :catch_87

    goto :goto_3b

    .line 196
    :catch_87
    move-exception v8

    move-object v0, v8

    .line 197
    .local v0, e:Ljava/io/IOException;
    :try_start_89
    instance-of v8, v0, Ljava/net/ConnectException;

    if-eqz v8, :cond_a0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-nez v8, :cond_a0

    .line 198
    const/4 v8, 0x1

    iput v8, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_ab

    .line 207
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 208
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    goto :goto_46

    .line 200
    :cond_a0
    :try_start_a0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 201
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 202
    const/4 v1, 0x1

    .line 204
    :cond_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_ab

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ab
    move-exception v8

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 208
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_b5
    throw v8

    :cond_b6
    move v8, v11

    .line 221
    goto :goto_6e

    .line 223
    :cond_b8
    const/4 v8, 0x1

    :try_start_b9
    iput v8, p0, Ljava/nio/SocketChannelImpl;->status:I

    goto :goto_70

    .line 225
    :catchall_bc
    move-exception v8

    monitor-exit p0
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_bc

    throw v8
.end method

.method finishAccept()V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 281
    return-void
.end method

.method public finishConnect()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_13

    .line 242
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 250
    :catchall_10
    move-exception v4

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v4

    .line 244
    :cond_13
    :try_start_13
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v4, v8, :cond_1a

    .line 245
    monitor-exit p0

    move v4, v5

    .line 276
    :goto_19
    return v4

    .line 247
    :cond_1a
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v4, v5, :cond_24

    .line 248
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    .line 250
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_10

    .line 252
    const/4 v3, 0x0

    .line 254
    .local v3, finished:Z
    :try_start_26
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 255
    const/4 v1, -0x1

    .line 256
    .local v1, WAIT_FOREVER:I
    const/4 v0, 0x0

    .line 257
    .local v0, POLL:I
    sget-object v4, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v6, -0x1

    :goto_36
    invoke-interface {v4, v5, v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->isConnected(Ljava/io/FileDescriptor;I)Z

    move-result v3

    .line 258
    iput-boolean v3, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 259
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_66
    .catch Ljava/net/ConnectException; {:try_start_26 .. :try_end_3f} :catch_59

    .line 267
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 270
    monitor-enter p0

    .line 271
    if-eqz v3, :cond_6b

    move v4, v8

    :goto_46
    :try_start_46
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 272
    iput-boolean v3, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 274
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v4

    if-nez v4, :cond_54

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/nio/SocketChannelImpl;->implConfigureBlocking(Z)V

    .line 275
    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_6e

    move v4, v3

    .line 276
    goto :goto_19

    :cond_57
    move v6, v7

    .line 257
    goto :goto_36

    .line 260
    .end local v0           #POLL:I
    .end local v1           #WAIT_FOREVER:I
    :catch_59
    move-exception v4

    move-object v2, v4

    .line 261
    .local v2, e:Ljava/net/ConnectException;
    :try_start_5b
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 262
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 263
    const/4 v3, 0x1

    .line 265
    :cond_65
    throw v2
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_66

    .line 267
    .end local v2           #e:Ljava/net/ConnectException;
    :catchall_66
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    .line 271
    .restart local v0       #POLL:I
    .restart local v1       #WAIT_FOREVER:I
    :cond_6b
    :try_start_6b
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    goto :goto_46

    .line 275
    :catchall_6e
    move-exception v4

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_6e

    throw v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 500
    iget-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-nez v1, :cond_f

    .line 501
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_12

    .line 502
    .local v0, any_bytes:[B
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 504
    .end local v0           #any_bytes:[B
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    goto :goto_e

    .line 501
    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 512
    monitor-enter p0

    :try_start_2
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_1a

    .line 513
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 514
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 515
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->close()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 520
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 517
    :cond_1c
    :try_start_1c
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 512
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 4
    .parameter "blockMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 525
    :try_start_5
    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 526
    monitor-exit v0

    .line 527
    return-void

    .line 526
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 154
    monitor-enter p0

    :try_start_2
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_b

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-static {p1}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 286
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 287
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    .line 307
    :goto_e
    return v3

    .line 292
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 293
    :cond_1b
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 294
    .local v2, readCount:I
    if-lez v2, :cond_29

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_29
    :goto_29
    move v3, v2

    .line 307
    goto :goto_e

    .line 298
    .end local v2           #readCount:I
    :cond_2b
    const/4 v1, 0x0

    .line 299
    .local v1, readBuffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 300
    .local v0, readArray:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 301
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 302
    invoke-direct {p0, v1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 303
    .restart local v2       #readCount:I
    if-lez v2, :cond_29

    .line 304
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_29
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 13
    .parameter "targets"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 313
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 314
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 315
    .local v6, totalCount:I
    if-nez v6, :cond_11

    .line 316
    const-wide/16 v7, 0x0

    .line 335
    :goto_10
    return-wide v7

    .line 318
    :cond_11
    new-array v3, v6, [B

    .line 319
    .local v3, readArray:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 323
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 324
    .local v5, readCount:I
    if-lez v5, :cond_36

    .line 325
    move v1, v5

    .line 326
    .local v1, left:I
    move v0, p2

    .line 328
    .local v0, index:I
    :goto_1f
    if-lez v1, :cond_36

    .line 329
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 330
    .local v2, putLength:I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 331
    add-int/lit8 v0, v0, 0x1

    .line 332
    sub-int/2addr v1, v2

    .line 333
    goto :goto_1f

    .line 335
    .end local v0           #index:I
    .end local v1           #left:I
    .end local v2           #putLength:I
    :cond_36
    int-to-long v7, v5

    goto :goto_10
.end method

.method setBound(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 149
    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 150
    return-void
.end method

.method declared-synchronized setConnected()V
    .registers 2

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .registers 8

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-nez v3, :cond_27

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, addr:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 124
    .local v2, port:I
    :try_start_7
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_17

    .line 125
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 126
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 128
    :cond_17
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2f
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_27} :catch_2b

    .line 133
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #port:I
    :cond_27
    :try_start_27
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2f

    :goto_29
    monitor-exit p0

    return-object v3

    .line 129
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v2       #port:I
    :catch_2b
    move-exception v3

    move-object v1, v3

    .line 130
    .local v1, e:Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_29

    .line 120
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/SocketException;
    .end local v2           #port:I
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_8

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 379
    :cond_8
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_13

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_12
    return v0

    :cond_13
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_12
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .parameter "sources"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 389
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 390
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 391
    .local v0, count:I
    if-nez v0, :cond_11

    .line 392
    const-wide/16 v8, 0x0

    .line 412
    :goto_10
    return-wide v8

    .line 394
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 395
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_16
    add-int v8, p3, p2

    if-ge v5, v8, :cond_29

    .line 396
    aget-object v4, p1, v5

    .line 397
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 398
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 401
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 402
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 403
    .local v3, result:I
    move v5, p2

    .line 404
    move v7, v3

    .line 405
    .local v7, written:I
    :goto_32
    if-lez v3, :cond_4a

    .line 406
    aget-object v4, p1, v5

    .line 407
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 408
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    add-int/lit8 v5, v5, 0x1

    .line 410
    sub-int/2addr v3, v1

    .line 411
    goto :goto_32

    .line 412
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_4a
    int-to-long v8, v7

    goto :goto_10
.end method
