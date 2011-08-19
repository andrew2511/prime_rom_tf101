.class public Lt/G;
.super Lt/ai;


# direct methods
.method public constructor <init>(Lak/h;ILjava/util/Locale;Ljava/io/File;)V
    .locals 10

    const-string v2, "lts"

    new-instance v3, Lt/F;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lt/F;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lt/ai;-><init>(Lak/h;Ljava/lang/String;Lt/ay;Lt/c;IZILjava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method static a(Law/e;LG/r;LG/w;)LG/d;
    .locals 12

    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v10, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Law/e;->i(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v4, v10}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lad/m;->b(Law/e;)LG/Q;

    move-result-object v2

    invoke-virtual {p2}, LG/w;->i()LG/S;

    move-result-object v1

    invoke-virtual {v1, v2}, LG/S;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v10}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4}, Lt/G;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lt/G;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lt/G;->a(Law/e;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v8}, Law/e;->d(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    move v9, v1

    :goto_1
    const-string v1, ""

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    new-array v11, v10, [I

    new-instance v0, LG/Y;

    move-object v1, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, LG/Y;-><init>(LG/w;LG/Q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LG/r;II[I)V

    goto :goto_0

    :cond_4
    move v9, v10

    goto :goto_1

    :cond_5
    move-object v4, v1

    goto :goto_2
.end method

.method private static a(Law/e;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(LG/w;Z)LG/u;
    .locals 2

    instance-of v0, p1, Lt/D;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lt/ai;->a(LG/w;Z)LG/u;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lt/l;
    .locals 2

    new-instance v0, Lt/au;

    iget-object v1, p0, Lt/G;->c:Lac/p;

    invoke-direct {v0, v1}, Lt/au;-><init>(Lac/p;)V

    return-object v0
.end method

.method public a(LG/w;Lt/A;)V
    .locals 2

    instance-of v0, p1, Lt/D;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lt/ai;->a(LG/w;Lt/A;)V

    return-void
.end method
