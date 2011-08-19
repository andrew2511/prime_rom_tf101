.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryImpl.java"


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, sslParametersLocal:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    const/4 v1, 0x0

    .line 43
    .local v1, instantiationExceptionLocal:Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_8
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_8} :catch_e

    move-result-object v2

    .line 48
    :goto_9
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 49
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 50
    return-void

    .line 44
    :catch_e
    move-exception v0

    .line 45
    .local v0, e:Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    .end local v1           #instantiationExceptionLocal:Ljava/io/IOException;
    const-string v3, "Delayed instantiation exception:"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v1       #instantiationExceptionLocal:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_9
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 3
    .parameter "sslParameters"

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 58
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 105
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 117
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 131
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 144
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 157
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .parameter "s"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 91
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, p1, p4, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;-><init>(Ljava/net/Socket;ZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 66
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 68
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 79
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
