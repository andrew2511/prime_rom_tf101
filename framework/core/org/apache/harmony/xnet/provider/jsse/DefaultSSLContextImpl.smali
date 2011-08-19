.class public final Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V

    .line 60
    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 64
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v8, :cond_8

    .line 65
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 94
    :goto_7
    return-object v8

    .line 68
    :cond_8
    const-string v8, "javax.net.ssl.keyStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, keystore:Ljava/lang/String;
    if-nez v2, :cond_12

    move-object v8, v9

    .line 70
    goto :goto_7

    .line 72
    :cond_12
    const-string v8, "javax.net.ssl.keyStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, keystorepwd:Ljava/lang/String;
    if-nez v3, :cond_50

    move-object v7, v9

    .line 75
    .local v7, pwd:[C
    :goto_1b
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 76
    .local v6, ks:Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 78
    .local v0, is:Ljava/io/InputStream;
    :try_start_24
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_56

    .line 79
    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    :try_start_2e
    invoke-virtual {v6, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 81
    if-eqz v1, :cond_36

    .line 82
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 86
    :cond_36
    const-string v8, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v8}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, kmfAlg:Ljava/lang/String;
    if-nez v5, :cond_40

    .line 88
    const-string v5, "SunX509"

    .line 91
    :cond_40
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 92
    .local v4, kmf:Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 93
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    sput-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 94
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    goto :goto_7

    .line 73
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    .end local v5           #kmfAlg:Ljava/lang/String;
    .end local v6           #ks:Ljava/security/KeyStore;
    .end local v7           #pwd:[C
    :cond_50
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object v7, v8

    goto :goto_1b

    .line 81
    .restart local v0       #is:Ljava/io/InputStream;
    .restart local v6       #ks:Ljava/security/KeyStore;
    .restart local v7       #pwd:[C
    :catchall_56
    move-exception v8

    :goto_57
    if-eqz v0, :cond_5c

    .line 82
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5c
    throw v8

    .line 81
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_5d
    move-exception v8

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_57
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 99
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v8, :cond_8

    .line 100
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 130
    :goto_7
    return-object v8

    .line 104
    :cond_8
    const-string v8, "javax.net.ssl.trustStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, keystore:Ljava/lang/String;
    if-nez v2, :cond_12

    move-object v8, v9

    .line 106
    goto :goto_7

    .line 108
    :cond_12
    const-string v8, "javax.net.ssl.trustStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, keystorepwd:Ljava/lang/String;
    if-nez v3, :cond_50

    move-object v5, v9

    .line 112
    .local v5, pwd:[C
    :goto_1b
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 113
    .local v4, ks:Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 115
    .local v0, is:Ljava/io/InputStream;
    :try_start_24
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_56

    .line 116
    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    :try_start_2e
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 118
    if-eqz v1, :cond_36

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 122
    :cond_36
    const-string v8, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v8}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, tmfAlg:Ljava/lang/String;
    if-nez v7, :cond_40

    .line 124
    const-string v7, "PKIX"

    .line 127
    :cond_40
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 128
    .local v6, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 129
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    sput-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 130
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    goto :goto_7

    .line 109
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #ks:Ljava/security/KeyStore;
    .end local v5           #pwd:[C
    .end local v6           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v7           #tmfAlg:Ljava/lang/String;
    :cond_50
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object v5, v8

    goto :goto_1b

    .line 118
    .restart local v0       #is:Ljava/io/InputStream;
    .restart local v4       #ks:Ljava/security/KeyStore;
    .restart local v5       #pwd:[C
    :catchall_56
    move-exception v8

    :goto_57
    if-eqz v0, :cond_5c

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5c
    throw v8

    .line 118
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_5d
    move-exception v8

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_57
.end method
