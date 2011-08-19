.class Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;
.super Ljava/net/ContentHandler;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileResponseCacheContentHandler"
.end annotation


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mCookie:Ljava/lang/Object;

.field private final mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;Lcom/google/android/filecache/FileResponseCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "contentHandler"
    .parameter "fileResponseCache"
    .parameter "cookie"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 454
    iput-object p2, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    .line 455
    iput-object p3, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mCookie:Ljava/lang/Object;

    .line 456
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 463
    :cond_0
    new-instance v1, Lcom/google/android/filecache/FileResponseCache$Frame;

    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mCookie:Ljava/lang/Object;

    invoke-direct {v1, p1, v5}, Lcom/google/android/filecache/FileResponseCache$Frame;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    .line 464
    .local v1, frame:Lcom/google/android/filecache/FileResponseCache$Frame;
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    invoke-static {v5}, Lcom/google/android/filecache/FileResponseCache;->access$000(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    .line 465
    .local v4, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-nez v4, :cond_1

    .line 466
    new-instance v4, Ljava/util/Stack;

    .end local v4           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 467
    .restart local v4       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    invoke-static {v5}, Lcom/google/android/filecache/FileResponseCache;->access$000(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 469
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :try_start_0
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v5, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 474
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCacheRequest()Ljava/net/CacheRequest;

    move-result-object v3

    .line 475
    .local v3, request:Ljava/net/CacheRequest;
    if-eqz v3, :cond_2

    .line 476
    invoke-virtual {v3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    .line 477
    .local v2, output:Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 490
    .end local v2           #output:Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object v5

    .line 474
    .end local v3           #request:Ljava/net/CacheRequest;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCacheRequest()Ljava/net/CacheRequest;

    move-result-object v3

    .line 475
    .restart local v3       #request:Ljava/net/CacheRequest;
    if-eqz v3, :cond_3

    .line 476
    invoke-virtual {v3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    .line 477
    .restart local v2       #output:Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 479
    .end local v2           #output:Ljava/io/OutputStream;
    :cond_3
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 480
    .end local v3           #request:Ljava/net/CacheRequest;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 481
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    invoke-static {v5, v1}, Lcom/google/android/filecache/FileResponseCache;->access$100(Lcom/google/android/filecache/FileResponseCache;Lcom/google/android/filecache/FileResponseCache$Frame;)V

    .line 482
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 490
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    throw v5

    .line 483
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 484
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    invoke-static {v5, v1}, Lcom/google/android/filecache/FileResponseCache;->access$100(Lcom/google/android/filecache/FileResponseCache;Lcom/google/android/filecache/FileResponseCache$Frame;)V

    .line 485
    throw v0

    .line 486
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 487
    .local v0, e:Ljava/lang/Error;
    iget-object v5, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    invoke-static {v5, v1}, Lcom/google/android/filecache/FileResponseCache;->access$100(Lcom/google/android/filecache/FileResponseCache;Lcom/google/android/filecache/FileResponseCache$Frame;)V

    .line 488
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method
