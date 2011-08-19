.class public Li/Z;
.super Li/bl;


# instance fields
.field private final a:Lcom/google/googlenav/layer/q;

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;Lcom/google/googlenav/c;ZBZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Li/bl;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    invoke-virtual {p6}, Lcom/google/googlenav/c;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p6, Lcom/google/googlenav/bF;

    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-virtual {p6}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/s;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/layer/q;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/layer/q;-><init>(Li/x;Lcom/google/googlenav/layer/s;)V

    iput-object v1, p0, Li/Z;->a:Lcom/google/googlenav/layer/q;

    new-instance v1, Lcom/google/googlenav/aY;

    invoke-direct {v1, v0, p5, p2, p3}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-virtual {v1, p6}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/bF;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->b(I)V

    iput-object v1, p0, Li/Z;->k:Lcom/google/googlenav/j;

    :goto_0
    iput-boolean p7, p0, Li/Z;->b:Z

    iput-boolean p9, p0, Li/Z;->c:Z

    invoke-virtual {p0, p8}, Li/Z;->b(B)V

    invoke-virtual {p0}, Li/Z;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/Z;->e(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Li/Z;->a:Lcom/google/googlenav/layer/q;

    new-instance v0, Lcom/google/googlenav/bM;

    invoke-direct {v0, p6}, Lcom/google/googlenav/bM;-><init>(Lcom/google/googlenav/c;)V

    iput-object v0, p0, Li/Z;->k:Lcom/google/googlenav/j;

    goto :goto_0
.end method


# virtual methods
.method public B()Lcom/google/googlenav/aY;
    .locals 0

    iget-object p0, p0, Li/Z;->k:Lcom/google/googlenav/j;

    check-cast p0, Lcom/google/googlenav/aY;

    return-object p0
.end method

.method protected Y_()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    iget-object v0, p0, Li/Z;->a:Lcom/google/googlenav/layer/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/Z;->a:Lcom/google/googlenav/layer/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/c;)Lak/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 0

    iput-object p1, p0, Li/Z;->k:Lcom/google/googlenav/j;

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method protected a(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aO()Z
    .locals 1

    invoke-virtual {p0}, Li/Z;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aP()V
    .locals 1

    invoke-super {p0}, Li/bl;->aP()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/Z;->e(Z)V

    return-void
.end method

.method public aV()Z
    .locals 1

    iget-boolean v0, p0, Li/Z;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Li/bl;->aV()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 3

    iget-boolean v1, p0, Li/Z;->b:Z

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aY()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->f()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    sub-int v1, v2, v1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Li/Z;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Li/Z;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/Z;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/Z;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    iget-object v0, p0, Li/Z;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ai()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Li/Z;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/Z;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    iget-object v0, p0, Li/Z;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->W()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/Z;->T()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 3

    const/4 v1, 0x4

    iget-object v0, p0, Li/Z;->k:Lcom/google/googlenav/j;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {p0, v1, v0}, Li/Z;->a(ILcom/google/googlenav/c;)V

    invoke-super {p0}, Li/bl;->h()V

    iget-boolean v0, p0, Li/Z;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/Z;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/Z;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/Z;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/Z;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/Z;->i:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->b(Lf/h;)V

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 9

    invoke-virtual {p0}, Li/Z;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v2, v0

    const/16 v3, 0x43

    const-string v4, "o"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->cd()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Li/Z;->a:Lcom/google/googlenav/layer/q;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/layer/q;->b(Lcom/google/googlenav/c;)Lak/d;

    :cond_0
    return-void

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->cd()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/i;

    invoke-direct {v0, p0}, LN/i;-><init>(Li/x;)V

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Li/Z;->b:Z

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
