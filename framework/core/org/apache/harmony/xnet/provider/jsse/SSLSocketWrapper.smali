.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
.source "SSLSocketWrapper.java"


# instance fields
.field private final autoClose:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;ZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "socket"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 36
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 37
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_11
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    .line 40
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->autoClose:Z

    .line 41
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->init()V

    .line 42
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "sockaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected closeTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->autoClose:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 57
    :cond_17
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "sockaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 5
    .parameter "sockaddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method protected initTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->input:Ljava/io/InputStream;

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->output:Ljava/io/OutputStream;

    .line 48
    return-void
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public setKeepAlive(Z)V
    .registers 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 120
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 140
    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 115
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 135
    return-void
.end method

.method public setSoLinger(ZI)V
    .registers 4
    .parameter "on"
    .parameter "linger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 105
    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 130
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 110
    return-void
.end method

.method public setTrafficClass(I)V
    .registers 3
    .parameter "tos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL socket over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
