.class public Lv/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/b;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lv/b;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lv/b;->c:I

    return-void
.end method

.method private a(IJLjava/util/Map;)Law/e;
    .locals 3

    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Ls/s;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Law/e;->h(II)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p2, p3}, Law/e;->b(IJ)V

    return-object v1
.end method

.method private a(Ljava/lang/String;Lv/x;)Law/e;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p2, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lv/x;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Law/e;Law/e;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p2, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p2, v2}, Law/e;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1, v3}, Law/e;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v3, v0}, Law/e;->h(II)V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)Law/e;
    .locals 4

    invoke-direct {p0, p1}, Lv/b;->d(I)Lv/x;

    move-result-object v0

    iget-object v1, v0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    if-nez p0, :cond_0

    new-instance v1, Law/e;

    sget-object v2, Ls/s;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, v0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-wide/high16 v2, -0x8000

    iput-wide v2, v0, Lv/x;->c:J

    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private d(I)Lv/x;
    .locals 2

    invoke-direct {p0, p1}, Lv/b;->e(I)Lv/x;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lv/x;

    invoke-direct {v0, p0, p1}, Lv/x;-><init>(Lv/b;I)V

    iget-object v1, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private e(I)Lv/x;
    .locals 2

    iget-object v0, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/x;

    iget v1, p0, Lv/x;->a:I

    if-ne v1, p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Law/e;
    .locals 10

    const/4 v9, 0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/s;->f:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v9}, Law/e;->b(IZ)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v2

    iget-object v0, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/x;

    iget-wide v5, v0, Lv/x;->c:J

    const-wide/high16 v7, -0x8000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lv/x;->c:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    :cond_1
    iget v5, v0, Lv/x;->a:I

    iget-wide v6, v0, Lv/x;->b:J

    iget-object v0, v0, Lv/x;->d:Ljava/util/Map;

    invoke-direct {p0, v5, v6, v7, v0}, Lv/b;->a(IJLjava/util/Map;)Law/e;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(ILjava/lang/String;)Law/e;
    .locals 1

    invoke-direct {p0, p1}, Lv/b;->e(I)Lv/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lv/b;->d(I)Lv/x;

    return-void
.end method

.method public a(IJ)V
    .locals 1

    invoke-direct {p0, p1}, Lv/b;->d(I)Lv/x;

    move-result-object v0

    iput-wide p2, v0, Lv/x;->b:J

    return-void
.end method

.method public a(Law/e;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Law/e;->d(I)I

    move-result v2

    invoke-direct {p0, v2}, Lv/b;->d(I)Lv/x;

    move-result-object v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lv/x;->c:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ILaw/e;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv/b;->b(ILjava/lang/String;)Law/e;

    move-result-object v0

    iget v1, p0, Lv/b;->b:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    iget v1, p0, Lv/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lv/b;->b:I

    :goto_0
    iput v1, p0, Lv/b;->b:I

    iget v1, p0, Lv/b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v3}, Law/e;->h(II)V

    :try_start_0
    invoke-static {p2}, Law/b;->a(Law/e;)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1
.end method

.method public b(I)Ljava/util/List;
    .locals 3

    invoke-direct {p0, p1}, Lv/b;->d(I)Lv/x;

    move-result-object v0

    iget-object v1, v0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Law/e;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {p1, v10}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lv/b;->b:I

    invoke-static {p1, v11}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v10}, Law/e;->i(I)I

    move-result v1

    move v2, v13

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v10, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v10}, Law/e;->d(I)I

    move-result v4

    invoke-direct {p0, v4}, Lv/b;->d(I)Lv/x;

    move-result-object v4

    invoke-static {v3, v11}, Law/b;->f(Law/e;I)J

    move-result-wide v5

    iput-wide v5, v4, Lv/x;->b:J

    invoke-virtual {v3, v12}, Law/e;->i(I)I

    move-result v5

    move v6, v13

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v3, v12, v6}, Law/e;->e(II)Law/e;

    move-result-object v7

    invoke-virtual {v7, v12}, Law/e;->f(I)Law/e;

    move-result-object v8

    invoke-virtual {v8, v11}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public b(ILaw/e;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v5}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lv/b;->e(I)Lv/x;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lv/b;->a(Ljava/lang/String;Lv/x;)Law/e;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Law/e;->h(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lv/b;->a(Law/e;Law/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lv/b;->a(Lv/x;Ljava/lang/String;)V

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/x;

    iget v1, p0, Lv/x;->a:I

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lv/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/x;

    iget-object v1, p0, Lv/x;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaX/b;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lv/b;->a()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x1

    iget v2, p0, Lv/b;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method
