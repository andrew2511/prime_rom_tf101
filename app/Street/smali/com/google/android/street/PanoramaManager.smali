.class public Lcom/google/android/street/PanoramaManager;
.super Ljava/lang/Object;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/PanoramaManager$ServerRequestListener;,
        Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;,
        Lcom/google/android/street/PanoramaManager$PanoFetchListener;,
        Lcom/google/android/street/PanoramaManager$ConfigFetchListener;
    }
.end annotation


# instance fields
.field private final mHttpCache:Lcom/google/android/street/HttpCache;

.field private final mRetrieving:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/street/HttpCache;)V
    .locals 1
    .parameter "httpCache"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    .line 68
    iput-object p1, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    .line 69
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/street/PanoramaManager;)Lcom/google/android/street/HttpCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V

    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "o"
    .parameter "name"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method private declared-synchronized doneRetrieving(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isRetrieving(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 265
    :goto_0
    monitor-exit p0

    return v0

    .line 264
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/MapPoint;Z)Z
    .locals 3
    .parameter "listener"
    .parameter "mapPoint"
    .parameter "isImmediate"

    .prologue
    .line 345
    const-string v2, "listener"

    invoke-static {p1, v2}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    const-string v2, "mapPoint"

    invoke-static {p2, v2}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, p2}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 365
    :goto_0
    return v2

    .line 359
    :cond_0
    new-instance v1, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 361
    .local v1, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v2, Lcom/google/android/street/PanoramaRequest;

    invoke-direct {v2, v1, p2}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Lcom/google/android/street/MapPoint;)V

    invoke-virtual {v2}, Lcom/google/android/street/PanoramaRequest;->addConfigRequest()Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 364
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    .line 365
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Lcom/google/android/street/MapPoint;Z)Z
    .locals 1
    .parameter "listener"
    .parameter "panoId"
    .parameter "mapPoint"
    .parameter "isImmediate"

    .prologue
    .line 392
    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Z)Z

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/MapPoint;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "listener"
    .parameter "panoId"
    .parameter "isImmediate"

    .prologue
    const/4 v7, 0x1

    .line 293
    const-string v4, "listener"

    invoke-static {p1, v4}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    const-string v4, "panoId"

    invoke-static {p2, v4}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-static {p2}, Lcom/google/android/street/PanoramaConfig;->persistentKeyForPanoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, persistentKey:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const/4 v4, 0x0

    .line 326
    :goto_0
    return v4

    .line 306
    :cond_0
    iget-object v4, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    const-wide/32 v5, 0x6db5f0

    invoke-virtual {v4, v1, v5, v6}, Lcom/google/android/street/HttpCache;->isInCache(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    new-instance v2, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;)V

    .line 312
    .local v2, request:Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "Config-loader"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v4, v7

    .line 313
    goto :goto_0

    .line 320
    .end local v2           #request:Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;
    :cond_1
    new-instance v3, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 322
    .local v3, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v4, Lcom/google/android/street/PanoramaRequest;

    invoke-direct {v4, v3, p2}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/street/PanoramaRequest;->addConfigRequest()Lcom/google/android/street/PanoramaRequest;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 325
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    move v4, v7

    .line 326
    goto :goto_0
.end method

.method public requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z
    .locals 6
    .parameter "listener"
    .parameter "key"
    .parameter "isImmediate"

    .prologue
    .line 412
    invoke-direct {p0, p2}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const/4 v2, 0x0

    .line 429
    :goto_0
    return v2

    .line 422
    :cond_0
    new-instance v1, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 423
    .local v1, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v2, Lcom/google/android/street/PanoramaRequest;

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getPanoramaId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/street/PanoramaRequest;->addTilesRequest(I)Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getX()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getY()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getFace()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/street/PanoramaRequest;->addTile(III)Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 428
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    .line 429
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z
    .locals 6
    .parameter "listener"
    .parameter "panoId"
    .parameter "zoom"
    .parameter "x"
    .parameter "y"
    .parameter "face"
    .parameter "isImmediate"

    .prologue
    .line 438
    const-string v1, "listener"

    invoke-static {p1, v1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    const-string v1, "panoId"

    invoke-static {p2, v1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    .line 443
    .local v0, key:Lcom/google/android/street/PanoramaImageKey;
    invoke-virtual {p0, p1, v0, p7}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z

    move-result v1

    return v1
.end method
