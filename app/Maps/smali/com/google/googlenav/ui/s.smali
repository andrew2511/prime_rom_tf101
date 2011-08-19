.class Lcom/google/googlenav/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/ui/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/s;-><init>(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->n(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->o(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->p(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->R_()V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->d()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->R_()V

    new-instance v0, Lo/ap;

    invoke-direct {v0}, Lo/ap;-><init>()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lo/au;

    invoke-static {}, Lo/aF;->l()Lo/aF;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/au;-><init>(Lo/aN;)V

    invoke-virtual {v0, v1}, Lo/ap;->a(Lo/s;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo/bi;

    invoke-static {}, Lo/bT;->l()Lo/bT;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/bi;-><init>(Lo/aN;)V

    invoke-virtual {v0, v1}, Lo/ap;->a(Lo/s;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lo/G;

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/G;-><init>(Lo/aN;)V

    invoke-virtual {v0, v1}, Lo/ap;->a(Lo/s;)V

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v1

    invoke-virtual {v1}, Lo/ao;->w()V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lo/bY;

    invoke-static {}, Lo/av;->l()Lo/av;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/bY;-><init>(Lo/aN;)V

    invoke-virtual {v0, v1}, Lo/ap;->a(Lo/s;)V

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lo/ab;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ab;-><init>(Lo/aN;)V

    invoke-virtual {v0, v1}, Lo/ap;->a(Lo/s;)V

    :cond_4
    invoke-virtual {v0}, Lo/ap;->a()V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public an_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->n(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->o(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->p(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->an_()V

    invoke-virtual {v0}, Lv/A;->d()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->an_()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/ui/aT;->c:Z

    return-void
.end method

.method public ao_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->n(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/s;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->o(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->c()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->ao_()V

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v0

    invoke-virtual {v0}, Lv/A;->d()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->ao_()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
