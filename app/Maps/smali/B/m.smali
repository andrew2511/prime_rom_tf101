.class public LB/m;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lu/e;I[Lf/h;)LB/w;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    aget-object v1, v0, p1

    invoke-virtual {v1}, Lu/i;->d()Lf/h;

    move-result-object v1

    move v3, v2

    move v4, v7

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_2

    aget-object v5, p2, v2

    invoke-static {v1, v5}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v5

    cmpg-float v6, v5, v4

    if-ltz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v3, v2

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, p2, v3

    if-lez v3, :cond_3

    sub-int v0, v3, v8

    aget-object v0, p2, v0

    :goto_1
    invoke-static {v2, v1, v0}, LK/n;->d(Lf/h;Lf/h;Lf/h;)F

    move-result v4

    invoke-static {v1, v2, v0}, LK/n;->d(Lf/h;Lf/h;Lf/h;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    sub-int v0, v3, v8

    invoke-static {v0, p1, v7}, LB/w;->a(IIF)LB/w;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    if-lez p1, :cond_4

    sub-int v4, p1, v8

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lu/i;->d()Lf/h;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lu/e;->l()Lf/h;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v3, p1, v7}, LB/w;->a(IIF)LB/w;

    move-result-object v0

    goto :goto_2
.end method

.method static a(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    move v0, v6

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/w;

    iget v2, p0, LB/w;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    invoke-static {p0, p1}, LB/m;->b(Ljava/util/HashMap;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/w;

    iget v2, p0, LB/w;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LB/w;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move v4, v6

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    aget-object v0, v2, v4

    if-eqz v0, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/w;

    invoke-virtual {v5, v0}, LB/w;->a(LB/w;)I

    move-result v0

    if-lez v0, :cond_8

    :cond_7
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/w;

    aput-object v0, v2, v4

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_9
    move v0, v6

    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_a

    aget-object v3, v2, v0

    iget v3, v3, LB/w;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto/16 :goto_2

    :cond_b
    move v0, v3

    goto/16 :goto_0
.end method

.method private static a(Lu/e;[Lf/h;)Ljava/util/HashMap;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lu/e;->I()[Lu/i;

    move-result-object v1

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, p1}, LB/m;->a([Lu/i;[Lf/h;)[I

    move-result-object v3

    move v4, v9

    :goto_0
    array-length v0, v1

    if-ge v4, v0, :cond_7

    aget-object v0, v1, v4

    invoke-virtual {v0}, Lu/i;->d()Lf/h;

    move-result-object v5

    move v6, v9

    :goto_1
    array-length v0, p1

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    if-ge v6, v0, :cond_3

    aget-object v0, p1, v6

    add-int/lit8 v7, v6, 0x1

    aget-object v7, p1, v7

    invoke-static {v5, v0, v7}, LK/n;->a(Lf/h;Lf/h;Lf/h;)F

    move-result v0

    invoke-static {v6, v4, v0}, LB/w;->a(IIF)LB/w;

    move-result-object v7

    const/4 v8, 0x0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_1

    invoke-static {}, Lj/aH;->b()Ljava/util/TreeSet;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    aget v5, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-eqz v0, :cond_4

    invoke-static {v0}, LB/m;->a(Ljava/util/TreeSet;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Lj/aH;->b()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p0, v4, p1}, LB/m;->a(Lu/e;I[Lf/h;)LB/w;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method

.method private static a(Ljava/util/TreeSet;)Ljava/util/HashSet;
    .locals 3

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/w;

    iget v2, p0, LB/w;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v2, p0, LB/w;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    if-lt p1, p2, :cond_1

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, p3, p4}, LB/m;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/w;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/w;

    iget v1, v1, LB/w;->a:I

    iget v3, v0, LB/w;->a:I

    if-gt v1, v3, :cond_4

    :cond_5
    invoke-static {p3}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2, v1, p4}, LB/m;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashSet;[Lf/h;ILj/B;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    add-int/lit8 v1, p3, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    const/4 v0, 0x1

    sub-int v0, v1, v0

    if-ge v2, v0, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/w;

    if-nez v0, :cond_0

    move v0, v3

    move v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    move v3, v4

    goto :goto_1

    :goto_2
    iget v4, v0, LB/w;->a:I

    if-gt v3, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, p2, v3

    invoke-virtual {p4, v4, v5}, Lj/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {p4, v1, v2}, Lj/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method public static a([Lf/h;Lu/e;Lj/B;)V
    .locals 5

    invoke-virtual {p2}, Lj/B;->b()V

    invoke-static {p1, p0}, LB/m;->a(Lu/e;[Lf/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/w;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v0}, LB/m;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1, v2, p0, v0, p2}, LB/m;->a(Ljava/util/HashMap;Ljava/util/HashSet;[Lf/h;ILj/B;)V

    return-void
.end method

.method private static a([Lu/i;[Lf/h;)[I
    .locals 8

    const/4 v7, 0x0

    array-length v0, p0

    new-array v0, v0, [I

    move v1, v7

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lu/i;->d()Lf/h;

    move-result-object v3

    move v4, v2

    move v2, v7

    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_2

    aget-object v5, p1, v2

    invoke-static {v3, v5}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v5

    cmpg-float v6, v5, v4

    if-ltz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    aput v2, v0, v1

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static b(Ljava/util/HashMap;I)Ljava/util/ArrayList;
    .locals 3

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1, v0}, LB/m;->a(Ljava/util/HashMap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method
