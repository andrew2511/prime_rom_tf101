.class public Lcom/google/android/music/utils/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/LruCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private mLruMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mSoftMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/google/android/music/utils/LruCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/utils/LruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/music/utils/LruCache;->mCapacity:I

    return v0
.end method

.method private cleanUpSoftMap()V
    .locals 3

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache$Entry;

    .line 61
    .local v0, entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/google/android/music/utils/LruCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0           #entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    check-cast v0, Lcom/google/android/music/utils/LruCache$Entry;

    .restart local v0       #entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    goto :goto_0

    .line 66
    .end local v0           #entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object v2, v3

    .line 87
    :goto_0
    monitor-exit p0

    return-object v2

    .line 83
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/utils/LruCache;->cleanUpSoftMap()V

    .line 84
    iget-object v2, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, value:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache$Entry;

    .line 87
    .local v0, entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/music/utils/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 80
    .end local v0           #entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v4, 0x0

    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v1, v4

    .line 76
    :goto_0
    monitor-exit p0

    return-object v1

    .line 72
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/utils/LruCache;->cleanUpSoftMap()V

    .line 73
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/music/utils/LruCache$Entry;

    iget-object v3, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/music/utils/LruCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache$Entry;

    .line 76
    .local v0, entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/music/utils/LruCache$Entry;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 69
    .end local v0           #entry:Lcom/google/android/music/utils/LruCache$Entry;,"Lcom/google/android/music/utils/LruCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 4
    .parameter "capacity"

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/music/utils/LruCache;->mCapacity:I

    .line 31
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/music/utils/LruCache;->clear()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mSoftMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 39
    new-instance v0, Lcom/google/android/music/utils/LruCache$1;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/music/utils/LruCache$1;-><init>(Lcom/google/android/music/utils/LruCache;IFZ)V

    iput-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/utils/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
