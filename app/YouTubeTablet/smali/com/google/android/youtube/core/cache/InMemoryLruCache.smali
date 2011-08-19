.class public final Lcom/google/android/youtube/core/cache/InMemoryLruCache;
.super Lcom/google/android/youtube/core/cache/AbstractCache;
.source "InMemoryLruCache.java"


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
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TE;>;"
        }
    .end annotation
.end field

.field private final maxCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "size"

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    const/high16 v3, 0x3f40

    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/AbstractCache;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->maxCacheSize:I

    .line 41
    int-to-float v1, p1

    div-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 42
    .local v0, mapSize:I
    new-instance v1, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;-><init>(Lcom/google/android/youtube/core/cache/InMemoryLruCache;IFZ)V

    iput-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/cache/InMemoryLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->maxCacheSize:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->resetRatio()V

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
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
    .line 91
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    .local p1, predicate:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    const-string v1, "predicate may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/youtube/core/utils/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 98
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
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
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v1, "key may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, element:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->hit()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit. [ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->ratio()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 68
    :goto_0
    monitor-exit v1

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->miss()V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Miss. [ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->ratio()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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
    .line 76
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "element may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
