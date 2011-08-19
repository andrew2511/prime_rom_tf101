.class public LN/h;
.super LN/j;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/aG;
    .locals 6

    iget-object v0, p0, LN/h;->a:Li/x;

    check-cast v0, Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/U;->z()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lo/U;->D()C

    move-result v2

    invoke-virtual {v0}, Li/C;->bQ()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->a()LaD/r;

    move-result-object v0

    new-instance v3, Lc/a;

    invoke-virtual {v1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-direct {v3, v4, v5}, Lc/a;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v0, v3}, LaD/r;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    invoke-virtual {v1}, Lo/U;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, LN/h;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/aV;->a(CLk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, LN/h;->b:Lcom/google/googlenav/ui/aV;

    iget-object v3, p0, LN/h;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v1}, Lo/U;->l()Z

    move-result v1

    sget v4, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-virtual {v3, v1, v4}, Lcom/google/googlenav/ui/aV;->a(ZI)Lk/l;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/ui/aV;->a(CLk/l;)Lcom/google/googlenav/aG;

    move-result-object v0

    goto :goto_0
.end method
