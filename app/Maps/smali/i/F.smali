.class public Li/F;
.super Li/n;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V
    .locals 5

    const/4 v4, 0x6

    invoke-direct/range {p0 .. p6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->az:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    invoke-static {v0}, Lk/e;->d(Lk/l;)Lk/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v1

    iget-object v2, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v2

    iget-object v3, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v3

    invoke-interface {v0}, Lk/l;->d()Lk/m;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Lk/m;->a(Lk/l;II)V

    :cond_0
    invoke-virtual {p0, v0}, Li/F;->a(Lk/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->n:C

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0xb

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget-object v0, p0, Li/F;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, p1, v0}, Li/F;->a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/j;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V
    .locals 6

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/F;->h:Lf/v;

    iget-object v2, p0, Li/F;->j:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->o:C

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v2

    iget-object v3, p0, Li/F;->j:LaF/a;

    iget v3, v3, LaF/a;->a:I

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Li/F;->j:LaF/a;

    iget v4, v4, LaF/a;->b:I

    invoke-interface {v0, v1}, Lk/j;->b(C)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lk/j;->a(CLk/m;II)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->n:C

    invoke-interface {v0, v1}, Lk/j;->b(C)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected d(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected e(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->n:C

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    return v0
.end method

.method protected f(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, Li/F;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->n:C

    invoke-interface {v0, v1}, Lk/j;->b(C)I

    move-result v0

    return v0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/a;

    invoke-direct {v0, p0}, LN/a;-><init>(Li/x;)V

    return-object v0
.end method

.method public u()Lk/l;
    .locals 1

    iget-object v0, p0, Li/F;->w:Lk/l;

    if-nez v0, :cond_0

    invoke-super {p0}, Li/n;->u()Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/F;->w:Lk/l;

    goto :goto_0
.end method
