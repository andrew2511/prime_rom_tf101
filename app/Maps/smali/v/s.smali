.class public Lv/s;
.super Ljava/lang/Object;

# interfaces
.implements Lv/C;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/s;->b:Ljava/util/List;

    return-void
.end method

.method private b(Law/e;)Lv/C;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    invoke-direct {p0, v0}, Lv/s;->c(I)Lv/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv/o;->a(Law/e;)V

    return-object v0
.end method

.method private c(I)Lv/o;
    .locals 3

    new-instance v0, Lv/o;

    invoke-direct {v0, p1}, Lv/o;-><init>(I)V

    iget-object v1, p0, Lv/s;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lv/s;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/u;

    invoke-virtual {v0, p0}, Lv/o;->a(Lv/u;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private e(I)Lv/C;
    .locals 2

    iget-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/C;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Law/e;
    .locals 1

    invoke-direct {p0, p1}, Lv/s;->e(I)Lv/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lv/C;->a(ILjava/lang/String;)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lv/s;->e(I)Lv/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lv/C;->a(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lv/s;->b(Law/e;)Lv/C;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lv/u;)V
    .locals 2

    iget-object v0, p0, Lv/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/o;

    invoke-virtual {p0, p1}, Lv/o;->a(Lv/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILaw/e;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lv/s;->b(I)Lv/C;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lv/C;->a(ILaw/e;)Z

    move-result v0

    return v0
.end method

.method public b(I)Lv/C;
    .locals 1

    invoke-direct {p0, p1}, Lv/s;->e(I)Lv/C;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lv/s;->c(I)Lv/o;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lv/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/o;

    invoke-virtual {p0}, Lv/o;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lv/s;->b(I)Lv/C;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lv/C;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b(ILaw/e;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lv/s;->a(ILaw/e;)Z

    move-result v0

    return v0
.end method

.method public c()Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, LaX/b;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lv/s;->a:Ljava/util/Map;

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

    check-cast p0, Lv/o;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lv/o;->b()Law/e;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d(I)V
    .locals 1

    invoke-direct {p0, p1}, Lv/s;->e(I)Lv/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lv/C;->d(I)V

    :cond_0
    return-void
.end method
