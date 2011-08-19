.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2257
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, map:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 2265
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2262
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 2267
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 2260
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2301
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2326
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2285
    if-ne p1, p0, :cond_6

    move v3, v5

    .line 2295
    :goto_5
    return v3

    .line 2287
    :cond_6
    instance-of v3, p1, Ljava/util/Set;

    if-nez v3, :cond_c

    move v3, v4

    .line 2288
    goto :goto_5

    .line 2289
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 2291
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_10
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_19} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_19} :catch_24

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v5

    goto :goto_5

    :cond_1e
    move v3, v4

    goto :goto_5

    .line 2292
    :catch_20
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/ClassCastException;
    move v3, v4

    .line 2293
    goto :goto_5

    .line 2294
    .end local v2           #unused:Ljava/lang/ClassCastException;
    :catch_24
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/NullPointerException;
    move v3, v4

    .line 2295
    goto :goto_5
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2268
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 2264
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2320
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2311
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2254
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 2266
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2259
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2279
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2280
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2282
    :goto_e
    return-object v0

    .restart local p0       #this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    :cond_f
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2269
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 2263
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2271
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2272
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2275
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2276
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 2261
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2258
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2317
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2307
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p3, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2323
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2314
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2254
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2298
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2299
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
