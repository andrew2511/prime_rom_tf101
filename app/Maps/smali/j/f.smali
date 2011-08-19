.class abstract Lj/f;
.super Ljava/lang/Object;

# interfaces
.implements Lj/D;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lae/k;->a(Z)V

    iput-object p1, p0, Lj/f;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lj/f;I)I
    .locals 1

    iget v0, p0, Lj/f;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lj/f;->b:I

    return v0
.end method

.method static synthetic a(Lj/f;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1}, Lj/f;->e(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lj/f;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0, p1, p2}, Lj/f;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    new-instance v0, Lj/ay;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lj/ay;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/SortedSet;Lj/y;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v0, Lj/d;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lj/d;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lj/f;->a(Ljava/lang/Object;Ljava/util/List;Lj/y;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lj/y;

    invoke-direct {v0, p0, p1, p2, v1}, Lj/y;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/Collection;Lj/y;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lj/f;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0, p1}, Lj/f;->b(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lj/f;Ljava/lang/Object;Ljava/util/List;Lj/y;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lj/f;->a(Ljava/lang/Object;Ljava/util/List;Lj/y;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lj/y;)Ljava/util/List;
    .locals 1

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lj/r;

    invoke-direct {v0, p0, p1, p2, p3}, Lj/r;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/List;Lj/y;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lj/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lj/q;-><init>(Lj/f;Ljava/lang/Object;Ljava/util/List;Lj/y;)V

    goto :goto_0
.end method

.method static synthetic a(Lj/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lj/f;)I
    .locals 2

    iget v0, p0, Lj/f;->b:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lj/f;->b:I

    return v0
.end method

.method static synthetic b(Lj/f;I)I
    .locals 1

    iget v0, p0, Lj/f;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lj/f;->b:I

    return v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lj/f;)I
    .locals 2

    iget v0, p0, Lj/f;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj/f;->b:I

    return v0
.end method

.method private d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lj/f;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private e(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget v0, p0, Lj/f;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lj/f;->b:I

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private e()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lj/N;

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lj/N;-><init>(Lj/f;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lj/A;

    iget-object v1, p0, Lj/f;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lj/A;-><init>(Lj/f;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private f()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lj/as;

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lj/as;-><init>(Lj/f;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lj/j;

    iget-object v1, p0, Lj/f;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lj/j;-><init>(Lj/f;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Ljava/util/Collection;
.end method

.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj/f;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lj/f;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-static {p2}, Lj/aq;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v2

    :goto_1
    iget v3, p0, Lj/f;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lj/f;->b:I

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lj/f;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lj/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/f;->b:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lj/f;->a()Ljava/util/Collection;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lj/f;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lj/f;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_0
    invoke-direct {p0, v1}, Lj/f;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lj/f;->b:I

    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lj/f;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lj/f;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj/f;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lj/f;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lj/f;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lj/f;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lj/f;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lj/f;->d:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lj/D;

    if-eqz v0, :cond_1

    check-cast p1, Lj/D;

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-interface {p1}, Lj/D;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
