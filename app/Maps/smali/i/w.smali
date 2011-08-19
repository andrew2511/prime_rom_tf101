.class public Li/w;
.super Li/x;


# instance fields
.field private E:Lbb/b;

.field private F:Z

.field private G:Lcom/google/googlenav/j;

.field private a:Z

.field private b:Z

.field private c:Lx/N;

.field private d:Lcom/google/googlenav/ui/view/android/aP;

.field private e:Lx/S;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/w;->F:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lu/v;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/w;->F:Z

    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->a()V

    :cond_0
    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->f()Z

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    iget-object v1, p0, Li/w;->c:Lx/N;

    invoke-virtual {v1}, Lx/N;->h()Lcom/google/android/maps/rideabout/view/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/android/maps/rideabout/view/f;)V

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->c()V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    iget-object v1, p0, Li/w;->c:Lx/N;

    invoke-virtual {v1}, Lx/N;->g()Lcom/google/android/maps/rideabout/view/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/android/maps/rideabout/view/k;)V

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->e()V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->b()V

    return-void
.end method

.method private J()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Li/w;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/w;->D()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/w;->Y_()V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->o()V

    move v0, v1

    goto :goto_0
.end method

.method private K()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->i(Z)V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->l()V

    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()V

    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->d()V

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->d()V

    iget-object v0, p0, Li/w;->c:Lx/N;

    invoke-virtual {v0}, Lx/N;->f()V

    iget-object v0, p0, Li/w;->e:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->e()V

    iput-boolean v1, p0, Li/w;->a:Z

    iput-boolean v1, p0, Li/w;->b:Z

    return-void
.end method

.method private L()Lu/v;
    .locals 0

    iget-object p0, p0, Li/w;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/v;

    return-object p0
.end method

.method private N()Lu/d;
    .locals 0

    iget-object p0, p0, Li/w;->k:Lcom/google/googlenav/j;

    check-cast p0, Lu/d;

    return-object p0
.end method

