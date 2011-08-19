.class Lcom/google/android/street/HttpCache$LruHttpCache;
.super Lcom/google/android/street/LRUCache;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/HttpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LruHttpCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/street/LRUCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/street/HttpCache$CacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxEntries"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/street/LRUCache;-><init>(I)V

    .line 294
    return-void
.end method


# virtual methods
.method public insert(Lcom/google/android/street/HttpCache$CacheEntry;)V
    .locals 2
    .parameter "cacheEntry"

    .prologue
    .line 307
    iget-object v1, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/street/HttpCache$LruHttpCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/HttpCache$CacheEntry;

    .line 308
    .local v0, oldEntry:Lcom/google/android/street/HttpCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/street/HttpCache$CacheEntry;->mDeleteOnEject:Z

    .line 312
    :cond_0
    iget-object v1, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/street/HttpCache$LruHttpCache;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method protected bridge synthetic onEject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/street/HttpCache$CacheEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/HttpCache$LruHttpCache;->onEject(Ljava/lang/String;Lcom/google/android/street/HttpCache$CacheEntry;)V

    return-void
.end method

.method protected onEject(Ljava/lang/String;Lcom/google/android/street/HttpCache$CacheEntry;)V
    .locals 0
    .parameter "persistentKey"
    .parameter "entry"

    .prologue
    .line 299
    invoke-virtual {p2}, Lcom/google/android/street/HttpCache$CacheEntry;->onEject()V

    .line 300
    return-void
.end method
