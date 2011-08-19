.class public Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "SSLServerSocketImpl.java"


# instance fields
.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private final sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(IILjava/net/InetAddress;Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "port"
    .parameter "backlog"
    .parameter "iAddress"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 40
    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 91
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 92
    return-void
.end method

.method protected constructor <init>(IILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "port"
    .parameter "backlog"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 40
    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 75
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 76
    return-void
.end method

.method protected constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 4
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 40
    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 63
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 3
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 40
    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 50
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 51
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_b

    .line 247
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLServerSocketImpl.accept .."

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 249
    :cond_b
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 251
    .local v1, s:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    .line 252
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 253
    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_30

    .line 255
    :try_start_21
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_30} :catch_3f

    .line 262
    :cond_30
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 263
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_3e

    .line 264
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLServerSocketImpl: accepted, initialized"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 266
    :cond_3e
    return-object v1

    .line 257
    :catch_3f
    move-exception v3

    move-object v0, v3

    .line 258
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->close()V

    .line 259
    throw v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 224
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 184
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 164
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    const-string v0, "[SSLServerSocketImpl]"

    return-object v0
.end method
