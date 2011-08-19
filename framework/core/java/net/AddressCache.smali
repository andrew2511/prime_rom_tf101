.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_NEGATIVE_TTL_NANOS:J = 0x2540be400L

.field private static final DEFAULT_POSITIVE_TTL_NANOS:J = 0x8bb2c97000L

.field private static final MAX_ENTRIES:I = 0x200


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    .line 43
    return-void
.end method

.method private customTtl(Ljava/lang/String;J)J
    .registers 12
    .parameter "propertyName"
    .parameter "defaultTtlNanos"

    .prologue
    .line 131
    new-instance v4, Lorg/apache/harmony/luni/util/PriviAction;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, ttlString:Ljava/lang/String;
    if-nez v3, :cond_14

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 146
    :goto_13
    return-wide v4

    .line 136
    :cond_14
    :try_start_14
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 138
    .local v1, ttlS:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_24

    .line 139
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_13

    .line 140
    :cond_24
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2d

    .line 141
    const-wide/high16 v4, -0x8000

    goto :goto_13

    .line 143
    :cond_2d
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_30} :catch_37

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    goto :goto_13

    .line 145
    .end local v1           #ttlS:J
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 146
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p2

    goto :goto_13
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 67
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "hostname"

    .prologue
    .line 75
    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    .line 77
    .local v0, entry:Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_17

    iget-wide v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_17

    .line 78
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    .line 82
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .parameter "hostname"
    .parameter "value"
    .parameter "isPositive"

    .prologue
    .line 107
    if-eqz p3, :cond_2b

    const-string v5, "networkaddress.cache.ttl"

    move-object v4, v5

    .line 108
    .local v4, propertyName:Ljava/lang/String;
    :goto_5
    if-eqz p3, :cond_2f

    const-wide v5, 0x8bb2c97000L

    move-wide v0, v5

    .line 110
    .local v0, defaultTtlNanos:J
    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    add-long v2, v5, v0

    .line 111
    .local v2, expiryNanos:J
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    if-nez v5, :cond_20

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 113
    :cond_20
    invoke-direct {p0, v4, v0, v1}, Ljava/net/AddressCache;->customTtl(Ljava/lang/String;J)J

    move-result-wide v2

    .line 114
    const-wide/high16 v5, -0x8000

    cmp-long v5, v2, v5

    if-nez v5, :cond_36

    .line 120
    :goto_2a
    return-void

    .line 107
    .end local v0           #defaultTtlNanos:J
    .end local v2           #expiryNanos:J
    .end local v4           #propertyName:Ljava/lang/String;
    :cond_2b
    const-string v5, "networkaddress.cache.negative.ttl"

    move-object v4, v5

    goto :goto_5

    .line 108
    .restart local v4       #propertyName:Ljava/lang/String;
    :cond_2f
    const-wide v5, 0x2540be400L

    move-wide v0, v5

    goto :goto_d

    .line 119
    .restart local v0       #defaultTtlNanos:J
    .restart local v2       #expiryNanos:J
    :cond_36
    iget-object v5, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v6, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v6, p2, v2, v3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v5, p1, v6}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "hostname"
    .parameter "detailMessage"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 99
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .registers 4
    .parameter "hostname"
    .parameter "addresses"

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 91
    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "hostname"
    .parameter "detailMessage"

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Ljava/net/AddressCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
