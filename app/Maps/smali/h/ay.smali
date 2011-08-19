.class public Lh/ay;
.super Lh/eR;


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/e;

.field private b:Lh/aZ;

.field private c:Law/e;

.field private d:Ljava/lang/String;

.field private e:Lf/h;

.field private f:LI/O;

.field private l:Lba/b;

.field private m:Lh/dP;

.field private n:Z


# direct methods
.method public constructor <init>(Lh/eY;Lba/b;)V
    .locals 1

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ay;->d:Ljava/lang/String;

    iput-object p2, p0, Lh/ay;->l:Lba/b;

    return-void
.end method

.method static synthetic a(Lh/ay;)Lh/aZ;
    .locals 1

    iget-object v0, p0, Lh/ay;->b:Lh/aZ;

    return-object v0
.end method

.method static synthetic a(Lh/ay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lh/ay;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lh/ay;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lh/ay;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lh/ay;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/ay;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x15

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-boolean v0, p0, Lh/ay;->n:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lo/A;->x()V

    :goto_0
    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->k()V

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, LaG/b;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Law/e;->a(ILjava/lang/String;)V

    new-instance v2, Law/e;

    sget-object v3, LaG/b;->a:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v4, p2, p3}, Law/e;->b(IJ)V

    invoke-virtual {v2, v7, p4, p5}, Law/e;->b(IJ)V

    invoke-virtual {v1, v4, v2}, Law/e;->b(ILaw/e;)V

    sget-object v2, Lh/cp;->a:[I

    iget-object v3, p0, Lh/ay;->m:Lh/dP;

    invoke-virtual {v3}, Lh/dP;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    new-instance v7, Lo/C;

    new-instance v2, Lh/cn;

    invoke-direct {v2, p0, v1}, Lh/cn;-><init>(Lh/ay;Law/e;)V

    invoke-direct {v7, v0, v2}, Lo/C;-><init>(Law/e;Lo/V;)V

    iget-object v0, p0, Lh/ay;->g:Lh/eY;

    const/16 v1, 0x140

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v7}, Lak/h;->c(Lak/d;)V

    return-void

    :cond_1
    invoke-static {}, Lo/A;->y()V

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4}, Law/e;->b(IZ)V

    iget-object v2, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v2, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v2, v6}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v2, v6}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Law/e;->h(II)V

    :cond_2
    invoke-virtual {v0, v7, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v5, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, LI/h;

    new-instance v2, Lh/cm;

    invoke-direct {v2, p0}, Lh/cm;-><init>(Lh/ay;)V

    invoke-direct {v0, v1, v2}, LI/h;-><init>(Ljava/util/List;LI/r;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lx/z;

    invoke-direct {v2, v0}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    iput-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/e;->c(I)V

    return-void
.end method

.method static synthetic b(Lh/ay;)LI/O;
    .locals 1

    iget-object v0, p0, Lh/ay;->f:LI/O;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lh/ay;->b:Lh/aZ;

    iget-object v1, p0, Lh/ay;->c:Law/e;

    iget-object v2, p0, Lh/ay;->m:Lh/dP;

    iget-boolean v3, p0, Lh/ay;->n:Z

    iput-object v4, p0, Lh/ay;->b:Lh/aZ;

    iput-object v4, p0, Lh/ay;->c:Law/e;

    iput-object v4, p0, Lh/ay;->m:Lh/dP;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lh/ay;->n:Z

    invoke-virtual {p0}, Lh/ay;->v()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/ay;->a(Lh/aZ;Law/e;Lh/dP;Z)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/ay;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/ay;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/ay;->d()V

    iget v0, p0, Lh/ay;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/ay;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/ay;->k:I

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/ay;->k:I

    new-instance v0, LI/O;

    iget-object v1, p0, Lh/ay;->m:Lh/dP;

    iget-boolean v2, p0, Lh/ay;->n:Z

    invoke-direct {v0, p0, v1, v2}, LI/O;-><init>(Lh/ay;Lh/dP;Z)V

    iput-object v0, p0, Lh/ay;->f:LI/O;

    new-instance v0, Lx/z;

    iget-object v1, p0, Lh/ay;->f:LI/O;

    invoke-direct {v0, v1}, Lx/z;-><init>(LI/n;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/ay;->j:Lx/J;

    iget-object v0, p0, Lh/ay;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    invoke-virtual {p0}, Lh/ay;->i()V

    return-void
.end method

.method public a(Lh/aZ;Law/e;Lh/dP;Z)V
    .locals 0

    iput-object p1, p0, Lh/ay;->b:Lh/aZ;

    iput-object p2, p0, Lh/ay;->c:Law/e;

    iput-object p3, p0, Lh/ay;->m:Lh/dP;

    iput-boolean p4, p0, Lh/ay;->n:Z

    invoke-virtual {p0}, Lh/ay;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lh/ay;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "home_speedbump_ack"

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/ay;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    :goto_1
    int-to-long v2, v1

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lh/ay;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/ay;->e:Lf/h;

    invoke-virtual {v0}, Lf/h;->c()I

    move-result v0

    iget-object v1, p0, Lh/ay;->e:Lf/h;

    invoke-virtual {v1}, Lf/h;->e()I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lh/ay;->g:Lh/eY;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    iget-object v0, p0, Lh/ay;->l:Lba/b;

    const/4 v1, 0x5

    new-instance v2, Lh/cl;

    invoke-direct {v2, p0}, Lh/cl;-><init>(Lh/ay;)V

    invoke-virtual {v0, p1, v1, v2}, Lba/b;->a(Ljava/lang/String;ILba/c;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/ay;->k:I

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->k()V

    :cond_0
    iput-object v1, p0, Lh/ay;->c:Law/e;

    iput-object v1, p0, Lh/ay;->b:Lh/aZ;

    iput-object v1, p0, Lh/ay;->d:Ljava/lang/String;

    iput-object v1, p0, Lh/ay;->e:Lf/h;

    iput-object v1, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->k()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lh/ay;->h()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lh/ay;->b:Lh/aZ;

    invoke-interface {v0}, Lh/aZ;->a()V

    invoke-virtual {p0}, Lh/ay;->v()V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lh/ay;->c:Law/e;

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/ay;->c:Law/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/ay;->d:Ljava/lang/String;

    iget-object v1, p0, Lh/ay;->f:LI/O;

    invoke-virtual {v1, v0}, LI/O;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->w()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->w()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    iput-object v0, p0, Lh/ay;->e:Lf/h;

    new-instance v1, Lcom/google/googlenav/R;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/R;-><init>(Lf/h;I)V

    new-instance v0, Lh/co;

    invoke-direct {v0, p0}, Lh/co;-><init>(Lh/ay;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/R;->a(Lcom/google/googlenav/N;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method
