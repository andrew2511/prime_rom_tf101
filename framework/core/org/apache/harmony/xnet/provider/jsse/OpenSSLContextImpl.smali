.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
.source "OpenSSLContextImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V
    .registers 2
    .parameter "dummy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V

    .line 35
    return-void
.end method


# virtual methods
.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_c

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_c

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method
