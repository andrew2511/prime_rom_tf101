.class public LG/x;
.super LG/P;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LG/P;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, LG/P;->a()LG/w;

    move-result-object v2

    invoke-virtual {p1}, LG/P;->b()I

    move-result v3

    invoke-virtual {p1}, LG/P;->f()I

    move-result v6

    invoke-virtual {p1}, LG/P;->k()I

    move-result v8

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, LG/P;-><init>(LG/q;LG/w;I[Ljava/lang/String;[Ljava/lang/String;I[LG/d;I)V

    invoke-virtual {p1}, LG/P;->g()[LG/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LG/x;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->h()LG/j;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, LG/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, LG/j;->a()LG/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public static a(LG/P;LG/P;)LG/P;
    .locals 1

    invoke-virtual {p1}, LG/P;->i()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, LG/x;

    if-eqz v0, :cond_1

    check-cast p0, LG/x;

    move-object v0, p0

    :goto_1
    invoke-virtual {v0, p1}, LG/x;->a(LG/P;)V

    goto :goto_0

    :cond_1
    new-instance v0, LG/x;

    invoke-direct {v0, p0}, LG/x;-><init>(LG/P;)V

    goto :goto_1
.end method


# virtual methods
.method public a(I)LG/d;
    .locals 1

    iget-object v0, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/d;

    return-object p0
.end method

.method public a(LG/P;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v6

    :goto_0
    invoke-virtual {p1}, LG/P;->i()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, LG/P;->b(I)LG/E;

    move-result-object v0

    instance-of v4, v0, LG/p;

    if-eqz v4, :cond_0

    check-cast v0, LG/p;

    invoke-virtual {v0}, LG/p;->a()LG/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    check-cast v0, LG/M;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/d;

    invoke-interface {v0}, LG/d;->b()LG/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/M;

    move v1, v6

    :goto_4
    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v3

    invoke-interface {v3}, LG/d;->m()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v3

    invoke-interface {v3}, LG/d;->m()[I

    move-result-object v3

    aget v4, v3, v1

    iget-object v5, p0, LG/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, LG/M;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, LG/x;->a:Ljava/util/List;

    invoke-virtual {v0}, LG/M;->c()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/d;

    iget-object v3, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v0}, LG/M;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, LG/x;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v1, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, LG/M;->a()LG/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, LG/P;->c()[Ljava/lang/String;

    move-result-object v0

    move v1, v6

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_a

    iget-object v2, p0, LG/x;->d:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, LG/x;->d:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, LG/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, LG/P;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LG/x;->d:Ljava/util/ArrayList;

    iget-object v1, p0, LG/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public d()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LG/x;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LG/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LG/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
