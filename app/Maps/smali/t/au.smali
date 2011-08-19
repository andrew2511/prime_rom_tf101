.class Lt/au;
.super Lt/l;


# instance fields
.field a:[Law/e;

.field private b:Lac/p;


# direct methods
.method constructor <init>(Lac/p;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lt/l;-><init>(I)V

    new-array v0, v0, [Law/e;

    iput-object v0, p0, Lt/au;->a:[Law/e;

    iput-object p1, p0, Lt/au;->b:Lac/p;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public a(I)LG/u;
    .locals 11

    const/4 v10, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lt/au;->a:[Law/e;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, LG/q;

    invoke-direct {v1}, LG/q;-><init>()V

    invoke-virtual {p0, p1}, Lt/au;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->a()LG/w;

    move-result-object v2

    check-cast v2, Lt/D;

    invoke-virtual {v0, v10}, Law/e;->i(I)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v0, v10, v7}, Law/e;->e(II)Law/e;

    move-result-object v8

    invoke-virtual {v1}, LG/q;->a()LG/r;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lt/G;->a(Law/e;LG/r;LG/w;)LG/d;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x14

    if-ne v8, v9, :cond_3

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [LG/d;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [LG/d;

    invoke-virtual {v2}, Lt/D;->a()LG/T;

    move-result-object v9

    new-instance v0, LG/P;

    const/4 v6, -0x1

    const/16 v8, 0xa

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, LG/P;-><init>(LG/q;LG/w;I[Ljava/lang/String;[Ljava/lang/String;I[LG/d;I)V

    invoke-virtual {v9}, LG/T;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt/au;->b:Lac/p;

    invoke-virtual {v9}, LG/T;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LG/P;->a(Lac/p;J)V

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lt/au;->m()Law/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Ls/t;->k:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    invoke-virtual {p0}, Lt/au;->i()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lt/au;->a:[Law/e;

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method protected b(Lt/q;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/au;->i()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt/q;->a()LG/w;

    move-result-object v0

    check-cast v0, Lt/D;

    invoke-virtual {p0, v2}, Lt/au;->d(I)Lt/q;

    move-result-object v1

    invoke-virtual {v1}, Lt/q;->a()LG/w;

    move-result-object p0

    check-cast p0, Lt/D;

    invoke-virtual {v0, p0}, Lt/D;->a(Lt/D;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method m()Law/e;
    .locals 11

    const/16 v10, 0x16

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v1, Law/e;

    sget-object v0, Ls/t;->i:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/16 v0, 0x80

    invoke-virtual {v1, v8, v0}, Law/e;->h(II)V

    invoke-virtual {p0, v7}, Lt/au;->d(I)Lt/q;

    move-result-object v0

    invoke-virtual {v0}, Lt/q;->a()LG/w;

    move-result-object v0

    check-cast v0, Lt/D;

    invoke-virtual {v0}, Lt/D;->a()LG/T;

    move-result-object v0

    invoke-virtual {v1, v6}, Law/e;->a(I)Law/e;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v0}, LG/T;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0}, LG/T;->d()[Ljava/lang/String;

    move-result-object v0

    move v3, v7

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v10}, Law/e;->a(I)Law/e;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v8, v5}, Law/e;->b(ILjava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v6, v5}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v2, v10, v4}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6, v2}, Law/e;->b(ILaw/e;)V

    move v0, v7

    :goto_1
    invoke-virtual {p0}, Lt/au;->i()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lt/au;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->a()LG/w;

    move-result-object v2

    new-instance v3, Law/e;

    sget-object v4, Ls/P;->i:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4}, Law/e;->h(II)V

    invoke-virtual {v2}, LG/w;->c()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Law/e;->h(II)V

    invoke-virtual {v2}, LG/w;->d()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Law/e;->h(II)V

    const/4 v4, 0x4

    invoke-virtual {v2}, LG/w;->b()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Law/e;->h(II)V

    invoke-virtual {v1, v9, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
