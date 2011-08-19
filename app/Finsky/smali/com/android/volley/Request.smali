.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private mCacheEntry:Lcom/android/volley/Cache$Entry;

.field private mCanceled:Z

.field private mDrainable:Z

.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

.field private mResponseDelivered:Z

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .parameter "url"
    .parameter "listener"

    .prologue
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    .line 41
    iput-boolean v2, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/volley/Request;->mDrainable:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 57
    iput-object v3, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 66
    iput-object p1, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 68
    return-void

    :cond_0
    move-object v0, v3

    .line 29
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    return-object v0
.end method


# virtual methods
.method addMarker(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 74
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 77
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 168
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    .line 169
    return-void
.end method

.method public compareTo(Lcom/android/volley/Request;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    .local p1, other:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 323
    .local v0, left:Lcom/android/volley/Request$Priority;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v1

    .line 327
    .local v1, right:Lcom/android/volley/Request$Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    check-cast p1, Lcom/android/volley/Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->compareTo(Lcom/android/volley/Request;)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 311
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/volley/Request;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finishMarking(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 83
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    sget-boolean v3, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v3, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 85
    .local v1, threadId:J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .local v0, mainThread:Landroid/os/Handler;
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .end local v0           #mainThread:Landroid/os/Handler;
    .end local v1           #threadId:J
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v1       #threadId:J
    :cond_1
    iget-object v3, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 100
    iget-object v3, p0, Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCacheEntry()Lcom/android/volley/Cache$Entry;
    .locals 1

    .prologue
    .line 161
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 258
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getRawPostBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .prologue
    .line 115
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 175
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mCanceled:Z

    return v0
.end method

.method public isDrainable()Z
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mDrainable:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 274
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->mResponseDelivered:Z

    .line 275
    return-void
.end method

.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .parameter "entry"

    .prologue
    .line 154
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iput-object p1, p0, Lcom/android/volley/Request;->mCacheEntry:Lcom/android/volley/Cache$Entry;

    .line 155
    return-void
.end method

.method public setDrainable(Z)V
    .locals 0
    .parameter "drainable"

    .prologue
    .line 125
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mDrainable:Z

    .line 126
    return-void
.end method

.method public final setSequence(I)V
    .locals 1
    .parameter "sequence"

    .prologue
    .line 108
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public final setShouldCache(Z)V
    .locals 0
    .parameter "shouldCache"

    .prologue
    .line 233
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iput-boolean p1, p0, Lcom/android/volley/Request;->mShouldCache:Z

    .line 234
    return-void
.end method

.method public final shouldCache()Z
    .locals 1

    .prologue
    .line 240
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    iget-boolean v0, p0, Lcom/android/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    .local p0, this:Lcom/android/volley/Request;,"Lcom/android/volley/Request<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/volley/Request;->mCanceled:Z

    if-eqz v1, :cond_0

    const-string v1, "[X] "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "[ ] "

    goto :goto_0
.end method
