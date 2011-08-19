.class Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/ServerSocketChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/SocketImpl;Ljava/nio/ServerSocketChannelImpl;)V
    .registers 3
    .parameter "impl"
    .parameter "aChannelImpl"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(Ljava/net/SocketImpl;)V

    .line 130
    iput-object p2, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    .line 131
    return-void
.end method

.method private accept(Ljava/net/Socket;Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .registers 7
    .parameter "socket"
    .parameter "sockChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, connectOK:Z
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_2f

    .line 153
    :try_start_2
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 154
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->setConnected()V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/SocketChannelImpl;->setBound(Z)V

    .line 156
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->finishAccept()V

    .line 157
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_2c

    .line 158
    :try_start_10
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 159
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_25

    .line 160
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2f

    .line 162
    :cond_25
    const/4 v0, 0x1

    .line 164
    if-nez v0, :cond_2b

    .line 165
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 168
    :cond_2b
    return-object p1

    .line 157
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 164
    :catchall_2f
    move-exception v2

    if-nez v0, :cond_35

    .line 165
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_35
    throw v2
.end method

.method static synthetic access$000(Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;Ljava/net/Socket;Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->accept(Ljava/net/Socket;Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v1}, Ljava/nio/ServerSocketChannelImpl;->access$100(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 140
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 142
    :cond_e
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 143
    .local v0, sc:Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1c

    .line 144
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 146
    :cond_1c
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 181
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$102(Ljava/nio/ServerSocketChannelImpl;Z)Z

    .line 182
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 5
    .parameter "localAddress"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 135
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    const/4 v1, 0x1

    #setter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/ServerSocketChannelImpl;->access$102(Ljava/nio/ServerSocketChannelImpl;Z)Z

    .line 136
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 187
    iget-object v1, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/ServerSocketChannelImpl;->close()V

    .line 191
    :goto_10
    monitor-exit v0

    .line 192
    return-void

    .line 189
    :cond_12
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_10

    .line 191
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Ljava/nio/ServerSocketChannelImpl;

    #getter for: Ljava/nio/ServerSocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/ServerSocketChannelImpl;->access$100(Ljava/nio/ServerSocketChannelImpl;)Z

    move-result v0

    return v0
.end method
