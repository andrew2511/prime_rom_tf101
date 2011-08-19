.class public Lcom/google/android/street/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/LRUCache$LRUCacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKey;",
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field protected final mMaxEntries:I

.field private mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TKey;TValue;>;"
        }
    .end annotation
.end field

.field private mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxEntries"

    .prologue
    .line 17
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    .line 19
    iput p1, p0, Lcom/google/android/street/LRUCache;->mMaxEntries:I

    .line 20
    return-void
.end method

.method private link(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TKey;TValue;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, entry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    iget-object v1, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    if-nez v1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/google/android/street/LRUCache;->mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 162
    iput-object p1, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 165
    .local v0, secondYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    iput-object v0, p1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mOlder:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 166
    iput-object p1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mYounger:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 167
    iput-object p1, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    goto :goto_0
.end method

.method private unlink(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TKey;TValue;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, entry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    const/4 v2, 0x0

    .line 172
    iget-object v0, p1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mOlder:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 173
    .local v0, older:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    iget-object v1, p1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mYounger:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 174
    .local v1, younger:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    if-eqz v0, :cond_0

    .line 175
    iput-object v1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mYounger:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 177
    :cond_0
    if-eqz v1, :cond_1

    .line 178
    iput-object v0, v1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mOlder:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 181
    :cond_1
    iput-object v2, p1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mOlder:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 182
    iput-object v2, p1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mYounger:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 184
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    if-ne v2, p1, :cond_2

    .line 185
    iput-object v1, p0, Lcom/google/android/street/LRUCache;->mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    if-ne v2, p1, :cond_3

    .line 189
    iput-object v0, p0, Lcom/google/android/street/LRUCache;->mYoungest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 191
    :cond_3
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/street/LRUCache;->trimTo(I)V

    .line 28
    return-void
.end method

.method protected ensureSpaceForInsertion()V
    .locals 2

    .prologue
    .line 243
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    iget v0, p0, Lcom/google/android/street/LRUCache;->mMaxEntries:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/street/LRUCache;->trimTo(I)V

    .line 244
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    iget-object v1, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 92
    .local v0, entry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 97
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/street/LRUCache;->unlink(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/google/android/street/LRUCache;->link(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V

    .line 101
    iget-object v1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final insert(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    .local p2, value:Ljava/lang/Object;,"TValue;"
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 65
    .local v1, oldEntry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    if-nez v1, :cond_0

    .line 66
    iget v2, p0, Lcom/google/android/street/LRUCache;->mMaxEntries:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/android/street/LRUCache;->trimTo(I)V

    .line 71
    :cond_0
    new-instance v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;

    invoke-direct {v0}, Lcom/google/android/street/LRUCache$LRUCacheEntry;-><init>()V

    .line 72
    .local v0, entry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    iput-object p2, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    .line 73
    iput-object p1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mKey:Ljava/lang/Object;

    .line 75
    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0, v1}, Lcom/google/android/street/LRUCache;->unlink(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V

    .line 78
    iget-object v2, v1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/street/LRUCache;->onEject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-object v2, v1, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/street/LRUCache;->onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/street/LRUCache;->link(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V

    .line 86
    return-void
.end method

.method protected onEject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    .local p2, value:Ljava/lang/Object;,"TValue;"
    return-void
.end method

.method protected onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    .local p2, value:Ljava/lang/Object;,"TValue;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    iget-object v1, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;

    .line 120
    .local v0, entry:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TKey;TValue;>;"
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/street/LRUCache;->unlink(Lcom/google/android/street/LRUCache$LRUCacheEntry;)V

    .line 125
    iget-object v1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/street/LRUCache;->onEject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public trimTo(I)V
    .locals 3
    .parameter "targetSize"

    .prologue
    .line 151
    .local p0, this:Lcom/google/android/street/LRUCache;,"Lcom/google/android/street/LRUCache<TKey;TValue;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    iget-object v0, v2, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mKey:Ljava/lang/Object;

    .line 153
    .local v0, key:Ljava/lang/Object;,"TKey;"
    iget-object v2, p0, Lcom/google/android/street/LRUCache;->mOldest:Lcom/google/android/street/LRUCache$LRUCacheEntry;

    iget-object v2, v2, Lcom/google/android/street/LRUCache$LRUCacheEntry;->mKey:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/street/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, value:Ljava/lang/Object;,"TValue;"
    invoke-virtual {p0, v0, v1}, Lcom/google/android/street/LRUCache;->onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v0           #key:Ljava/lang/Object;,"TKey;"
    .end local v1           #value:Ljava/lang/Object;,"TValue;"
    :cond_0
    return-void
.end method
