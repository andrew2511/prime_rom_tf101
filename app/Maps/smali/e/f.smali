.class public Le/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Le/m;Ljava/util/List;)V
    .locals 13

    const/16 v10, 0x64

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Le/m;->a()I

    move-result v0

    if-ge v3, v0, :cond_0

    new-instance v0, Le/n;

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v0 .. v6}, Le/n;-><init>(ILe/m;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Le/n;

    const/4 v5, 0x1

    const/16 v9, 0xa

    move-object v6, p0

    move v7, v3

    move v8, v1

    invoke-direct/range {v4 .. v10}, Le/n;-><init>(ILe/m;IIII)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Le/n;

    const/4 v7, 0x2

    const/16 v12, 0x63

    move-object v8, p0

    move v9, v3

    move v11, v1

    invoke-direct/range {v6 .. v12}, Le/n;-><init>(ILe/m;IIII)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Ljava/util/LinkedList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n;

    invoke-virtual {v0}, Le/n;->a()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Le/n;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    move-object v2, p0

    :goto_1
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->a()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Le/n;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Le/n;->a()I

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {v2}, Le/n;->b()I

    move-result v3

    invoke-static {v2, v3}, Le/f;->a(Le/n;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Le/n;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {p0}, Le/n;->b()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Le/n;->b()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Le/n;->b()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Le/n;->b()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Le/n;->b()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    :cond_2
    invoke-virtual {v2, v5}, Le/n;->a(Z)V

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    move-object v2, v1

    move-object v1, p0

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static a(Le/n;I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Le/n;->e()LF/y;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-ne p1, v4, :cond_3

    invoke-virtual {v0}, LF/y;->f()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, LF/y;->e()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, LF/y;->f()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    invoke-virtual {v0}, LF/y;->e()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_5

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method static b(Le/m;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, v0}, Le/f;->a(Le/m;Ljava/util/List;)V

    invoke-static {v0}, Le/f;->a(Ljava/util/LinkedList;)V

    invoke-static {v0}, Le/f;->b(Ljava/util/LinkedList;)V

    invoke-static {v0}, Le/f;->a(Ljava/util/List;)V

    invoke-static {v0}, Le/f;->b(Ljava/util/List;)V

    invoke-static {v0}, Le/f;->c(Ljava/util/List;)V

    invoke-static {v0}, Le/f;->d(Ljava/util/List;)V

    return-object v0
.end method

.method static b(Ljava/util/LinkedList;)V
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n;

    invoke-virtual {v0}, Le/n;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Le/n;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le/n;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Le/n;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/n;->a(I)V

    :cond_0
    return-void
.end method

.method static b(Ljava/util/List;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->a()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Le/n;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Le/n;->d()LF/y;

    move-result-object v2

    invoke-virtual {v2}, LF/y;->e()I

    move-result v2

    const/16 v3, 0x320

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Le/n;->d()LF/y;

    move-result-object v2

    invoke-virtual {v2}, LF/y;->e()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Le/n;->b(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Le/n;->a(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static c(Ljava/util/List;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Le/n;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Le/n;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Le/n;->b()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Le/n;->b()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static d(Ljava/util/List;)V
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/n;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le/n;->d()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->e()I

    move-result v0

    const/16 v1, 0xa28

    if-le v0, v1, :cond_0

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    new-instance v0, Le/n;

    const/4 v1, 0x0

    invoke-virtual {p0}, Le/n;->f()Le/m;

    move-result-object v2

    invoke-virtual {p0}, Le/n;->g()I

    move-result v3

    const/16 v4, -0x960

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    invoke-direct/range {v0 .. v6}, Le/n;-><init>(ILe/m;IIII)V

    invoke-interface {v7, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Le/m;)I
    .locals 3

    invoke-virtual {p1}, Le/m;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Le/f;->b(Le/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n;

    invoke-virtual {p0}, Le/n;->h()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
