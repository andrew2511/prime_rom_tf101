.class Lj/q;
.super Lj/y;

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic a:Lj/f;


# direct methods
.method constructor <init>(Lj/f;Ljava/lang/Object;Ljava/util/List;Lj/y;)V
    .locals 0

    iput-object p1, p0, Lj/q;->a:Lj/f;

    invoke-direct {p0, p1, p2, p3, p4}, Lj/y;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/Collection;Lj/y;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lj/q;->f()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lj/q;->a:Lj/f;

    invoke-static {v1}, Lj/f;->c(Lj/f;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/q;->e()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lj/q;->size()I

    move-result v0

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lj/q;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lj/q;->a:Lj/f;

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Lj/f;->a(Lj/f;I)I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj/q;->e()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    new-instance v0, Lj/c;

    invoke-direct {v0, p0}, Lj/c;-><init>(Lj/q;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    new-instance v0, Lj/c;

    invoke-direct {v0, p0, p1}, Lj/c;-><init>(Lj/q;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj/q;->a:Lj/f;

    invoke-static {v1}, Lj/f;->b(Lj/f;)I

    invoke-virtual {p0}, Lj/q;->c()V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/q;->b()V

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lj/q;->b()V

    iget-object v0, p0, Lj/q;->a:Lj/f;

    invoke-virtual {p0}, Lj/q;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lj/q;->g()Lj/y;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, p0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj/f;->a(Lj/f;Ljava/lang/Object;Ljava/util/List;Lj/y;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj/q;->g()Lj/y;

    move-result-object v3

    goto :goto_0
.end method
