.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1840
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1878
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1879
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    const/4 v6, 0x0

    .line 1847
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    move v4, v6

    .line 1857
    :goto_0
    return v4

    .line 1850
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1851
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1852
    .local v2, key:Ljava/lang/Object;
    if-nez v2, :cond_1

    move v4, v6

    .line 1853
    goto :goto_0

    .line 1855
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1857
    .local v3, v:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1874
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->isEmpty()Z

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
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1843
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    const/4 v5, 0x0

    .line 1861
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v5

    .line 1866
    :goto_0
    return v3

    .line 1864
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1865
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1866
    .local v2, key:Ljava/lang/Object;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1870
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
