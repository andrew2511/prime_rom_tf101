.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljavax/net/SocketFactory;)Ljavax/net/SocketFactory;
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .registers 5

    .prologue
    .line 48
    const-class v2, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v2

    :try_start_3
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v3, :cond_b

    .line 52
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    .line 95
    :goto_9
    monitor-exit v2

    return-object v3

    .line 54
    :cond_b
    :try_start_b
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 55
    new-instance v3, Ljavax/net/ssl/SSLSocketFactory$1;

    invoke-direct {v3}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 77
    :cond_17
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3a

    if-nez v3, :cond_27

    .line 80
    :try_start_1b
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1e} :catch_37

    move-result-object v0

    .line 84
    .local v0, context:Ljavax/net/ssl/SSLContext;
    :goto_1f
    if-eqz v0, :cond_27

    .line 85
    :try_start_21
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 88
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    :cond_27
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-nez v3, :cond_34

    .line 90
    new-instance v3, Ljavax/net/ssl/DefaultSSLSocketFactory;

    const-string v4, "No SSLSocketFactory installed"

    invoke-direct {v3, v4}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 95
    :cond_34
    sget-object v3, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_3a

    goto :goto_9

    .line 81
    :catch_37
    move-exception v1

    .line 82
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    .restart local v0       #context:Ljavax/net/ssl/SSLContext;
    goto :goto_1f

    .line 48
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_3a
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "throwable"

    .prologue
    .line 101
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
