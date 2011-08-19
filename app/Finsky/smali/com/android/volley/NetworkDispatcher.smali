.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .parameter
    .parameter "network"
    .parameter "cache"
    .parameter "delivery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 42
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 43
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 44
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 45
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 46
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 55
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 63
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .local v2, request:Lcom/android/volley/Request;
    :try_start_1
    const-string v4, "network-queue-take"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "network-discard-cancelled"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->finishMarking(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/AuthFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/volley/ServerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/volley/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/volley/NoConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 108
    .local v0, e:Lcom/android/volley/AuthFailureException;
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    sget-object v5, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-interface {v4, v2, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V

    goto :goto_0

    .line 64
    .end local v0           #e:Lcom/android/volley/AuthFailureException;
    .end local v2           #request:Lcom/android/volley/Request;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 66
    .local v0, e:Ljava/lang/InterruptedException;
    iget-boolean v4, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v4, :cond_0

    .line 67
    return-void

    .line 83
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #request:Lcom/android/volley/Request;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v4, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 84
    .local v1, networkResponse:Lcom/android/volley/NetworkResponse;
    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 88
    iget-boolean v4, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const-string v4, "not-modified"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->finishMarking(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/AuthFailureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/volley/ServerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/volley/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/volley/NoConnectionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 109
    .end local v1           #networkResponse:Lcom/android/volley/NetworkResponse;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 110
    .local v0, e:Lcom/android/volley/ServerException;
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    sget-object v5, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    invoke-interface {v4, v2, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V

    goto :goto_0

    .line 94
    .end local v0           #e:Lcom/android/volley/ServerException;
    .restart local v1       #networkResponse:Lcom/android/volley/NetworkResponse;
    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 95
    .local v3, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 101
    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 106
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v4, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_3
    .catch Lcom/android/volley/AuthFailureException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/volley/ServerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/volley/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/volley/NoConnectionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 111
    .end local v1           #networkResponse:Lcom/android/volley/NetworkResponse;
    .end local v3           #response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 112
    .local v0, e:Lcom/android/volley/TimeoutException;
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    sget-object v5, Lcom/android/volley/Response$ErrorCode;->TIMEOUT:Lcom/android/volley/Response$ErrorCode;

    invoke-interface {v4, v2, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V

    goto/16 :goto_0

    .line 113
    .end local v0           #e:Lcom/android/volley/TimeoutException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Lcom/android/volley/NoConnectionException;
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    sget-object v5, Lcom/android/volley/Response$ErrorCode;->NETWORK:Lcom/android/volley/Response$ErrorCode;

    invoke-interface {v4, v2, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V

    goto/16 :goto_0

    .line 115
    .end local v0           #e:Lcom/android/volley/NoConnectionException;
    :catch_5
    move-exception v4

    move-object v0, v4

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    sget-object v5, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    invoke-interface {v4, v2, v5}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V

    goto/16 :goto_0
.end method
