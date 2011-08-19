.class public Li/av;
.super Li/q;

# interfaces
.implements Lcom/google/googlenav/login/k;
.implements Li/ai;


# instance fields
.field E:Z

.field private O:Lh/cD;

.field private P:I

.field private Q:Lx/x;

.field private R:I

.field protected a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    iput-boolean v2, p0, Li/av;->E:Z

    const/4 v0, 0x0

    iput-object v0, p0, Li/av;->O:Lh/cD;

    iput v2, p0, Li/av;->P:I

    const/16 v0, 0xa

    iput v0, p0, Li/av;->R:I

    new-instance v0, Lcom/google/googlenav/aR;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/aR;-><init>(Lv/t;Li/ai;)V

    iput-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, v2}, Li/av;->i(Z)V

    return-void
.end method

.method static synthetic a(Li/av;I)I
    .locals 1

    iget v0, p0, Li/av;->R:I

    add-int/2addr v0, p1

    iput v0, p0, Li/av;->R:I

    return v0
.end method

.method private bu()V
    .locals 2

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aR;->f()Z

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Li/B;

    invoke-direct {v1, p0}, Li/B;-><init>(Li/av;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Li/av;->V()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Li/av;->O:Lh/cD;

    invoke-static {v0}, Lu/h;->c(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    invoke-interface {v2, v0, v1, v3}, Lh/cD;->a(Lu/h;Ljava/lang/Long;Law/e;)V

    iput-object v3, p0, Li/av;->O:Lh/cD;

    :cond_0
    invoke-virtual {p0}, Li/av;->T()V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->C()Lh/fS;

    move-result-object v0

    invoke-virtual {v0}, Lh/fS;->v()V

    :cond_1
    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0}, Lh/dH;->u()V

    return-void
.end method

.method private j(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/av;->br()Lh/fS;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/fS;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object p0, p0, Li/av;->A:Li/aM;

    check-cast p0, Li/aP;

    invoke-virtual {p0, p1}, Li/aP;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private k(I)V
    .locals 3

    invoke-virtual {p0}, Li/av;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/av;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Li/av;->O:Lh/cD;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Li/av;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->w()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Li/av;->a(Ljava/lang/String;Z)V

    iput p1, p0, Li/av;->P:I

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->C()Lh/fS;

    move-result-object v0

    invoke-virtual {v0}, Lh/fS;->v()V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected G()V
    .locals 3

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v2

    invoke-interface {v2, v1}, Lv/t;->b(Ljava/lang/String;)V

    iget-object v2, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v2

    invoke-interface {v2}, Lv/t;->i()Lv/j;

    move-result-object v2

    invoke-interface {v2, v1}, Lv/j;->f(Ljava/lang/String;)V

    iget-object v1, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lv/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Li/q;->G()V

    goto :goto_0
.end method

.method protected N()I
    .locals 2

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v0

    iget-object v1, p0, Li/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aR;->b(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public N_()V
    .locals 1

    invoke-virtual {p0}, Li/av;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/av;->a:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Li/q;->N_()V

    return-void
.end method

.method protected R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public R_()V
    .locals 0

    invoke-direct {p0}, Li/av;->bu()V

    return-void
.end method

.method public S()V
    .locals 2

    invoke-virtual {p0}, Li/av;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->Q()V

    iget-object v1, p0, Li/av;->i:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->c(Lf/h;)V

    :cond_0
    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method protected T()V
    .locals 1

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-super {p0}, Li/q;->T()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/av;->aC()V

    goto :goto_0
.end method

.method public U()Lcom/google/googlenav/aR;
    .locals 0

    invoke-virtual {p0}, Li/av;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aR;

    return-object p0
.end method

.method public V()Lv/t;
    .locals 1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    return-object v0
.end method

.method protected Y_()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/av;->br()Lh/fS;

    move-result-object v0

    invoke-virtual {v0}, Lh/fS;->u()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Li/q;->Y_()V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aR;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    iput-object p1, p0, Li/av;->k:Lcom/google/googlenav/j;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/av;->d(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p2}, Li/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Li/av;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/av;->h:Lf/v;

    iget-object v3, p0, Li/av;->j:LaF/a;

    invoke-virtual {v2, v1, v3}, Lf/v;->a(Lf/h;LaF/a;)V

    invoke-virtual {p0, v0}, Li/av;->e(I)Lcom/google/googlenav/aG;

    move-result-object v0

    iget-object v1, p0, Li/av;->j:LaF/a;

    iget v1, v1, LaF/a;->a:I

    iget-object v2, p0, Li/av;->j:LaF/a;

    iget v2, v2, LaF/a;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/aG;->a(Lcom/google/googlenav/aG;Lcom/google/googlenav/ui/x;II)V

    :cond_0
    return-void
.end method

.method public a(Lh/cD;)V
    .locals 0

    iput-object p1, p0, Li/av;->O:Lh/cD;

    return-void
.end method

.method public a(Li/x;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Li/av;->d(Z)V

    invoke-virtual {p0}, Li/av;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Li/av;->e(Z)V

    invoke-virtual {p0}, Li/av;->am()V

    :cond_0
    invoke-virtual {p0}, Li/av;->aA()V

    iput-boolean v1, p0, Li/av;->E:Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/av;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aR;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aR;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Li/av;->d(I)V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->b(Li/x;)V

    invoke-virtual {p0}, Li/av;->S()V

    iput v2, p0, Li/av;->P:I

    if-eqz p2, :cond_1

    const/16 v0, 0xd

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/av;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Li/av;->V()Lv/t;

    move-result-object v0

    const-string v1, "s"

    invoke-interface {v0, v1, p1}, Lv/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Li/q;->a(I)Z

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

.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/av;->aN()Z

    invoke-virtual {p0, v2}, Li/av;->b(Z)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Li/av;->a(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p2}, Li/av;->j(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Li/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Li/av;->k(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v1}, Lv/j;->d()V

    invoke-interface {v0}, Lv/t;->j()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x3f5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_3
    move v0, v2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Li/av;->bt()V

    move v0, v2

    goto :goto_0

    :sswitch_4
    if-eqz p3, :cond_4

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Li/av;->j(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Li/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aR;->b(I)V

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Li/av;->aB()V

    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3f9 -> :sswitch_5
        0x578 -> :sswitch_4
        0x579 -> :sswitch_2
        0x57a -> :sswitch_1
        0x57b -> :sswitch_3
    .end sparse-switch
.end method

.method protected a(Lax/c;)Z
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0}, Li/av;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/av;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Li/av;->a(ILjava/lang/Object;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/av;->d()V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lx/J;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lx/Q;)Z
    .locals 2

    iget-object v0, p0, Li/av;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/av;->l:Lx/S;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/av;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/q;->a(Lx/Q;)Z

    move-result v0

    goto :goto_0
.end method

.method public aS()V
    .locals 1

    iget-boolean v0, p0, Li/av;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/av;->V()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/av;->E:Z

    invoke-virtual {p0}, Li/av;->au()V

    invoke-virtual {p0}, Li/av;->bI()V

    :cond_0
    return-void
.end method

.method public ab_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ac()Lcom/google/googlenav/bf;
    .locals 1

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    return-object v0
.end method

.method public ac_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected am_()V
    .locals 1

    invoke-virtual {p0}, Li/av;->N()I

    move-result v0

    invoke-virtual {p0, v0}, Li/av;->i(I)V

    return-void
.end method

.method public an_()V
    .locals 0

    invoke-direct {p0}, Li/av;->bu()V

    return-void
.end method

.method public ao_()V
    .locals 0

    invoke-direct {p0}, Li/av;->bu()V

    return-void
.end method

.method protected aq()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Li/av;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Li/av;->P:I

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Li/av;->i(Z)V

    iget v0, p0, Li/av;->P:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-virtual {p0, p1}, Li/av;->f(Lcom/google/googlenav/bf;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aR;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v1, p0}, Li/aE;->b(Li/x;)V

    invoke-virtual {p0, v0}, Li/av;->d(I)V

    invoke-virtual {p0}, Li/av;->aN()Z

    invoke-virtual {p0}, Li/av;->S()V

    :cond_0
    return-void
.end method

.method public bo()Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    return-object v0
.end method

.method public bp()I
    .locals 1

    iget v0, p0, Li/av;->R:I

    return v0
.end method

.method public bq()Lx/x;
    .locals 1

    iget-object v0, p0, Li/av;->Q:Lx/x;

    if-nez v0, :cond_0

    new-instance v0, Li/A;

    invoke-direct {v0, p0}, Li/A;-><init>(Li/av;)V

    iput-object v0, p0, Li/av;->Q:Lx/x;

    :cond_0
    iget-object v0, p0, Li/av;->Q:Lx/x;

    return-object v0
.end method

.method public br()Lh/fS;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->C()Lh/fS;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bt()V
    .locals 1

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->b()V

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/av;->bN()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Li/av;->O:Lh/cD;

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Li/av;->T()V

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v0}, Li/av;->b(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Li/av;->i(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/av;->i(Z)V

    invoke-virtual {p0}, Li/av;->Y_()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Li/av;->T()V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->I()Lh/fa;

    move-result-object v0

    invoke-virtual {v0}, Lh/fa;->u()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->B()Lh/fQ;

    move-result-object v0

    const/16 v1, 0x32c

    invoke-virtual {v0, v1, v2, v3}, Lh/fQ;->a(IILjava/lang/Object;)Z

    invoke-virtual {p0}, Li/av;->T()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Li/av;->aC()V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Li/av;->aC()V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    const-string v1, "stars"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
        0xd -> :sswitch_2
        0xf -> :sswitch_3
        0x16 -> :sswitch_4
        0x1c -> :sswitch_6
    .end sparse-switch
.end method

.method public e(ILjava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    iget-object v1, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    const-string v2, "stars"

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(Lcom/google/googlenav/ui/aT;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/av;->V()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->j()V

    const/16 v0, 0xa

    iput v0, p0, Li/av;->R:I

    invoke-virtual {p0, p1, p2}, Li/av;->c(ILjava/lang/Object;)V

    iget-object v0, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->b(Li/x;)V

    const/16 v0, 0x9

    const-string v1, "m"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method protected i(I)V
    .locals 2

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->b(I)V

    invoke-virtual {p0}, Li/av;->aN()Z

    invoke-virtual {p0}, Li/av;->S()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/av;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 3

    iget-object v0, p0, Li/av;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    iget-object v1, p0, Li/av;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lv/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/g;

    invoke-direct {v0, p0}, LN/g;-><init>(Li/x;)V

    return-object v0
.end method

.method protected n()Z
    .locals 2

    invoke-super {p0}, Li/q;->n()Z

    move-result v0

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aR;->f()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

.method public y()V
    .locals 1

    invoke-virtual {p0}, Li/av;->U()Lcom/google/googlenav/aR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aR;->a()V

    invoke-super {p0}, Li/q;->y()V

    return-void
.end method
