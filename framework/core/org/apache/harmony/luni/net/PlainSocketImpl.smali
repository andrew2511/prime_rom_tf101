.class public Lorg/apache/harmony/luni/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# static fields
.field private static fdField:Ljava/lang/reflect/Field;

.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private proxy:Ljava/net/Proxy;

.field private shutdownInput:Z

.field private streaming:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 4
    .parameter "fd"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 63
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 64
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 67
    :cond_1b
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .registers 7
    .parameter "fd"
    .parameter "localport"
    .parameter "addr"
    .parameter "port"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 80
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 81
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 82
    iput-object p3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 83
    iput p4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 84
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 87
    :cond_21
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 70
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    .line 72
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_10

    .line 148
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_10
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .registers 9
    .parameter "anAddr"
    .parameter "aPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    move-object v1, v2

    .line 205
    .local v1, normalAddr:Ljava/net/InetAddress;
    :goto_b
    :try_start_b
    iget-boolean v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->usingSocks()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 206
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V
    :try_end_19
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_19} :catch_28

    .line 213
    :goto_19
    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 214
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 215
    return-void

    .end local v1           #normalAddr:Ljava/net/InetAddress;
    :cond_1e
    move-object v1, p1

    .line 203
    goto :goto_b

    .line 208
    .restart local v1       #normalAddr:Ljava/net/InetAddress;
    :cond_20
    :try_start_20
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, v1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_27
    .catch Ljava/net/ConnectException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_19

    .line 210
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 211
    .local v0, e:Ljava/net/ConnectException;
    new-instance v2, Ljava/net/ConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter "fieldName"

    .prologue
    .line 123
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;-><init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private socksBind()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 359
    :try_start_1
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_1d

    .line 366
    sget-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_38

    .line 367
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Invalid SOCKS client"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    :catch_1d
    move-exception v3

    move-object v0, v3

    .line 361
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to connect to SOCKS server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v0           #e:Ljava/lang/Exception;
    :cond_38
    const/4 v3, 0x2

    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    sget v5, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 373
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v1

    .line 375
    .local v1, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5a

    .line 376
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    :cond_5a
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_6d

    .line 382
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 391
    :goto_66
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 392
    return-void

    .line 387
    :cond_6d
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 388
    .local v2, replyBytes:[B
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v8, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 389
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_66
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .registers 9
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_17

    .line 305
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 307
    sput-object p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 308
    sput p2, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    .line 309
    return-void

    .line 301
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 302
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOCKS connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 287
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, proxyName:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 289
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_16
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private socksGetServerPort()I
    .registers 3

    .prologue
    .line 273
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 274
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 411
    new-instance v2, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v2}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 412
    .local v2, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    const/4 v0, 0x0

    .line 413
    .local v0, bytesRead:I
    :goto_8
    if-ge v0, v6, :cond_1b

    .line 414
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v4

    sub-int v5, v6, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 416
    .local v1, count:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_25

    .line 421
    .end local v1           #count:I
    :cond_1b
    if-eq v6, v0, :cond_27

    .line 422
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Malformed reply from SOCKS server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    .restart local v1       #count:I
    :cond_25
    add-int/2addr v0, v1

    .line 420
    goto :goto_8

    .line 424
    .end local v1           #count:I
    :cond_27
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 319
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 320
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    .line 321
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1e
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .registers 9
    .parameter "command"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 399
    .local v0, request:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/net/Socks4Message;->setCommandOrResult(I)V

    .line 400
    invoke-virtual {v0, p3}, Lorg/apache/harmony/luni/net/Socks4Message;->setPort(I)V

    .line 401
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setIP([B)V

    .line 402
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 405
    return-void
.end method

.method private usingSocks()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

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
.method protected accept(Ljava/net/SocketImpl;)V
    .registers 8
    .parameter "newImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->usingSocks()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksBind()V

    .line 93
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksAccept()V

    .line 113
    :goto_12
    return-void

    .line 98
    .restart local p1
    :cond_13
    :try_start_13
    instance-of v3, p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    if-eqz v3, :cond_29

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-object v2, v0

    .line 100
    .local v2, newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;)V

    goto :goto_12

    .line 110
    .end local v2           #newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    :catch_27
    move-exception v3

    goto :goto_12

    .line 104
    :cond_29
    sget-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_35

    .line 105
    const-string v3, "fd"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    .line 107
    :cond_35
    sget-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    .line 108
    .local v1, newFd:Ljava/io/FileDescriptor;
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;)V
    :try_end_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_44} :catch_27

    goto :goto_12
.end method

.method protected declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->checkNotClosed()V

    .line 157
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    if-eqz v0, :cond_b

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->ioctlAvailable(Ljava/io/FileDescriptor;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    move-result v0

    goto :goto_9

    .line 154
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .registers 5
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 166
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 167
    if-eqz p2, :cond_e

    .line 168
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 172
    :goto_d
    return-void

    .line 170
    :cond_e
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    goto :goto_d
.end method

.method protected declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 177
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 178
    monitor-exit p0

    return-void

    .line 176
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .registers 4
    .parameter "aHost"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 183
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .registers 4
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 188
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .registers 7
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 431
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 432
    return-void
.end method

.method protected create(Z)V
    .registers 4
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 220
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 221
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 228
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    return-void

    .line 230
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->checkNotClosed()V

    .line 237
    new-instance v0, Lorg/apache/harmony/luni/net/SocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketInputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 236
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 4
    .parameter "optID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->checkNotClosed()V

    .line 248
    new-instance v0, Lorg/apache/harmony/luni/net/SocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketOutputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 247
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initLocalPort(I)V
    .registers 2
    .parameter "localPort"

    .prologue
    .line 138
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 139
    return-void
.end method

.method public initRemoteAddressAndPort(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "remoteAddress"
    .parameter "remotePort"

    .prologue
    .line 142
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 143
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 144
    return-void
.end method

.method protected listen(I)V
    .registers 4
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->usingSocks()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    :goto_6
    return-void

    .line 258
    :cond_7
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->listen(Ljava/io/FileDescriptor;I)V

    goto :goto_6
.end method

.method read([BII)I
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 445
    iget-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v1, :cond_7

    move v1, v3

    .line 457
    :goto_6
    return v1

    .line 448
    :cond_7
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 450
    .local v0, read:I
    if-nez v0, :cond_17

    .line 451
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v1

    .line 454
    :cond_17
    if-ne v0, v3, :cond_1c

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    :cond_1c
    move v1, v0

    .line 457
    goto :goto_6
.end method

.method protected sendUrgentData(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendUrgentData(Ljava/io/FileDescriptor;B)V

    .line 442
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 5
    .parameter "optID"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method protected shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    .line 343
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownInput(Ljava/io/FileDescriptor;)V

    .line 344
    return-void
.end method

.method protected shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownOutput(Ljava/io/FileDescriptor;)V

    .line 352
    return-void
.end method

.method public socksAccept()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 331
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1a

    .line 332
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_1a
    return-void
.end method

.method protected supportsUrgentData()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method write([BII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_d

    .line 462
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 464
    :goto_c
    return v0

    :cond_d
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    iget-object v6, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    goto :goto_c
.end method
