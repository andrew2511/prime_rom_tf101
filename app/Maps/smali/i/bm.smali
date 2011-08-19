.class public Li/bm;
.super Li/n;


# instance fields
.field private E:Z

.field private O:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v5, Lcom/google/googlenav/layer/s;

    const-string v0, "s"

    invoke-direct {v5, v0}, Lcom/google/googlenav/layer/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lf/v;->a()Lf/J;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/r;)V

    iput-boolean v7, p0, Li/bm;->E:Z

    iput-boolean v7, p0, Li/bm;->O:Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->a()LaD/r;

    return-void
.end method

.method private a(Lcom/google/googlenav/bF;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/bF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    const-string v1, "smc"

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->ce()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public J_()Z
    .locals 2

    iget-boolean v0, p0, Li/bm;->E:Z

    invoke-virtual {p0}, Li/bm;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->k()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Li/bm;->E:Z

    invoke-super {p0}, Li/n;->J_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Li/bm;->E:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Li/n;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v1, v0

    invoke-static {v1}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/bF;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->b(Z)Lcom/google/googlenav/aH;

    check-cast p2, Lcom/google/googlenav/bF;

    invoke-direct {p0, p2}, Li/bm;->a(Lcom/google/googlenav/bF;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Li/n;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bm;->e(Z)V

    return-void
.end method

.method protected n()Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Li/n;->n()Z

    iget-boolean v0, p0, Li/bm;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/bm;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/bm;->a(Lf/h;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Li/bm;->b(B)V

    invoke-virtual {p0}, Li/bm;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->b(I)V

    iget-object v0, p0, Li/bm;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->b(Li/x;)V

    invoke-virtual {p0}, Li/bm;->aN()Z

    :cond_0
    iput-boolean v2, p0, Li/bm;->O:Z

    :cond_1
    return v2
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.method public x()Z
    .locals 1

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    iget-object v0, p0, Li/bm;->h:Lf/v;

    invoke-virtual {v0, p0}, Lf/v;->a(Lf/T;)V

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 2

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    invoke-virtual {p0}, Li/bm;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->h()V

    iget-object v0, p0, Li/bm;->h:Lf/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/T;)V

    return-void
.end method
