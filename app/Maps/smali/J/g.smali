.class public LJ/g;
.super LJ/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ/p;-><init>()V

    return-void
.end method

.method private a(Lv/d;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v1

    invoke-virtual {v1}, LJ/h;->e()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lv/v;->b()Law/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lv/v;->b()Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v1}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected a_(Ljava/lang/String;)LJ/a;
    .locals 14

    new-instance v9, LJ/a;

    invoke-direct {v9, p1}, LJ/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0}, LJ/h;->e()Lv/t;

    move-result-object v10

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v10}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v10}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lv/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3}, Lv/d;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0}, LJ/g;->e()I

    move-result v1

    move v6, v1

    :goto_2
    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, LJ/g;->a(Lv/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lv/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    new-instance v0, LJ/o;

    invoke-virtual {v3}, Lv/d;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v7, 0x1

    invoke-virtual {v3}, Lv/d;->a()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v0 .. v8}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v9, v0}, LJ/a;->b(LJ/o;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lv/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0}, LJ/g;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    move v6, v1

    goto :goto_2

    :cond_4
    return-object v9

    :cond_5
    move v6, v1

    goto :goto_2
.end method
