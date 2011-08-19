.class public Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# static fields
.field static final IP_MULTICAST_TTL:I = 0x11

.field private static final MCAST_JOIN_GROUP:I = 0x13

.field private static final MCAST_LEAVE_GROUP:I = 0x14

.field private static final SO_BROADCAST:I = 0x20


# instance fields
.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isNativeConnected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 72
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .registers 5
    .parameter "fd"
    .parameter "localPort"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 63
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 64
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 65
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 68
    :cond_1d
    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;Z)V
    .registers 11
    .parameter "pack"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget-boolean v7, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    move-object v2, p1

    move v6, p2

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I

    .line 167
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1e

    .line 168
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    .line 170
    :cond_1e
    return-void
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 243
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 244
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "port"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p2, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 78
    if-eqz p1, :cond_13

    .line 79
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 85
    :goto_b
    const/16 v0, 0x20

    :try_start_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_1e

    .line 88
    :goto_12
    return-void

    .line 81
    :cond_13
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    goto :goto_b

    .line 86
    :catch_1e
    move-exception v0

    goto :goto_12
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    .line 94
    :try_start_6
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_12

    .line 97
    :goto_d
    monitor-exit p0

    return-void

    .line 92
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 7
    .parameter "inetAddr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v1, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    .line 211
    :try_start_8
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_12} :catch_18

    .line 217
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 219
    return-void

    .line 212
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host is unresolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 102
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 224
    :try_start_0
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_11

    .line 227
    :goto_7
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 230
    return-void

    .line 225
    :catch_11
    move-exception v0

    goto :goto_7
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 109
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 111
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

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
    .line 116
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

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
    .line 121
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v0, 0x13

    new-instance v1, Ljava/net/MulticastGroupRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/MulticastGroupRequest;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_14

    .line 137
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 138
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x13

    new-instance v2, Ljava/net/MulticastGroupRequest;

    invoke-direct {v2, v0, p2}, Ljava/net/MulticastGroupRequest;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 140
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_14
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v0, 0x14

    new-instance v1, Ljava/net/MulticastGroupRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/MulticastGroupRequest;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_14

    .line 150
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 151
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x14

    new-instance v2, Ljava/net/MulticastGroupRequest;

    invoke-direct {v2, v0, p2}, Ljava/net/MulticastGroupRequest;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 153
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_14
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .registers 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 159
    .local v0, packet:Ljava/net/DatagramPacket;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v1

    .line 160
    .local v1, result:I
    sget-object v2, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setInetAddress(Ljava/net/InetAddress;[B)V

    .line 161
    return v1
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;Z)V

    .line 180
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;Z)V

    .line 175
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 9
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    move v5, v0

    .line 186
    .local v5, port:I
    :goto_6
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    move-object v6, v0

    .line 187
    .local v6, address:Ljava/net/InetAddress;
    :goto_c
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    .line 189
    return-void

    .line 185
    .end local v5           #port:I
    .end local v6           #address:Ljava/net/InetAddress;
    :cond_20
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    move v5, v0

    goto :goto_6

    .line 186
    .restart local v5       #port:I
    :cond_26
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    move-object v6, v0

    goto :goto_c
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
    .line 192
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public setTTL(B)V
    .registers 3
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    .line 203
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 4
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 198
    return-void
.end method
