.class public Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultTrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuiteNames:[Ljava/lang/String;

.field private enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field private enabledProtocols:[Ljava/lang/String;

.field private keyManager:Ljavax/net/ssl/X509KeyManager;

.field private need_client_auth:Z

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field private want_client_auth:Z


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V
    .registers 9
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .parameter "clientSessionContext"
    .parameter "serverSessionContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 77
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 84
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 86
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 110
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 111
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 119
    if-eqz p1, :cond_1d

    array-length v0, p1

    if-nez v0, :cond_2f

    .line 120
    :cond_1d
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 124
    :goto_23
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v0, :cond_36

    .line 125
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "No X509KeyManager found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2f
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    goto :goto_23

    .line 129
    :cond_36
    if-eqz p2, :cond_3b

    array-length v0, p2

    if-nez v0, :cond_4d

    .line 130
    :cond_3b
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 134
    :goto_41
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_54

    .line 135
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "No X509TrustManager found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_4d
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_41

    .line 153
    :cond_54
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 155
    return-void
.end method

.method private static createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 386
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 388
    .local v2, kmf:Ljavax/net/ssl/KeyManagerFactory;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 389
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 390
    .local v3, kms:[Ljavax/net/ssl/KeyManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_15} :catch_1b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_15} :catch_1f

    move-result-object v4

    .line 396
    .end local v0           #algorithm:Ljava/lang/String;
    .end local v2           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    .end local v3           #kms:[Ljavax/net/ssl/KeyManager;
    :goto_16
    return-object v4

    .line 391
    :catch_17
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v4, v6

    .line 392
    goto :goto_16

    .line 393
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1b
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/KeyStoreException;
    move-object v4, v6

    .line 394
    goto :goto_16

    .line 395
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_1f
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/UnrecoverableKeyException;
    move-object v4, v6

    .line 396
    goto :goto_16
.end method

.method private static createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 423
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, algorithm:Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 425
    .local v2, tmf:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    .end local v0           #algorithm:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 426
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 427
    .local v3, tms:[Ljavax/net/ssl/TrustManager;
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_16} :catch_1d

    move-result-object v4

    .local v4, trustManager:Ljavax/net/ssl/X509TrustManager;
    move-object v5, v4

    .line 432
    .end local v2           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v3           #tms:[Ljavax/net/ssl/TrustManager;
    .end local v4           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :goto_18
    return-object v5

    .line 429
    :catch_19
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v5, v6

    .line 430
    goto :goto_18

    .line 431
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1d
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/security/KeyStoreException;
    move-object v5, v6

    .line 432
    goto :goto_18
.end method

.method private static findX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 6
    .parameter "kms"

    .prologue
    .line 400
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/KeyManager;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 401
    .local v2, km:Ljavax/net/ssl/KeyManager;
    instance-of v4, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_f

    .line 402
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    move-object v4, v2

    .line 405
    :goto_e
    return-object v4

    .line 400
    .restart local v2       #km:Ljavax/net/ssl/KeyManager;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 405
    .end local v2           #km:Ljavax/net/ssl/KeyManager;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private static findX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 6
    .parameter "tms"

    .prologue
    .line 436
    move-object v0, p0

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 437
    .local v3, tm:Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_f

    .line 438
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    move-object v4, v3

    .line 441
    :goto_e
    return-object v4

    .line 436
    .restart local v3       #tm:Ljavax/net/ssl/TrustManager;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 441
    .end local v3           #tm:Ljavax/net/ssl/TrustManager;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method protected static getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 159
    .local v0, result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    if-nez v0, :cond_18

    .line 161
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .end local v0           #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    .restart local v0       #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 167
    :cond_18
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-object v0
.end method

.method private static getDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 1

    .prologue
    .line 377
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 378
    .local v0, result:Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_a

    .line 380
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 382
    :cond_a
    return-object v0
.end method

.method public static getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .prologue
    .line 414
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 415
    .local v0, result:Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_a

    .line 417
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 419
    :cond_a
    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 369
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 370
    :catch_5
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 231
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 233
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .line 235
    .local v0, enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 236
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 237
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 240
    .end local v0           #enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v1           #i:I
    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    if-nez v0, :cond_8

    .line 91
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->DEFAULT_CIPHER_SUITES:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 93
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .prologue
    .line 206
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_7

    .line 207
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 215
    :goto_6
    return-object v1

    .line 209
    :cond_7
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 210
    .local v0, result:Ljava/security/SecureRandom;
    if-nez v0, :cond_12

    .line 212
    new-instance v0, Ljava/security/SecureRandom;

    .end local v0           #result:Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .restart local v0       #result:Ljava/security/SecureRandom;
    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 214
    :cond_12
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 215
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_6
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method protected getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method protected getUseClientMode()Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getWantClientAuth()Z
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected setEnableSessionCreation(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 350
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enable_session_creation:Z

    .line 351
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 8
    .parameter "suites"

    .prologue
    .line 249
    if-nez p1, :cond_a

    .line 250
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "suites == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_a
    array-length v3, p1

    new-array v0, v3, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 253
    .local v0, cipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v3, p1

    if-ge v1, v3, :cond_60

    .line 254
    aget-object v2, p1, v1

    .line 255
    .local v2, suite:Ljava/lang/String;
    if-nez v2, :cond_34

    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suites["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_34
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    aput-object v3, v0, v1

    .line 259
    aget-object v3, v0, v1

    if-eqz v3, :cond_44

    aget-object v3, v0, v1

    iget-boolean v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v3, :cond_5d

    .line 260
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 263
    .end local v2           #suite:Ljava/lang/String;
    :cond_60
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 264
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 265
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .registers 7
    .parameter "protocols"

    .prologue
    .line 279
    if-nez p1, :cond_a

    .line 280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_59

    .line 283
    aget-object v1, p1, v0

    .line 284
    .local v1, protocol:Ljava/lang/String;
    if-nez v1, :cond_31

    .line 285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_31
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 288
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 291
    .end local v1           #protocol:Ljava/lang/String;
    :cond_59
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 292
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 314
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 317
    return-void
.end method

.method protected setUseClientMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->client_mode:Z

    .line 300
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->want_client_auth:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->need_client_auth:Z

    .line 334
    return-void
.end method
