.class Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$MultisetView;
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
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 994
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1014
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1015
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    const/4 v5, 0x0

    .line 1005
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-nez v3, :cond_0

    move v3, v5

    .line 1010
    :goto_0
    return v3

    .line 1008
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    move-object v2, v0

    .line 1009
    .local v2, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v3, v3, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1010
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1017
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .end local p1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 999
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->this$1:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
