.class Lj/y;
.super Ljava/util/AbstractCollection;


# instance fields
.field final c:Ljava/lang/Object;

.field d:Ljava/util/Collection;

.field final e:Lj/y;

.field final f:Ljava/util/Collection;

.field final synthetic g:Lj/f;


# direct methods
.method constructor <init>(Lj/f;Ljava/lang/Object;Ljava/util/Collection;Lj/y;)V
    .locals 1

    iput-object p1, p0, Lj/y;->g:Lj/f;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lj/y;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj/y;->d:Ljava/util/Collection;

    iput-object p4, p0, Lj/y;->e:Lj/y;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lj/y;->f:Ljava/util/Collection;

    return-void

    :cond_0
    invoke-virtual {p4}, Lj/y;->f()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lj/y;->g:Lj/f;

    invoke-static {v2}, Lj/f;->c(Lj/f;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/y;->e()V

    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lj/y;->size()I

    move-result v0

    iget-object v1, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lj/y;->g:Lj/f;

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Lj/f;->a(Lj/f;I)I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj/y;->e()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lj/y;->e:Lj/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/y;->e:Lj/y;

    invoke-virtual {v0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->e:Lj/y;

    invoke-virtual {v0}, Lj/y;->f()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lj/y;->f:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/y;->g:Lj/f;

    invoke-static {v0}, Lj/f;->a(Lj/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lj/y;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    :cond_1
    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lj/y;->e:Lj/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/y;->e:Lj/y;

    invoke-virtual {v0}, Lj/y;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/y;->g:Lj/f;

    invoke-static {v0}, Lj/f;->a(Lj/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lj/y;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lj/y;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lj/y;->g:Lj/f;

    invoke-static {v1, v0}, Lj/f;->b(Lj/f;I)I

    invoke-virtual {p0}, Lj/y;->c()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj/y;->c:Ljava/lang/Object;

    return-object v0
.end method

.method e()V
    .locals 3

    iget-object v0, p0, Lj/y;->e:Lj/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/y;->e:Lj/y;

    invoke-virtual {v0}, Lj/y;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lj/y;->g:Lj/f;

    invoke-static {v0}, Lj/f;->a(Lj/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lj/y;->c:Ljava/lang/Object;

    iget-object v2, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    return-object v0
.end method

.method g()Lj/y;
    .locals 1

    iget-object v0, p0, Lj/y;->e:Lj/y;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    new-instance v0, Lj/s;

    invoke-direct {v0, p0}, Lj/s;-><init>(Lj/y;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj/y;->g:Lj/f;

    invoke-static {v1}, Lj/f;->b(Lj/f;)I

    invoke-virtual {p0}, Lj/y;->c()V

    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lj/y;->size()I

    move-result v0

    iget-object v1, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lj/y;->g:Lj/f;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lj/f;->a(Lj/f;I)I

    invoke-virtual {p0}, Lj/y;->c()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj/y;->size()I

    move-result v0

    iget-object v1, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lj/y;->g:Lj/f;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lj/f;->a(Lj/f;I)I

    invoke-virtual {p0}, Lj/y;->c()V

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj/y;->b()V

    iget-object v0, p0, Lj/y;->d:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
