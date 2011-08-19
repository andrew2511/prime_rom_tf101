.class public final Lcom/google/android/youtube/core/cache/AsyncCache;
.super Lcom/google/android/youtube/core/cache/AbstractCache;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/cache/AbstractCache",
        "<TK;TE;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final pending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TE;>;"
        }
    .end annotation
.end field

.field private final target:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/cache/Cache;)V
    .locals 1
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p2, target:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/AbstractCache;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->executor:Ljava/util/concurrent/Executor;

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/cache/AsyncCache;)Lcom/google/android/youtube/core/cache/Cache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/cache/AsyncCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/youtube/core/cache/Cache;->clear()V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->resetRatio()V

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public filter(Lcom/google/android/youtube/core/utils/Predicate;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p1, predicate:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/youtube/core/utils/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 116
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v2, p1}, Lcom/google/android/youtube/core/cache/Cache;->filter(Lcom/google/android/youtube/core/utils/Predicate;)V

    .line 117
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, value:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->hit()V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit (put pending). [ratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->ratio()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 83
    :goto_0
    monitor-exit v1

    return-object v0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v2, p1}, Lcom/google/android/youtube/core/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->hit()V

    goto :goto_0

    .line 84
    .end local v0           #value:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 80
    .restart local v0       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->miss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/cache/AsyncCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/cache/AsyncCache$1;-><init>(Lcom/google/android/youtube/core/cache/AsyncCache;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void

    .line 53
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
