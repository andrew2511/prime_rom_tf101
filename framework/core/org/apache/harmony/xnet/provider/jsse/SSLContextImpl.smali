.class public Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 57
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 58
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V
    .registers 10
    .parameter "dummy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 67
    const-class v7, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    monitor-enter v7

    .line 68
    :try_start_6
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    if-nez v1, :cond_38

    .line 69
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 70
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 71
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    move-object v1, v0

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    .line 76
    :goto_1e
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 81
    monitor-exit v7

    .line 82
    return-void

    .line 73
    :cond_38
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 74
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    goto :goto_1e

    .line 81
    :catchall_49
    move-exception v1

    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v1
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v1, :cond_c

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 133
    .local v0, p:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 134
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 6
    .parameter "host"
    .parameter "port"

    .prologue
    .line 119
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v1, :cond_c

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 123
    .local v0, p:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 124
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_c

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_c

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 99
    return-void
.end method
