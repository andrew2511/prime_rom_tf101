.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected fd:Ljava/io/FileDescriptor;

.field protected localport:I

.field protected port:I

.field streaming:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketImpl;->streaming:Z

    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getLocalPort()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getPort()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method protected abstract listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPerformancePreferences(III)V
    .registers 4
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 321
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
    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method has not been implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method has not been implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected supportsUrgentData()Z
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/SocketImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 238
    iget-boolean v0, p0, Ljava/net/SocketImpl;->streaming:Z

    if-eqz v0, :cond_d

    .line 239
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 241
    :goto_c
    return v0

    :cond_d
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Ljava/net/SocketImpl;->port:I

    iget-object v6, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    goto :goto_c
.end method