.method private O()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/w;->i:Lf/Y;

    iget-object v1, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Li/w;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->b(Lf/h;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/w;->i:Lf/Y;

    iget-object v1, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-direct {p0, v1}, Li/w;->i(I)Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Li/w;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->c(Lf/h;)V

    goto :goto_0
.end method

.method private P()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private Q()Z
    .locals 1

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->ad()Z

    move-result v0

    return v0
.end method

.method private a(IZZ)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v1

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    check-cast v0, Lu/n;

    invoke-virtual {p0, p1}, Li/w;->d(I)V

    iget-object v2, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bu;->v()V

    invoke-virtual {p0}, Li/w;->aN()Z

    if-ltz p1, :cond_0

    iget-object v2, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c_()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v0, v1}, Lu/n;->a(I)I

    move-result v1

    invoke-interface {v0, p1}, Lu/n;->a(I)I

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Li/w;->O()V

    :goto_1
    const/16 v0, 0x12

    const-string v1, "dd"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Li/w;->i:Lf/Y;

    invoke-interface {v0}, Lu/n;->b_()[Lf/h;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v1, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/w;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lf/Y;->d(Lf/h;Lf/l;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Li/w;->O()V

    goto :goto_1

    :cond_3
    move v1, v3

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Li/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Li/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x61

    const-string v1, "a"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x4

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lu/h;I)V
    .locals 4

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    invoke-direct {v1, p2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    const/4 v0, 0x0

    iget-object v1, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p1}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;BZ)V

    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Li/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v2}, Li/w;->a(IZZ)V

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Li/w;->b(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/w;->d(I)V

    goto :goto_0
.end method

.method private g(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Li/w;->f(Lcom/google/googlenav/bf;)I

    move-result v0

    invoke-direct {p0}, Li/w;->P()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private i(I)Lf/h;
    .locals 1

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->i()V

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    iget-object p0, p0, Li/w;->G:Lcom/google/googlenav/j;

    check-cast p0, Lu/v;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/google/googlenav/ui/aT;->a(Lu/v;B)V

    return-void
.end method

.method public D()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    const/16 v1, 0x377

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x376

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Li/l;

    invoke-direct {v5, p0}, Li/l;-><init>(Li/w;)V

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V

    return-void
.end method

.method public F()V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v0, p0, Li/w;->F:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Li/w;->F:Z

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->L()Lh/ap;

    move-result-object v1

    invoke-virtual {v1}, Lh/ap;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->L()Lh/ap;

    move-result-object v1

    invoke-virtual {v1}, Lh/ap;->v()V

    :cond_1
    const-string v1, "s"

    invoke-direct {p0, v1}, Li/w;->a(Ljava/lang/String;)V

    const/16 v1, 0x386

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x370

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Li/m;

    invoke-direct {v5, p0}, Li/m;-><init>(Li/w;)V

    invoke-virtual/range {v0 .. v5}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V

    goto :goto_0
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Li/w;->N()Lu/d;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lu/d;->aa()I

    move-result v1

    if-ge v1, v7, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    sub-int v2, v1, v7

    new-array v2, v2, [Lcom/google/googlenav/ui/aU;

    const/4 v3, 0x0

    :goto_1
    sub-int v4, v1, v7

    if-ge v3, v4, :cond_2

    new-instance v4, Lcom/google/googlenav/ui/Y;

    invoke-virtual {v0, v3}, Lu/d;->n(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/Y;->b(Z)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v4, v0, v5, v3, v6}, Lcom/google/googlenav/ui/Y;-><init>(Lu/d;III)V

    aput-object v4, v2, v3

    aget-object p0, v2, v3

    check-cast p0, Lcom/google/googlenav/ui/Y;

    invoke-virtual {v0, v3}, Lu/d;->n(I)Z

    move-result v4

    invoke-static {v4}, Lcom/google/googlenav/ui/Y;->a(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/Y;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public N_()V
    .locals 1

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->m()V

    invoke-super {p0}, Li/x;->N_()V

    return-void
.end method

.method protected T()V
    .locals 1

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->e()V

    invoke-super {p0}, Li/x;->T()V

    return-void
.end method

.method protected Y_()V
    .locals 1

    invoke-super {p0}, Li/x;->Y_()V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->f()V

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lf/h;Lf/l;)Lf/h;
    .locals 11

    const/4 v9, 0x0

    iget-object v0, p0, Li/w;->l:Lx/S;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/w;->ac()Lcom/google/googlenav/bf;

    move-result-object v1

    iget-object v0, p0, Li/w;->l:Lx/S;

    invoke-interface {v0}, Lx/S;->d()[I

    move-result-object v2

    iget-object v0, p0, Li/w;->i:Lf/Y;

    iget-object v3, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->f()Lf/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf/Y;->a(Lf/l;)V

    iget-object v0, p0, Li/w;->i:Lf/Y;

    invoke-virtual {p0, v1}, Li/w;->e(Lcom/google/googlenav/bf;)I

    move-result v3

    invoke-direct {p0, v1}, Li/w;->g(Lcom/google/googlenav/bf;)I

    move-result v4

    aget v5, v2, v9

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {p0, v1}, Li/w;->a(Lcom/google/googlenav/bf;)I

    move-result v7

    invoke-virtual {p0}, Li/w;->q_()I

    move-result v8

    invoke-virtual {p0, v9}, Li/w;->c(Z)I

    move-result v9

    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lf/Y;->a(Lcom/google/googlenav/bf;Lf/h;IIIIIIILf/l;)Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 0

    iput-object p1, p0, Li/w;->k:Lcom/google/googlenav/j;

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Li/w;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Li/w;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v3}, Li/w;->c(ILjava/lang/Object;)V

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Li/w;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sb"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    :cond_1
    :sswitch_2
    invoke-direct {p0}, Li/w;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Li/w;->b(I)V

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {p0, v1, v3}, Li/w;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Li/w;->aB()V

    move v0, v2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Li/w;->B()V

    move v0, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Li/w;->F()V

    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xf1 -> :sswitch_0
        0x3f9 -> :sswitch_3
        0xb54 -> :sswitch_4
        0xb56 -> :sswitch_5
    .end sparse-switch
.end method

.method protected a(Lax/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li/w;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    const-string v1, "#"

    invoke-direct {p0, v0, v1}, Li/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-direct {p0, v0}, Li/w;->b(I)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const-string v0, "l"

    const-string v1, "#"

    invoke-direct {p0, v0, v1}, Li/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/w;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/w;->aJ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Li/w;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/w;->a(Lf/h;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Li/w;->J()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Li/w;->b(Lax/c;)Z

    move-result v0

    goto :goto_1
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v0

    :try_start_0
    invoke-static {p1, v0}, Lu/v;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v0

    instance-of v1, v0, Lu/p;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lu/v;->G()V

    :cond_0
    iput-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "UI-TDW"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lx/Q;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/w;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/w;->l:Lx/S;

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Li/x;->a(Lx/Q;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/w;->m:Lcom/google/googlenav/bf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/w;->m:Lcom/google/googlenav/bf;

    instance-of v0, v0, Lu/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/w;->m:Lcom/google/googlenav/bf;

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/w;->L()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Li/w;->a(Lu/h;I)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x23

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Li/w;->a(CI)Z

    move v0, v2

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-direct {p0, p1}, Li/w;->g(Lcom/google/googlenav/bf;)I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Li/w;->P()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Lax/c;)Z
    .locals 6

    const/16 v5, 0x36

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Li/w;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->a()I

    move-result v0

    if-eq v0, v5, :cond_1

    const/16 v1, 0x34

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v1, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-virtual {p0}, Li/w;->aD()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-gez v0, :cond_2

    move v0, v4

    :cond_2
    invoke-direct {p0, v0, v3, v3}, Li/w;->a(IZZ)V

    move v0, v3

    goto :goto_0

    :cond_3
    sub-int v0, v1, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Li/w;->J()Z

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Li/x;->h()V

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ui/aY;)V

    iget-boolean v0, p0, Li/w;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Li/w;->a:Z

    iput-boolean v1, p0, Li/w;->b:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->h()V

    iput-boolean v1, p0, Li/w;->a:Z

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget-boolean v0, p0, Li/w;->b:Z

    iget-object v1, p0, Li/w;->E:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->e()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Li/w;->b:Z

    iget-boolean v0, p0, Li/w;->b:Z

    return v0
.end method

.method protected q_()I
    .locals 1

    invoke-static {}, Lx/N;->l()Lx/N;

    move-result-object v0

    invoke-virtual {v0}, Lx/N;->k()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Li/w;->L()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x383

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()V
    .locals 5

    invoke-super {p0}, Li/x;->v()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {p0}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Li/w;->L()Lu/v;

    move-result-object v4

    invoke-virtual {v4, v3}, Lu/v;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public x()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    iput-object v0, p0, Li/w;->G:Lcom/google/googlenav/j;

    invoke-direct {p0}, Li/w;->L()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->aC()Lu/v;

    move-result-object v0

    iput-object v0, p0, Li/w;->k:Lcom/google/googlenav/j;

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    iget-object v0, p0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aT;->i(Z)V

    invoke-static {}, Lx/N;->l()Lx/N;

    move-result-object v0

    iput-object v0, p0, Li/w;->c:Lx/N;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v0

    iput-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-static {}, Lbb/b;->n()Lbb/b;

    move-result-object v0

    iput-object v0, p0, Li/w;->E:Lbb/b;

    iget-object v0, p0, Li/w;->E:Lbb/b;

    invoke-direct {p0}, Li/w;->N()Lu/d;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lbb/b;->a(Lu/d;Lcom/google/googlenav/ui/aY;)V

    invoke-direct {p0}, Li/w;->I()V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0x14

    new-instance v2, Li/k;

    invoke-direct {v2, p0}, Li/k;-><init>(Li/w;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/w;->e:Lx/S;

    iget-object v0, p0, Li/w;->d:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->e()V

    return v4
.end method

.method public y()V
    .locals 0

    invoke-direct {p0}, Li/w;->K()V

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    return-void
.end method
