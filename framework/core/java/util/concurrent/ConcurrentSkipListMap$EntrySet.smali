.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;"
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
            "<TK1;TV1;>;)V"
        }
    .end annotation

    .prologue
    .line 2359
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    .local p1, map:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<TK1;TV1;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2360
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 2361
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2391
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 2392
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    const/4 v5, 0x0

    .line 2371
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_7

    move v3, v5

    .line 2375
    :goto_6
    return v3

    .line 2373
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 2374
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK1;TV1;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2375
    .local v2, v:Ljava/lang/Object;,"TV1;"
    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_6

    :cond_23
    move v3, v5

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2394
    if-ne p1, p0, :cond_6

    move v3, v5

    .line 2404
    :goto_5
    return v3

    .line 2396
    :cond_6
    instance-of v3, p1, Ljava/util/Set;

    if-nez v3, :cond_c

    move v3, v4

    .line 2397
    goto :goto_5

    .line 2398
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 2400
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_10
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

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

    .line 2401
    :catch_20
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/ClassCastException;
    move v3, v4

    .line 2402
    goto :goto_5

    .line 2403
    .end local v2           #unused:Ljava/lang/ClassCastException;
    :catch_24
    move-exception v3

    move-object v2, v3

    .local v2, unused:Ljava/lang/NullPointerException;
    move v3, v4

    .line 2404
    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2385
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TK1;TV1;>;>;"
        }
    .end annotation

    .prologue
    .line 2364
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2365
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2367
    :goto_e
    return-object v0

    .restart local p0       #this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    :cond_f
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 2378
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 2379
    const/4 v2, 0x0

    .line 2381
    :goto_5
    return v2

    .line 2380
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 2381
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK1;TV1;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2388
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2407
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
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
    .line 2408
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,"Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK1;TV1;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
