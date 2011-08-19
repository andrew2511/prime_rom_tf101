.class Lj/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lae/f;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lae/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/aj;->a:Ljava/util/Collection;

    iput-object p2, p0, Lj/aj;->b:Lae/f;

    return-void
.end method


# virtual methods
.method a(Lae/f;)Lj/aj;
    .locals 3

    new-instance v0, Lj/aj;

    iget-object v1, p0, Lj/aj;->a:Ljava/util/Collection;

    iget-object v2, p0, Lj/aj;->b:Lae/f;

    invoke-static {v2, p1}, Lae/g;->a(Lae/f;Lae/f;)Lae/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj/aj;-><init>(Ljava/util/Collection;Lae/f;)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/aj;->b:Lae/f;

    invoke-interface {v0, p1}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lae/k;->a(Z)V

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj/aj;->b:Lae/f;

    invoke-interface {v2, v1}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lae/k;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    iget-object v1, p0, Lj/aj;->b:Lae/f;

    invoke-static {v0, v1}, Lj/w;->a(Ljava/lang/Iterable;Lae/f;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lj/aj;->b:Lae/f;

    invoke-interface {v0, p1}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj/aj;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lj/aj;->b:Lae/f;

    invoke-static {v0, v1}, Lj/l;->c(Ljava/util/Iterator;Lae/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lj/aj;->b:Lae/f;

    invoke-static {v0, v1}, Lj/l;->b(Ljava/util/Iterator;Lae/f;)Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lj/aj;->b:Lae/f;

    invoke-interface {v0, p1}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj/am;

    invoke-direct {v0, p0, p1}, Lj/am;-><init>(Lj/aj;Ljava/util/Collection;)V

    iget-object v1, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lj/w;->a(Ljava/lang/Iterable;Lae/f;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj/al;

    invoke-direct {v0, p0, p1}, Lj/al;-><init>(Lj/aj;Ljava/util/Collection;)V

    iget-object v1, p0, Lj/aj;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, Lj/w;->a(Ljava/lang/Iterable;Lae/f;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lj/aj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj/l;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/aj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj/X;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/aj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj/X;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj/aj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj/l;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
