.class public Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

.field final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(II)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .registers 9
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p1, :cond_5

    move-object v3, v5

    .line 93
    :goto_4
    return-object v3

    .line 70
    :cond_5
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 71
    .local v1, hostAndPortKey:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 72
    :try_start_d
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    .line 73
    .local v2, session:Ljavax/net/ssl/SSLSession;
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_20

    .line 74
    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v3, v2

    .line 75
    goto :goto_4

    .line 73
    .end local v2           #session:Ljavax/net/ssl/SSLSession;
    :catchall_20
    move-exception v4

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v4

    .line 79
    .restart local v2       #session:Ljavax/net/ssl/SSLSession;
    :cond_23
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v3, :cond_4c

    .line 80
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v3, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 81
    .local v0, data:[B
    if-eqz v0, :cond_4c

    .line 82
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_4c

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 84
    invoke-super {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 85
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 86
    :try_start_41
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v3

    move-object v3, v2

    .line 88
    goto :goto_4

    .line 87
    :catchall_49
    move-exception v4

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v4

    .end local v0           #data:[B
    :cond_4c
    move-object v3, v5

    .line 93
    goto :goto_4
.end method

.method public bridge synthetic getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 8
    .parameter "session"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 100
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, host:Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v3

    .line 102
    .local v3, port:I
    if-nez v1, :cond_e

    .line 118
    :cond_d
    :goto_d
    return-void

    .line 106
    :cond_e
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v2, hostAndPortKey:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    .line 108
    :try_start_16
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2c

    .line 112
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v4, :cond_d

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 114
    .local v0, data:[B
    if-eqz v0, :cond_d

    .line 115
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v4, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    goto :goto_d

    .line 109
    .end local v0           #data:[B
    :catchall_2c
    move-exception v5

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v5
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .registers 7
    .parameter "session"

    .prologue
    .line 47
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, host:Ljava/lang/String;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v2

    .line 49
    .local v2, port:I
    if-nez v0, :cond_b

    .line 56
    :goto_a
    return-void

    .line 52
    :cond_b
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v1, hostAndPortKey:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 54
    :try_start_13
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v3

    goto :goto_a

    :catchall_1a
    move-exception v4

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V
    .registers 2
    .parameter "persistentCache"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    .line 44
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method
