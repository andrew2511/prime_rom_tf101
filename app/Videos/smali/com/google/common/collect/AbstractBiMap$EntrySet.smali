.class Lcom/google/common/collect/AbstractBiMap$EntrySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final esDelegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 277
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 278
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 343
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 281
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->esDelegate:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x0

    .line 286
    :goto_0
    return v2

    .line 284
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 285
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

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
    .line 340
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.EntrySet;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
