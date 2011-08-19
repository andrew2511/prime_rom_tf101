.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "OpenSSLServerSocketImpl.java"


# instance fields
.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledCompressionMethods:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

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
    .line 63
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 36
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 37
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 38
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 65
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
    .line 54
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 36
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 37
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 38
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 56
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
    .line 48
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 36
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 37
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 38
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 50
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
    .line 42
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 36
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 37
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 38
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 44
    return-void
.end method

.method private checkEnabledCipherSuites()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v4, :cond_8a

    aget-object v1, v0, v2

    .line 211
    .local v1, enabledCipherSuite:Ljava/lang/String;
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 210
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 214
    :cond_13
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, keyType:Ljava/lang/String;
    if-nez v3, :cond_1e

    .line 237
    :goto_1d
    return-void

    .line 219
    :cond_1e
    const-string v5, "RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v5, "DH_RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 221
    :cond_2e
    const-class v5, Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_1d

    .line 226
    :cond_37
    const-string v5, "DSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    const-string v5, "DH_DSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 228
    :cond_47
    const-class v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_1d

    .line 233
    :cond_50
    const-string v5, "EC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    const-string v5, "EC_RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    const-string v5, "EC_EC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 236
    :cond_68
    const-class v5, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_1d

    .line 241
    :cond_71
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown key type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    .end local v1           #enabledCipherSuite:Ljava/lang/String;
    .end local v3           #keyType:Ljava/lang/String;
    :cond_8a
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Could not find any key store entries to support the enabled cipher suites."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 8
    .parameter "keyType"
    .parameter "keyClass"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 248
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    invoke-interface {v2, p1, v4, v4}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, alias:Ljava/lang/String;
    if-nez v0, :cond_10

    move v2, v3

    .line 253
    :goto_f
    return v2

    .line 252
    :cond_10
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    invoke-interface {v2, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 253
    .local v1, key:Ljava/security/PrivateKey;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_f

    :cond_28
    move v2, v3

    goto :goto_f
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
    .line 187
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 188
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkEnabledCipherSuites()V

    .line 191
    :cond_b
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 195
    .local v0, socket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    .line 196
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 75
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 131
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setEnabledCompressionMethods([Ljava/lang/String;)V
    .registers 3
    .parameter "methods"

    .prologue
    .line 151
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 108
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 172
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 177
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 162
    return-void
.end method
