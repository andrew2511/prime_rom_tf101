.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 51
    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 54
    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 60
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 63
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 84
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 85
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 5
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 51
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 54
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 60
    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 63
    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 74
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 75
    return-void
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 579
    if-nez p1, :cond_8

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_8
    return-void
.end method

.method private checkOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 561
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 563
    :cond_c
    return-void
.end method

.method private checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 570
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 571
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 573
    :cond_f
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 21
    .parameter "readBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 417
    const/16 v17, 0x0

    .line 419
    .local v17, readCount:I
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 420
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 421
    .local v6, start:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 422
    .local v7, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 423
    invoke-static/range {p1 .. p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v5

    .line 424
    .local v5, address:I
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v9

    invoke-interface/range {v2 .. v9}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIZZ)I
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_6f
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_2e} :catch_5b

    move-result v17

    .line 438
    .end local v5           #address:I
    :goto_2f
    if-lez v17, :cond_59

    const/4 v2, 0x1

    :goto_32
    :try_start_32
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v18
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_6a

    move/from16 v2, v17

    .end local v6           #start:I
    .end local v7           #length:I
    :goto_3b
    return v2

    .line 428
    .restart local v6       #start:I
    .restart local v7       #length:I
    :cond_3c
    :try_start_3c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 429
    .local v11, target:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v6, v2

    .line 430
    sget-object v8, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v15

    move v12, v6

    move v13, v7

    invoke-interface/range {v8 .. v15}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_6f
    .catch Ljava/io/InterruptedIOException; {:try_start_3c .. :try_end_57} :catch_5b

    move-result v17

    goto :goto_2f

    .line 438
    .end local v11           #target:[B
    :cond_59
    const/4 v2, 0x0

    goto :goto_32

    .line 434
    .end local v6           #start:I
    .end local v7           #length:I
    :catch_5b
    move-exception v2

    move-object/from16 v16, v2

    .line 436
    .local v16, e:Ljava/io/InterruptedIOException;
    const/4 v2, 0x0

    .line 438
    if-lez v17, :cond_6d

    const/4 v3, 0x1

    :goto_62
    :try_start_62
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v18

    goto :goto_3b

    .line 440
    .end local v16           #e:Ljava/io/InterruptedIOException;
    :catchall_6a
    move-exception v2

    monitor-exit v18
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6a

    throw v2

    .line 438
    .restart local v16       #e:Ljava/io/InterruptedIOException;
    :cond_6d
    const/4 v3, 0x0

    goto :goto_62

    .end local v16           #e:Ljava/io/InterruptedIOException;
    :catchall_6f
    move-exception v2

    if-lez v17, :cond_7a

    const/4 v3, 0x1

    :goto_73
    :try_start_73
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v2
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_6a

    :cond_7a
    const/4 v3, 0x0

    goto :goto_73
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 16
    .parameter "target"
    .parameter "loop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 256
    const/4 v11, 0x0

    .line 257
    .local v11, retAddr:Ljava/net/SocketAddress;
    new-instance v2, Ljava/net/DatagramPacket;

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v2, v0, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 258
    .local v2, receivePacket:Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 259
    .local v9, oldposition:I
    const/4 v10, 0x0

    .line 261
    .local v10, received:I
    :cond_e
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v3

    .line 262
    .local v3, address:I
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIZZ)I

    move-result v10

    .line 266
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    .line 267
    .local v12, sm:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_41

    if-eqz v12, :cond_41

    .line 269
    :try_start_32
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_41} :catch_55

    .line 276
    :cond_41
    :goto_41
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 278
    if-lez v10, :cond_50

    .line 279
    add-int v0, v9, v10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 281
    :cond_50
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v11

    .line 285
    :goto_54
    return-object v11

    .line 271
    :catch_55
    move-exception v0

    move-object v8, v0

    .line 273
    .local v8, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_41

    .line 284
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_59
    if-nez p2, :cond_e

    goto :goto_54
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 16
    .parameter "target"
    .parameter "loop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 210
    const/4 v11, 0x0

    .line 212
    .local v11, retAddr:Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 213
    .local v9, oldposition:I
    const/4 v10, 0x0

    .line 214
    .local v10, received:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 215
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 223
    .local v2, receivePacket:Ljava/net/DatagramPacket;
    :cond_23
    :goto_23
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I

    move-result v10

    .line 228
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    .line 229
    .local v12, sm:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz v12, :cond_56

    .line 231
    :try_start_47
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_56} :catch_80

    .line 238
    :cond_56
    :goto_56
    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 240
    if-lez v10, :cond_6b

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 242
    add-int v0, v9, v10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    :cond_6b
    :goto_6b
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v11

    .line 252
    :goto_6f
    return-object v11

    .line 219
    .end local v2           #receivePacket:Ljava/net/DatagramPacket;
    .end local v12           #sm:Ljava/lang/SecurityManager;
    :cond_70
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v2, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .restart local v2       #receivePacket:Ljava/net/DatagramPacket;
    goto :goto_23

    .line 233
    .restart local v12       #sm:Ljava/lang/SecurityManager;
    :catch_80
    move-exception v0

    move-object v8, v0

    .line 235
    .local v8, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_56

    .line 245
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_84
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_6b

    .line 251
    :cond_8c
    if-nez p2, :cond_23

    goto :goto_6f
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 16
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v13, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 515
    const/4 v12, 0x0

    .line 517
    .local v12, result:I
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 518
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 519
    .local v4, length:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 521
    .local v3, start:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 522
    invoke-static {p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v2

    .line 523
    .local v2, address:I
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDirect(Ljava/io/FileDescriptor;IIIILjava/net/InetAddress;)I
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_43

    move-result v12

    .line 531
    .end local v2           #address:I
    :goto_23
    if-lez v12, :cond_41

    const/4 v0, 0x1

    :goto_26
    :try_start_26
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4b

    return v12

    .line 526
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 527
    sget-object v5, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v6, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v8, v3

    move v9, v4

    invoke-interface/range {v5 .. v11}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_43

    move-result v12

    goto :goto_23

    .line 531
    :cond_41
    const/4 v0, 0x0

    goto :goto_26

    .end local v3           #start:I
    .end local v4           #length:I
    :catchall_43
    move-exception v0

    if-lez v12, :cond_4e

    const/4 v1, 0x1

    :goto_47
    :try_start_47
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v0

    .line 533
    :catchall_4b
    move-exception v0

    monitor-exit v13
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4b

    throw v0

    .line 531
    :cond_4e
    const/4 v1, 0x0

    goto :goto_47
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 9
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 126
    iget-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v2, :cond_11

    .line 127
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 124
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 131
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 134
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 135
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2c

    .line 136
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 137
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_e

    .line 145
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 146
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_63
    .catch Ljava/net/ConnectException; {:try_start_2c .. :try_end_3f} :catch_5d

    .line 151
    const/4 v2, 0x1

    :try_start_40
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    .line 155
    :goto_43
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_e

    .line 158
    monitor-exit p0

    return-object p0

    .line 139
    :cond_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_2c

    .line 148
    :catch_5d
    move-exception v2

    .line 151
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_43

    :catchall_63
    move-exception v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v2
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_e
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_28

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    move-object v0, p0

    .line 175
    .end local p0
    .local v0, this:Ljava/nio/DatagramChannelImpl;
    :goto_e
    monitor-exit p0

    return-object v0

    .line 169
    .end local v0           #this:Ljava/nio/DatagramChannelImpl;
    .restart local p0
    :cond_10
    const/4 v1, 0x0

    :try_start_11
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 171
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V

    .line 172
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_26

    .line 173
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_28

    :cond_26
    move-object v0, p0

    .line 175
    .end local p0
    .restart local v0       #this:Ljava/nio/DatagramChannelImpl;
    goto :goto_e

    .line 166
    .end local v0           #this:Ljava/nio/DatagramChannelImpl;
    .restart local p0
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 107
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 542
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 543
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1f

    .line 547
    :goto_15
    monitor-exit p0

    return-void

    .line 545
    :cond_17
    :try_start_17
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 541
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 2
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
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

    .line 358
    invoke-static {p1}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 359
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    .line 380
    :goto_e
    return v3

    .line 365
    :cond_f
    const/4 v2, 0x0

    .line 366
    .local v2, readCount:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 367
    :cond_1c
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 368
    if-lez v2, :cond_2a

    .line 369
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2a
    :goto_2a
    move v3, v2

    .line 380
    goto :goto_e

    .line 373
    :cond_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 374
    .local v0, readArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 375
    .local v1, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 376
    if-lez v2, :cond_2a

    .line 377
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2a
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
    .line 385
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 388
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 389
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 390
    .local v6, totalCount:I
    if-nez v6, :cond_11

    .line 391
    const-wide/16 v7, 0x0

    .line 409
    :goto_10
    return-wide v7

    .line 396
    :cond_11
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 398
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 399
    .local v5, readCount:I
    move v1, v5

    .line 400
    .local v1, left:I
    move v0, p2

    .line 402
    .local v0, index:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 403
    .local v3, readArray:[B
    :goto_1f
    if-lez v1, :cond_36

    .line 404
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 405
    .local v2, putLength:I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 407
    sub-int/2addr v1, v2

    .line 408
    goto :goto_1f

    .line 409
    .end local v2           #putLength:I
    :cond_36
    int-to-long v7, v5

    goto :goto_10
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 10
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-static {p1}, Ljava/nio/FileChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 181
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 183
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v3, :cond_f

    move-object v3, v7

    .line 206
    :goto_e
    return-object v3

    .line 187
    :cond_f
    const/4 v2, 0x0

    .line 189
    .local v2, retAddr:Ljava/net/SocketAddress;
    :try_start_10
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 192
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_43
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_16} :catch_35

    .line 193
    :try_start_16
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    .line 194
    .local v1, loop:Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 195
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    .line 199
    :goto_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_32

    .line 204
    if-eqz v2, :cond_3f

    move v3, v6

    :goto_28
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    move-object v3, v2

    .line 206
    goto :goto_e

    .line 197
    :cond_2d
    :try_start_2d
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_24

    .line 199
    .end local v1           #loop:Z
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_43
    .catch Ljava/io/InterruptedIOException; {:try_start_34 .. :try_end_35} :catch_35

    .line 200
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 204
    .local v0, e:Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_41

    move v3, v6

    :goto_3a
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    move-object v3, v7

    goto :goto_e

    .end local v0           #e:Ljava/io/InterruptedIOException;
    .restart local v1       #loop:Z
    :cond_3f
    move v3, v5

    goto :goto_28

    .end local v1           #loop:Z
    .restart local v0       #e:Ljava/io/InterruptedIOException;
    :cond_41
    move v3, v5

    goto :goto_3a

    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catchall_43
    move-exception v3

    if-eqz v2, :cond_4b

    move v4, v6

    :goto_47
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3

    :cond_4b
    move v4, v5

    goto :goto_47
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .registers 22
    .parameter "source"
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct/range {p0 .. p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 300
    move-object/from16 v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v15, v0

    .line 301
    .local v15, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_17

    .line 302
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 305
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 311
    :cond_2e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v18

    .line 312
    .local v18, sm:Ljava/lang/SecurityManager;
    if-eqz v18, :cond_48

    .line 313
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 314
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 322
    .end local v18           #sm:Ljava/lang/SecurityManager;
    :cond_48
    :goto_48
    const/16 v17, 0x0

    .line 324
    .local v17, sendCount:I
    :try_start_4a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    .line 325
    const/4 v10, 0x0

    .line 326
    .local v10, array:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 327
    .local v7, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 328
    .local v16, oldposition:I
    move/from16 v6, v16

    .line 329
    .local v6, start:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    move-object v11, v0

    monitor-enter v11
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_a5

    .line 331
    :try_start_64
    invoke-static/range {p1 .. p1}, Ljava/nio/NioUtils;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v5

    .line 332
    .local v5, data_address:I
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v4, v0

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDirect(Ljava/io/FileDescriptor;IIIILjava/net/InetAddress;)I

    move-result v17

    .line 334
    monitor-exit v11
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_a2

    .line 349
    .end local v5           #data_address:I
    :goto_7c
    add-int v3, v16, v17

    :try_start_7e
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_a5

    .line 352
    if-ltz v17, :cond_e9

    const/4 v3, 0x1

    :goto_87
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    return v17

    .line 316
    .end local v6           #start:I
    .end local v7           #length:I
    .end local v10           #array:[B
    .end local v16           #oldposition:I
    .end local v17           #sendCount:I
    .restart local v18       #sm:Ljava/lang/SecurityManager;
    :cond_8e
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    move-object/from16 v0, v18

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_48

    .line 334
    .end local v18           #sm:Ljava/lang/SecurityManager;
    .restart local v6       #start:I
    .restart local v7       #length:I
    .restart local v10       #array:[B
    .restart local v16       #oldposition:I
    .restart local v17       #sendCount:I
    :catchall_a2
    move-exception v3

    :try_start_a3
    monitor-exit v11
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 352
    .end local v6           #start:I
    .end local v7           #length:I
    .end local v10           #array:[B
    .end local v16           #oldposition:I
    :catchall_a5
    move-exception v3

    if-ltz v17, :cond_eb

    const/4 v4, 0x1

    :goto_a9
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3

    .line 336
    .restart local v6       #start:I
    .restart local v7       #length:I
    .restart local v10       #array:[B
    .restart local v16       #oldposition:I
    :cond_b0
    :try_start_b0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 337
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v6, v3

    .line 344
    :goto_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3
    :try_end_c5
    .catchall {:try_start_b0 .. :try_end_c5} :catchall_a5

    .line 345
    :try_start_c5
    sget-object v8, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v9, v0

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    move v11, v6

    move v12, v7

    invoke-interface/range {v8 .. v14}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v17

    .line 347
    monitor-exit v3

    goto :goto_7c

    :catchall_dc
    move-exception v4

    monitor-exit v3
    :try_end_de
    .catchall {:try_start_c5 .. :try_end_de} :catchall_dc

    :try_start_de
    throw v4

    .line 340
    :cond_df
    new-array v10, v7, [B

    .line 341
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_e7
    .catchall {:try_start_de .. :try_end_e7} :catchall_a5

    .line 342
    const/4 v6, 0x0

    goto :goto_bf

    .line 352
    :cond_e9
    const/4 v3, 0x0

    goto :goto_87

    .end local v6           #start:I
    .end local v7           #length:I
    .end local v10           #array:[B
    .end local v16           #oldposition:I
    :cond_eb
    const/4 v4, 0x0

    goto :goto_a9
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .registers 5

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_15

    .line 94
    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    new-instance v1, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 96
    :cond_15
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 93
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 7
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 451
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 453
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_e

    .line 454
    const/4 v4, 0x0

    .line 472
    :goto_d
    return v4

    .line 457
    :cond_e
    const/4 v3, 0x0

    .line 458
    .local v3, writeBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 459
    .local v2, writeArray:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 461
    .local v0, oldposition:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 462
    :cond_20
    move-object v3, p1

    .line 468
    :goto_21
    invoke-direct {p0, v3}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 469
    .local v1, result:I
    if-lez v1, :cond_2c

    .line 470
    add-int v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2c
    move v4, v1

    .line 472
    goto :goto_d

    .line 464
    .end local v1           #result:I
    :cond_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v2, v4, [B

    .line 465
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 466
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_21
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
    .line 481
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 484
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 485
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 486
    .local v0, count:I
    if-nez v0, :cond_11

    .line 487
    const-wide/16 v8, 0x0

    .line 507
    :goto_10
    return-wide v8

    .line 489
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 490
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_16
    add-int v8, p3, p2

    if-ge v5, v8, :cond_29

    .line 491
    aget-object v4, p1, v5

    .line 492
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 493
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 494
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 496
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 497
    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 498
    .local v3, result:I
    move v5, p2

    .line 499
    move v7, v3

    .line 500
    .local v7, written:I
    :goto_32
    if-lez v3, :cond_4a

    .line 501
    aget-object v4, p1, v5

    .line 502
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 503
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 504
    add-int/lit8 v5, v5, 0x1

    .line 505
    sub-int/2addr v3, v1

    .line 506
    goto :goto_32

    .line 507
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_4a
    int-to-long v8, v7

    goto :goto_10
.end method
