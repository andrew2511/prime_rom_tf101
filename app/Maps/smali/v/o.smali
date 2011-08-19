.class public Lv/o;
.super Ljava/lang/Object;

# interfaces
.implements Lv/C;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;

.field private c:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/o;->b:Ljava/util/List;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/o;->a:Ljava/util/Map;

    iput p1, p0, Lv/o;->c:I

    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lv/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lv/o;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/u;

    invoke-interface {v0, p1, p2}, Lv/u;->c(ILjava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Law/e;
    .locals 1

    iget v0, p0, Lv/o;->c:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(I)Ljava/util/List;
    .locals 3

    iget v0, p0, Lv/o;->c:I

    if-eq p1, v0, :cond_1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/o;->a:Ljava/util/Map;

    return-void
.end method

.method public a(Law/e;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lv/o;->c:I

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    invoke-static {v0}, Lj/u;->a(I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lv/o;->a:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lv/u;)V
    .locals 1

    iget-object v0, p0, Lv/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ILaw/e;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget v0, p0, Lv/o;->c:I

    if-eq p1, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, v2}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lv/o;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaX/b;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lv/o;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lv/o;->c:I

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lv/o;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lv/o;->c(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b(ILaw/e;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lv/o;->a(ILaw/e;)Z

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lv/o;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lv/o;->a()V

    :cond_0
    return-void
.end method
