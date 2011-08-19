.class public final Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"


# static fields
.field public static final INSTANCE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;


# instance fields
.field private final connectionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxConnections:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->INSTANCE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 52
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_14

    .line 53
    iput v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->maxConnections:I

    .line 67
    :goto_13
    return-void

    .line 57
    :cond_14
    const-string v3, "http.keepAlive"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, keepAlive:Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 59
    iput v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->maxConnections:I

    goto :goto_13

    .line 63
    :cond_25
    const-string v3, "http.maxConnections"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, maxConnectionsString:Ljava/lang/String;
    if-eqz v1, :cond_34

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_31
    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->maxConnections:I

    goto :goto_13

    :cond_34
    const/4 v3, 0x5

    goto :goto_31
.end method


# virtual methods
.method public get(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 8
    .parameter "address"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 73
    :try_start_3
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 74
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    if-eqz v1, :cond_2d

    .line 75
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 77
    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_d

    .line 78
    monitor-exit v2

    move-object v2, v0

    .line 89
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :goto_27
    return-object v2

    .line 81
    :cond_28
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_33

    .line 89
    invoke-virtual {p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->connect(I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v2

    goto :goto_27

    .line 83
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v3
.end method

.method public recycle(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 7
    .parameter "connection"

    .prologue
    .line 93
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->maxConnections:I

    if-lez v2, :cond_33

    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 94
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getAddress()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    move-result-object v0

    .line 95
    .local v0, address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v2

    .line 96
    :try_start_11
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 97
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    if-nez v1, :cond_25

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->maxConnections:I

    if-ge v3, v4, :cond_32

    .line 102
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v2

    .line 110
    .end local v0           #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :goto_31
    return-void

    .line 105
    .restart local v0       #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_37

    .line 109
    .end local v0           #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_33
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_31

    .line 105
    .restart local v0       #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3
.end method
