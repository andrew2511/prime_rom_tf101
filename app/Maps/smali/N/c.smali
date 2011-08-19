.class public LN/c;
.super LN/j;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bf;)I
    .locals 2

    check-cast p1, Lcom/google/googlenav/bF;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bN()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bQ()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object p0, p0, LN/c;->a:Li/x;

    check-cast p0, Li/n;

    invoke-virtual {p0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->e()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Lcom/google/googlenav/aG;
    .locals 2

    iget-object v0, p0, LN/c;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    if-eqz v0, :cond_1

    iget-object v1, p0, LN/c;->a:Li/x;

    invoke-virtual {v1}, Li/x;->aY()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bN()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, LN/c;->a:Li/x;

    check-cast p0, Li/n;

    invoke-virtual {p0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bO()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    check-cast p1, Lcom/google/googlenav/bF;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bN()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bR()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object p0, p0, LN/c;->a:Li/x;

    check-cast p0, Li/n;

    invoke-virtual {p0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->f()I

    move-result v0

    goto :goto_0
.end method
