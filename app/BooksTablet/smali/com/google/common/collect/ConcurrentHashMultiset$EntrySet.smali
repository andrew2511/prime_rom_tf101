.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private snapshot()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 432
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 433
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 449
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 450
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    const/4 v5, 0x0

    .line 384
    instance-of v4, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v4, :cond_1

    .line 385
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    move-object v2, v0

    .line 386
    .local v2, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    .line 388
    .local v3, entryCount:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    .line 390
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v3           #entryCount:I
    :goto_0
    return v4

    .restart local v1       #element:Ljava/lang/Object;
    .restart local v2       #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .restart local v3       #entryCount:I
    :cond_0
    move v4, v5

    .line 388
    goto :goto_0

    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v3           #entryCount:I
    :cond_1
    move v4, v5

    .line 390
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 456
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 380
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 396
    .local v0, backingIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    .line 439
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    instance-of v4, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v4, :cond_0

    .line 440
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    move-object v2, v0

    .line 441
    .local v2, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 442
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    .line 443
    .local v3, entryCount:I
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v4}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 445
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v3           #entryCount:I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 376
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
