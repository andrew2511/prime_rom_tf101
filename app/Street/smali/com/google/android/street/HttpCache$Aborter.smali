.class public Lcom/google/android/street/HttpCache$Aborter;
.super Ljava/lang/Object;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/HttpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aborter"
.end annotation


# instance fields
.field private mAbort:Z

.field private final mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/client/methods/AbortableHttpRequest;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    .line 90
    return-void
.end method


# virtual methods
.method declared-synchronized aborted()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mAbort:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized add(Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mAbort:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized remove(Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
