.class public Li/ay;
.super Li/n;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    return-void
.end method


# virtual methods
.method protected O_()V
    .locals 2

    iget-object v0, p0, Li/ay;->o:Lcom/google/googlenav/ui/X;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/X;->a(Z)V

    return-void
.end method

.method protected Q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lf/h;)I
    .locals 1

    invoke-virtual {p0}, Li/ay;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/n;->a(Lf/h;)I

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x215

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lk/l;
    .locals 2

    iget-object v0, p0, Li/ay;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->al:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Li/ay;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Li/n;->x()Z

    :cond_0
    invoke-virtual {p0}, Li/ay;->z()V

    iget-object v0, p0, Li/ay;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->O()V

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 1

    invoke-virtual {p0}, Li/ay;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Li/n;->y()V

    :cond_0
    invoke-virtual {p0}, Li/ay;->O_()V

    iget-object v0, p0, Li/ay;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->O()V

    return-void
.end method

.method protected z()V
    .locals 2

    iget-object v0, p0, Li/ay;->o:Lcom/google/googlenav/ui/X;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/X;->a(Z)V

    return-void
.end method
