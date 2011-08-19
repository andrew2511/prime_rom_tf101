.class Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;
.super Ljava/lang/Object;
.source "SortedCatalogView.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/SortedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/NavigableSet",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private set:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, set:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    .line 115
    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->add(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ceiling(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1
    .parameter "e"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->ceiling(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

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
    .line 163
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public first()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->first()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public floor(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1
    .parameter "e"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->floor(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "toElement"
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->headSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 1
    .parameter "toElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->headSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1
    .parameter "e"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->higher(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->last()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public lower(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1
    .parameter "e"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    return-object p0
.end method

.method public bridge synthetic lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->lower(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->pollFirst()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic pollLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->pollLast()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 181
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 187
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Lcom/amazon/kcp/library/models/ICatalogItem;ZLcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "fromElement"
    .parameter "fromInclusive"
    .parameter "toElement"
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p3, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->subSet(Lcom/amazon/kcp/library/models/ICatalogItem;ZLcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 1
    .parameter "fromElement"
    .parameter "toElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->subSet(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "fromElement"
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 1
    .parameter "fromElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->toArray()[Ljava/lang/Object;

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
    .line 205
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
