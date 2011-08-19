.class public abstract Ljava/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# static fields
.field private static defaultResponseCache:Ljava/net/ResponseCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljava/net/ResponseCache;
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 39
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 40
    new-instance v1, Ljava/net/NetPermission;

    const-string v2, "getResponseCache"

    invoke-direct {v1, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 42
    :cond_10
    sget-object v1, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    return-object v1
.end method

.method public static setDefault(Ljava/net/ResponseCache;)V
    .registers 4
    .parameter "responseCache"

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 50
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 51
    new-instance v1, Ljava/net/NetPermission;

    const-string v2, "setResponseCache"

    invoke-direct {v1, v2}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 53
    :cond_10
    sput-object p0, Ljava/net/ResponseCache;->defaultResponseCache:Ljava/net/ResponseCache;

    .line 54
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
