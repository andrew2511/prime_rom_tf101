.class public Ldalvik/system/BlockGuard$WrappedNetworkSystem;
.super Ljava/lang/Object;
.source "BlockGuard.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/INetworkSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedNetworkSystem"
.end annotation


# instance fields
.field private final mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/platform/INetworkSystem;)V
    .registers 2
    .parameter "network"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 264
    return-void
.end method

.method private isLingerSocket(Ljava/io/FileDescriptor;)Z
    .registers 7
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 413
    :try_start_1
    iget-object v2, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, lingerValue:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    .line 415
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #lingerValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 424
    :goto_13
    return v2

    .line 416
    .restart local v1       #lingerValue:Ljava/lang/Object;
    :cond_14
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_24

    .line 417
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #lingerValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_13

    :cond_22
    move v2, v4

    goto :goto_13

    .line 419
    .restart local v1       #lingerValue:Ljava/lang/Object;
    :cond_24
    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_32

    .line 420
    .end local v1           #lingerValue:Ljava/lang/Object;
    :catch_32
    move-exception v2

    move-object v0, v2

    .local v0, ignored:Ljava/lang/Exception;
    move v2, v4

    .line 424
    goto :goto_13
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "serverFd"
    .parameter "newSocket"
    .parameter "clientFd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 269
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;)V

    .line 270
    return-void
.end method

.method public bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 5
    .parameter "aFD"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 276
    return-void
.end method

.method public close(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "aFD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0, p1}, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->isLingerSocket(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 402
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 404
    :cond_d
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V

    .line 405
    return-void
.end method

.method public connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .registers 6
    .parameter "aFD"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 369
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    .line 370
    return-void
.end method

.method public connectNonBlocking(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    .registers 5
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 303
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectNonBlocking(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public disconnectDatagram(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "aFD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V

    .line 344
    return-void
.end method

.method public getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .registers 3
    .parameter "aFD"

    .prologue
    .line 373
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .registers 3
    .parameter "aFD"

    .prologue
    .line 384
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 4
    .parameter "aFD"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(Ljava/io/FileDescriptor;I)Z
    .registers 4
    .parameter "fd"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p2, :cond_9

    .line 311
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 313
    :cond_9
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->isConnected(Ljava/io/FileDescriptor;I)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/io/FileDescriptor;I)V
    .registers 4
    .parameter "aFD"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->listen(Ljava/io/FileDescriptor;I)V

    .line 364
    return-void
.end method

.method public read(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .parameter "aFD"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 280
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public readDirect(Ljava/io/FileDescriptor;II)I
    .registers 5
    .parameter "aFD"
    .parameter "address"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 285
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->readDirect(Ljava/io/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method public recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I
    .registers 16
    .parameter "fd"
    .parameter "packet"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "peek"
    .parameter "connected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 333
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I

    move-result v0

    return v0
.end method

.method public recvDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIZZ)I
    .registers 16
    .parameter "fd"
    .parameter "packet"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "peek"
    .parameter "connected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 339
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIZZ)I

    move-result v0

    return v0
.end method

.method public select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z
    .registers 16
    .parameter "readFDs"
    .parameter "writeFDs"
    .parameter "numReadable"
    .parameter "numWritable"
    .parameter "timeout"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 380
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .registers 14
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "port"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendDirect(Ljava/io/FileDescriptor;IIIILjava/net/InetAddress;)I
    .registers 14
    .parameter "fd"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "port"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDirect(Ljava/io/FileDescriptor;IIIILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendUrgentData(Ljava/io/FileDescriptor;B)V
    .registers 4
    .parameter "fd"
    .parameter "value"

    .prologue
    .line 359
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendUrgentData(Ljava/io/FileDescriptor;B)V

    .line 360
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;[B)V
    .registers 4
    .parameter "sender"
    .parameter "address"

    .prologue
    .line 408
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setInetAddress(Ljava/net/InetAddress;[B)V

    .line 409
    return-void
.end method

.method public setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 5
    .parameter "aFD"
    .parameter "opt"
    .parameter "optVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 395
    return-void
.end method

.method public shutdownInput(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownInput(Ljava/io/FileDescriptor;)V

    .line 352
    return-void
.end method

.method public shutdownOutput(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownOutput(Ljava/io/FileDescriptor;)V

    .line 356
    return-void
.end method

.method public socket(Ljava/io/FileDescriptor;Z)V
    .registers 4
    .parameter "aFD"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 348
    return-void
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 291
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public writeDirect(Ljava/io/FileDescriptor;III)I
    .registers 6
    .parameter "fd"
    .parameter "address"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 297
    iget-object v0, p0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;->mNetwork:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->writeDirect(Ljava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method
