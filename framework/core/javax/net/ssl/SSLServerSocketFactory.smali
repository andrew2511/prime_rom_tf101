.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    sput-object p0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljavax/net/ServerSocketFactory;)Ljavax/net/ServerSocketFactory;
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    sput-object p0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    return-object p0
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .registers 5

    .prologue
    .line 45
    const-class v2, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v2

    :try_start_3
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v3, :cond_b

    .line 46
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    .line 83
    :goto_9
    monitor-exit v2

    return-object v3

    .line 48
    :cond_b
    :try_start_b
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 49
    new-instance v3, Ljavax/net/ssl/SSLServerSocketFactory$1;

    invoke-direct {v3}, Ljavax/net/ssl/SSLServerSocketFactory$1;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 67
    :cond_17
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3a

    if-nez v3, :cond_27

    .line 70
    :try_start_1b
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1e} :catch_37

    move-result-object v0

    .line 74
    .local v0, context:Ljavax/net/ssl/SSLContext;
    :goto_1f
    if-eqz v0, :cond_27

    .line 75
    :try_start_21
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3

    sput-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 78
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    :cond_27
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v3, :cond_34

    .line 80
    new-instance v3, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v4, "No ServerSocketFactory installed"

    invoke-direct {v3, v4}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 83
    :cond_34
    sget-object v3, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_3a

    goto :goto_9

    .line 71
    :catch_37
    move-exception v1

    .line 72
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    .restart local v0       #context:Ljavax/net/ssl/SSLContext;
    goto :goto_1f

    .line 45
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_3a
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
