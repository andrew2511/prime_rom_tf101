.class Lj/ay;
.super Lj/y;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lj/f;


# direct methods
.method constructor <init>(Lj/f;Ljava/lang/Object;Ljava/util/SortedSet;Lj/y;)V
    .locals 0

    iput-object p1, p0, Lj/ay;->a:Lj/f;

    invoke-direct {p0, p1, p2, p3, p4}, Lj/y;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/Collection;Lj/y;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedSet;
    .locals 0

    invoke-virtual {p0}, Lj/ay;->f()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/ay;->b()V

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lj/ay;->b()V

    new-instance v0, Lj/ay;

    iget-object v1, p0, Lj/ay;->a:Lj/f;

    invoke-virtual {p0}, Lj/ay;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lj/ay;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/SortedSet;Lj/y;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/ay;->b()V

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lj/ay;->b()V

    new-instance v0, Lj/ay;

    iget-object v1, p0, Lj/ay;->a:Lj/f;

    invoke-virtual {p0}, Lj/ay;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lj/ay;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/SortedSet;Lj/y;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lj/ay;->b()V

    new-instance v0, Lj/ay;

    iget-object v1, p0, Lj/ay;->a:Lj/f;

    invoke-virtual {p0}, Lj/ay;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lj/ay;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lj/ay;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/SortedSet;Lj/y;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj/ay;->g()Lj/y;

    move-result-object v4

    goto :goto_0
.end method
