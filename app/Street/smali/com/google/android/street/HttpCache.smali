.class public Lcom/google/android/street/HttpCache;
.super Ljava/lang/Object;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/HttpCache$LruHttpCache;,
        Lcom/google/android/street/HttpCache$CacheEntry;,
        Lcom/google/android/street/HttpCache$AbortableInputStream;,
        Lcom/google/android/street/HttpCache$Aborter;
    }
.end annotation


# static fields
.field private static msHttpClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private final mCacheDirPath:Ljava/lang/String;

.field private final mDownloading:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

.field private final mMaxHttpRequests:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .parameter "maxHttpRequests"
    .parameter "cacheDirPath"
    .parameter "numFiles"

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    .line 326
    new-instance v0, Lcom/google/android/street/HttpCache$LruHttpCache;

    invoke-direct {v0, p3}, Lcom/google/android/street/HttpCache$LruHttpCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    .line 327
    iput p1, p0, Lcom/google/android/street/HttpCache;->mMaxHttpRequests:I

    .line 328
    iput-object p2, p0, Lcom/google/android/street/HttpCache;->mCacheDirPath:Ljava/lang/String;

    .line 329
    invoke-direct {p0}, Lcom/google/android/street/HttpCache;->initializeCache()V

    .line 330
    return-void
.end method

