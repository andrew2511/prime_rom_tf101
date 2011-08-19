.class public Li/aF;
.super Li/x;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Li/aO;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    if-ltz p0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, p0, 0x4000

    goto :goto_0
.end method


# virtual methods
.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 15

    const/4 v3, 0x5

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Li/aF;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    new-array v6, v0, [Lcom/google/googlenav/ui/r;

    move v7, v11

    :goto_0
    iget-object v0, p0, Li/aF;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {p0}, Li/aF;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Li/aH;

    invoke-virtual {v0}, Li/aH;->h()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/f;->a(Lf/h;)LG/w;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/googlenav/prefetch/android/m;->a(I)I

    move-result v1

    sub-int/2addr v1, v12

    new-instance v2, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v4

    invoke-virtual {v0}, LG/w;->c()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Li/aF;->b(I)I

    move-result v5

    invoke-virtual {v0}, LG/w;->d()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-static {v8}, Li/aF;->b(I)I

    move-result v8

    invoke-direct {v2, v4, v5, v8}, LG/w;-><init>(III)V

    new-instance v4, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v5

    invoke-virtual {v0}, LG/w;->c()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Li/aF;->b(I)I

    move-result v8

    invoke-virtual {v0}, LG/w;->d()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-static {v9}, Li/aF;->b(I)I

    move-result v9

    invoke-direct {v4, v5, v8, v9}, LG/w;-><init>(III)V

    new-instance v5, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v8

    invoke-virtual {v0}, LG/w;->c()I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v9}, Li/aF;->b(I)I

    move-result v9

    invoke-virtual {v0}, LG/w;->d()I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Li/aF;->b(I)I

    move-result v10

    invoke-direct {v5, v8, v9, v10}, LG/w;-><init>(III)V

    new-instance v8, LG/w;

    invoke-virtual {v0}, LG/w;->b()I

    move-result v9

    invoke-virtual {v0}, LG/w;->c()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-static {v10}, Li/aF;->b(I)I

    move-result v10

    invoke-virtual {v0}, LG/w;->d()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Li/aF;->b(I)I

    move-result v0

    invoke-direct {v8, v9, v10, v0}, LG/w;-><init>(III)V

    new-array v1, v3, [Lf/h;

    invoke-virtual {v2}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {v0, v13}, LG/S;->a(I)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-virtual {v4}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {v0, v12}, LG/S;->a(I)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v0

    aput-object v0, v1, v12

    invoke-virtual {v5}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {v0, v11}, LG/S;->a(I)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v0

    aput-object v0, v1, v13

    invoke-virtual {v8}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {v0, v14}, LG/S;->a(I)LG/Q;

    move-result-object v0

    invoke-static {v0}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v0

    aput-object v0, v1, v14

    const/4 v0, 0x4

    invoke-virtual {v2}, LG/w;->i()LG/S;

    move-result-object v2

    invoke-virtual {v2, v13}, LG/S;->a(I)LG/Q;

    move-result-object v2

    invoke-static {v2}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v2

    aput-object v2, v1, v0

    const v2, -0xd5ba98

    const/4 v4, -0x1

    new-instance v0, Lf/S;

    const/4 v5, 0x0

    check-cast v5, [[Lf/h;

    invoke-direct/range {v0 .. v5}, Lf/S;-><init>([Lf/h;III[[Lf/h;)V

    aput-object v0, v6, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_0
    return-object v6
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    iput-object p1, p0, Li/aF;->k:Lcom/google/googlenav/j;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/aF;->d(I)V

    return-void
.end method

.method protected a(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/i;

    invoke-direct {v0, p0}, LN/i;-><init>(Li/x;)V

    return-object v0
.end method

.method protected n()Z
    .locals 1

    invoke-super {p0}, Li/x;->n()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x28c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