.method private cacheFileRef(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 697
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/street/HttpCache;->mCacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static checkInterrupts(Ljava/lang/String;)V
    .locals 1
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, p0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 338
    if-eqz p0, :cond_0

    .line 340
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createUncachedUrlStream(Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)Ljava/io/InputStream;
    .locals 8
    .parameter "url"
    .parameter "aborter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v2, 0x0

    .line 620
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 621
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    .line 622
    :try_start_1
    invoke-virtual {p2, v3}, Lcom/google/android/street/HttpCache$Aborter;->add(Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/street/HttpCache;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 625
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    .line 626
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Bad status code"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .line 638
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .local v0, e:Ljava/lang/IllegalStateException;
    .restart local v2       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "IllegalStateException"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 641
    invoke-virtual {p2, v2}, Lcom/google/android/street/HttpCache$Aborter;->remove(Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    :cond_1
    throw v6

    .line 628
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 629
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, p2, v3}, Lcom/google/android/street/HttpCache$AbortableInputStream;->getStream(Ljava/io/InputStream;Lcom/google/android/street/HttpCache$Aborter;Lorg/apache/http/client/methods/AbortableHttpRequest;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .line 631
    .local v5, result:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 640
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 641
    invoke-virtual {p2, v2}, Lcom/google/android/street/HttpCache$Aborter;->remove(Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    :cond_3
    return-object v5

    .line 640
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #result:Ljava/io/InputStream;
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1

    .line 633
    :catch_1
    move-exception v6

    move-object v0, v6

    goto :goto_0
.end method

.method private fetchToCache(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)[B
    .locals 4
    .parameter "url"
    .parameter "persistentKey"
    .parameter "aborter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 716
    .local v1, needToRemoveDownload:Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 742
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_0

    .line 743
    monitor-enter p0

    .line 744
    :try_start_3
    iget-object v3, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 747
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_0
    throw v2

    .line 722
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    invoke-virtual {v2, p2}, Lcom/google/android/street/HttpCache$LruHttpCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 730
    iget-object v2, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    const/4 v1, 0x1

    .line 732
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 734
    :try_start_5
    const-string v2, "fetchToCache"

    invoke-static {v2}, Lcom/google/android/street/HttpCache;->checkInterrupts(Ljava/lang/String;)V

    .line 736
    invoke-direct {p0, p1, p3}, Lcom/google/android/street/HttpCache;->readUncachedUrl(Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)[B

    move-result-object v0

    .line 737
    .local v0, data:[B
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 738
    invoke-direct {p0, v0, p2}, Lcom/google/android/street/HttpCache;->saveToCacheInternal([BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 742
    :cond_2
    if-eqz v1, :cond_3

    .line 743
    monitor-enter p0

    .line 744
    :try_start_6
    iget-object v2, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 747
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_3
    move-object v2, v0

    .end local v0           #data:[B
    :cond_4
    :goto_1
    return-object v2

    .line 725
    :cond_5
    const-wide/32 v2, 0x36ee80

    :try_start_7
    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/street/HttpCache;->getCachedFile(Ljava/lang/String;J)[B

    move-result-object v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 742
    if-eqz v1, :cond_4

    .line 743
    monitor-enter p0

    .line 744
    :try_start_8
    iget-object v3, p0, Lcom/google/android/street/HttpCache;->mDownloading:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 747
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .restart local v0       #data:[B
    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .end local v0           #data:[B
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2
.end method

.method private declared-synchronized getCachedFile(Ljava/lang/String;J)[B
    .locals 2
    .parameter "persistentKey"
    .parameter "shelfLife"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    invoke-virtual {v1, p1}, Lcom/google/android/street/HttpCache$LruHttpCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/HttpCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .local v0, entry:Lcom/google/android/street/HttpCache$CacheEntry;
    if-nez v0, :cond_0

    .line 569
    const/4 v1, 0x0

    .line 571
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/street/HttpCache;->readCachedFile(Lcom/google/android/street/HttpCache$CacheEntry;J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 566
    .end local v0           #entry:Lcom/google/android/street/HttpCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getCurrentTime()J
    .locals 2

    .prologue
    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getHttpClientImp(I)Lorg/apache/http/client/HttpClient;
    .locals 8
    .parameter "maxHttpRequests"

    .prologue
    .line 353
    const-class v3, Lcom/google/android/street/HttpCache;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/street/HttpCache;->msHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_0

    .line 354
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 359
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 362
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 363
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 364
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 367
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 370
    const-string v4, "Android StreetView"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 371
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 372
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 374
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 376
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 380
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v4, p0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 383
    new-instance v4, Lcom/google/android/street/HttpCache$1;

    invoke-direct {v4, v0, v1}, Lcom/google/android/street/HttpCache$1;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/google/android/street/HttpCache;->msHttpClient:Lorg/apache/http/client/HttpClient;

    .line 402
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    sget-object v4, Lcom/google/android/street/HttpCache;->msHttpClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v4

    .line 353
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private declared-synchronized initializeCache()V
    .locals 20

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/HttpCache;->mCacheDirPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v3, cacheDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_1

    .line 817
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not open cache directory "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/HttpCache;->mCacheDirPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_0
    monitor-exit p0

    return-void

    .line 820
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v10

    .line 821
    .local v10, t0:J
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, files:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v12

    .line 826
    .local v12, t1:J
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/HttpCache;->mCacheDir:Ljava/io/File;

    .line 838
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/street/HttpCache$CacheEntry;

    move-object v4, v0

    .line 839
    .local v4, entries:[Lcom/google/android/street/HttpCache$CacheEntry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 840
    new-instance v18, Lcom/google/android/street/HttpCache$CacheEntry;

    aget-object v19, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/street/HttpCache;->cacheFileRef(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/google/android/street/HttpCache$CacheEntry;-><init>(Ljava/io/File;)V

    aput-object v18, v4, v7

    .line 839
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 842
    :cond_2
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v14

    .line 843
    .local v14, t2:J
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 844
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v16

    .line 846
    .local v16, t3:J
    move-object v2, v4

    .local v2, arr$:[Lcom/google/android/street/HttpCache$CacheEntry;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v5, v2, v8

    .line 847
    .local v5, entry:Lcom/google/android/street/HttpCache$CacheEntry;
    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/street/HttpCache$LruHttpCache;->insert(Lcom/google/android/street/HttpCache$CacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 815
    .end local v2           #arr$:[Lcom/google/android/street/HttpCache$CacheEntry;
    .end local v3           #cacheDir:Ljava/io/File;
    .end local v4           #entries:[Lcom/google/android/street/HttpCache$CacheEntry;
    .end local v5           #entry:Lcom/google/android/street/HttpCache$CacheEntry;
    .end local v6           #files:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #t0:J
    .end local v12           #t1:J
    .end local v14           #t2:J
    .end local v16           #t3:J
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method private readCachedFile(Lcom/google/android/street/HttpCache$CacheEntry;J)[B
    .locals 10
    .parameter "entry"
    .parameter "shelfLife"

    .prologue
    const/4 v9, 0x0

    .line 663
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v4

    .line 664
    .local v4, now:J
    iget-wide v7, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    sub-long v7, v4, v7

    cmp-long v7, v7, p2

    if-lez v7, :cond_0

    .line 665
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expired cache file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/google/android/street/HttpCache;->removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V

    move-object v7, v9

    .line 688
    :goto_0
    return-object v7

    .line 670
    :cond_0
    const/4 v1, 0x0

    .line 671
    .local v1, dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 673
    .local v6, success:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/street/HttpCache$CacheEntry;->openData()Ljava/io/DataInputStream;

    move-result-object v1

    .line 674
    invoke-virtual {p1}, Lcom/google/android/street/HttpCache$CacheEntry;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 675
    .local v0, data:[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    const/4 v6, 0x1

    .line 683
    invoke-static {v1}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 684
    if-nez v6, :cond_1

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/street/HttpCache;->removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V

    :cond_1
    move-object v7, v0

    goto :goto_0

    .line 678
    .end local v0           #data:[B
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 679
    .local v3, e3:Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find cache file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    invoke-static {v1}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 684
    if-nez v6, :cond_2

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/street/HttpCache;->removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V

    .end local v3           #e3:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move-object v7, v9

    .line 688
    goto :goto_0

    .line 680
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 681
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read cache file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    invoke-static {v1}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 684
    if-nez v6, :cond_2

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/street/HttpCache;->removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V

    goto :goto_1

    .line 683
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v1}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 684
    if-nez v6, :cond_3

    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/street/HttpCache;->removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V

    :cond_3
    throw v7
.end method

.method private readUncachedUrl(Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)[B
    .locals 6
    .parameter "url"
    .parameter "aborter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    const/16 v0, 0x2000

    .line 585
    .local v0, BUFFER_SIZE:I
    const/4 v4, 0x0

    .line 588
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/HttpCache;->createUncachedUrlStream(Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)Ljava/io/InputStream;

    move-result-object v4

    .line 589
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 590
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v2, v5, [B

    .line 592
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 593
    .local v3, bytesRead:I
    if-gtz v3, :cond_0

    .line 598
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/street/HttpCache$Aborter;->aborted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    const/4 v5, 0x0

    .line 603
    invoke-static {v4}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-object v5

    .line 596
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 603
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .line 601
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #bytesRead:I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 603
    invoke-static {v4}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private declared-synchronized removeCacheEntry(Lcom/google/android/street/HttpCache$CacheEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 517
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    iget-object v1, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/street/HttpCache$LruHttpCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveToCacheInternal([BLjava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "persistentKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 791
    .local v2, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/street/HttpCache;->cacheFileRef(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 792
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    .end local v2           #os:Ljava/io/OutputStream;
    .local v3, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 795
    invoke-static {v3}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 796
    const/4 v2, 0x0

    .line 797
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :try_start_3
    iget-object v4, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    new-instance v5, Lcom/google/android/street/HttpCache$CacheEntry;

    invoke-direct {v5, v1}, Lcom/google/android/street/HttpCache$CacheEntry;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/google/android/street/HttpCache$LruHttpCache;->insert(Lcom/google/android/street/HttpCache$CacheEntry;)V

    .line 798
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 799
    const/4 v1, 0x0

    .line 803
    invoke-static {v2}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 804
    if-eqz v1, :cond_0

    .line 805
    throw v1

    .line 808
    :cond_0
    return-void

    .line 798
    :catchall_0
    move-exception v4

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 800
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 801
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 803
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    invoke-static {v2}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    .line 804
    if-eqz v1, :cond_1

    .line 805
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v4

    .line 798
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/google/android/street/HttpCache;->mMaxHttpRequests:I

    invoke-static {v0}, Lcom/google/android/street/HttpCache;->getHttpClientImp(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isInCache(Ljava/lang/String;J)Z
    .locals 5
    .parameter "persistentKey"
    .parameter "shelfLife"

    .prologue
    .line 539
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 540
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "persistentKey"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 542
    :cond_1
    const-wide/16 v3, 0x1

    cmp-long v3, p2, v3

    if-gez v3, :cond_2

    .line 543
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "shelfLife"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_2
    invoke-static {}, Lcom/google/android/street/HttpCache;->getCurrentTime()J

    move-result-wide v1

    .line 547
    .local v1, now:J
    iget-object v3, p0, Lcom/google/android/street/HttpCache;->mIndex:Lcom/google/android/street/HttpCache$LruHttpCache;

    invoke-virtual {v3, p1}, Lcom/google/android/street/HttpCache$LruHttpCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/HttpCache$CacheEntry;

    .line 549
    .local v0, cacheEntry:Lcom/google/android/street/HttpCache$CacheEntry;
    if-eqz v0, :cond_3

    iget-wide v3, v0, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, v1, v3

    cmp-long v3, v3, p2

    if-gtz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    monitor-exit p0

    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read(Ljava/lang/String;ZLcom/google/android/street/HttpCache$Aborter;Ljava/lang/String;J)[B
    .locals 4
    .parameter "url"
    .parameter "fetchIfMissing"
    .parameter "aborter"
    .parameter "persistentKey"
    .parameter "shelfLife"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 449
    const/4 v0, 0x0

    .line 452
    .local v0, data:[B
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "persistentKey"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_2
    const-wide/16 v1, 0x1

    cmp-long v1, p5, v1

    if-gez v1, :cond_3

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shelfLife"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/google/android/street/HttpCache;->mCacheDir:Ljava/io/File;

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    .line 463
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/street/HttpCache;->getCachedFile(Ljava/lang/String;J)[B

    move-result-object v0

    .line 464
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 503
    :goto_0
    return-object v1

    .line 471
    :cond_4
    const-string v1, "read"

    invoke-static {v1}, Lcom/google/android/street/HttpCache;->checkInterrupts(Ljava/lang/String;)V

    .line 473
    if-nez p2, :cond_5

    move-object v1, v3

    .line 477
    goto :goto_0

    .line 483
    :cond_5
    invoke-direct {p0, p1, p4, p3}, Lcom/google/android/street/HttpCache;->fetchToCache(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)[B

    move-result-object v0

    .line 484
    if-eqz v0, :cond_6

    move-object v1, v0

    .line 488
    goto :goto_0

    .line 492
    :cond_6
    if-nez p2, :cond_7

    move-object v1, v3

    .line 496
    goto :goto_0

    .line 503
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/google/android/street/HttpCache;->readUncachedUrl(Ljava/lang/String;Lcom/google/android/street/HttpCache$Aborter;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public saveToCache([BLjava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "persistentKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "persistentKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/HttpCache;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 773
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/HttpCache;->saveToCacheInternal([BLjava/lang/String;)V

    .line 778
    :cond_2
    return-void
.end method
