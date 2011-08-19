.class public Lh/dC;
.super Lh/eR;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private b:Li/aE;

.field private final c:Lk/j;

.field private final d:LaB/f;

.field private e:I

.field private f:Lcom/google/googlenav/ui/bv;


# direct methods
.method public constructor <init>(Lh/eY;Lcom/google/googlenav/bL;LaU/a;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput-object p2, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    iget-object v0, p0, Lh/dC;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    iput-object v0, p0, Lh/dC;->c:Lk/j;

    iget-object v0, p0, Lh/dC;->c:Lk/j;

    sget-char v1, Lcom/google/googlenav/ui/aV;->an:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    iput-object v0, p0, Lh/dC;->d:LaB/f;

    return-void
.end method

.method private a(Lcom/google/googlenav/layer/s;)Lcom/google/googlenav/ui/view/android/q;
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    :goto_1
    check-cast v0, LaB/f;

    if-nez v0, :cond_6

    iget-object v0, p0, Lh/dC;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-char v3, Lcom/google/googlenav/ui/aV;->ao:C

    :goto_2
    invoke-interface {v0, v3}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    move-object v3, v0

    :goto_3
    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3fb

    move v6, v0

    :goto_4
    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/googlenav/bL;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_5
    new-instance v5, Lx/q;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, p1}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    sget-char v3, Lcom/google/googlenav/ui/aV;->ai:C

    goto :goto_2

    :cond_4
    const/16 v0, 0x3f6

    move v6, v0

    goto :goto_4

    :cond_5
    move-object v4, v2

    goto :goto_5

    :cond_6
    move-object v3, v0

    goto :goto_3
.end method

.method static synthetic a(Lh/dC;)Li/aE;
    .locals 1

    iget-object v0, p0, Lh/dC;->b:Li/aE;

    return-object v0
.end method

.method private a(Li/x;)Z
    .locals 2

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Li/n;

    if-eqz v0, :cond_2

    check-cast p1, Li/n;

    invoke-virtual {p1}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/dC;->b(Lcom/google/googlenav/layer/s;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lh/dC;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/layer/s;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LayerWikipedia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x211

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->ak:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v4}, Lcom/google/googlenav/bL;->N()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f0

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private d(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x20a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->ap:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    invoke-direct {p0}, Lh/dC;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private e(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x215

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->al:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v4}, Lcom/google/googlenav/bL;->M()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private f(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x212

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->aB:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v4}, Lcom/google/googlenav/bL;->I()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f3

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private g(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x214

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->aw:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v4}, Lcom/google/googlenav/bL;->I()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f4

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private h()LI/n;
    .locals 1

    new-instance v0, Lh/av;

    invoke-direct {v0, p0}, Lh/av;-><init>(Lh/dC;)V

    return-object v0
.end method

.method private h(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x208

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->c:Lk/j;

    sget-char v4, Lcom/google/googlenav/ui/aV;->ay:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->a:Lcom/google/googlenav/bL;

    invoke-interface {v4}, Lcom/google/googlenav/bL;->J()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lh/dC;->d:LaB/f;

    :goto_0
    new-instance v5, Lx/q;

    const/16 v6, 0x3f7

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method private i(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/dC;->a(Lcom/google/googlenav/layer/s;)Lcom/google/googlenav/ui/view/android/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private j(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const-string v1, "LayerWikipedia"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/dC;->a(Lcom/google/googlenav/layer/s;)Lcom/google/googlenav/ui/view/android/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {v0}, Li/aE;->E()Li/aQ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/dC;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh/dC;->d()V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    iget v1, p0, Lh/dC;->e:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {p0, v0}, Lh/dC;->b(Li/aE;)Lcom/google/googlenav/ui/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bv;->b()V

    invoke-virtual {p0}, Lh/dC;->v()V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lh/dC;->v()V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh/dC;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/dC;->k:I

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lh/dC;->e:I

    new-instance v7, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v7, v1, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {v1}, Li/aE;->J()Ljava/util/Vector;

    move-result-object v8

    move v9, v11

    :goto_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Li/x;

    move-object v4, v0

    invoke-direct {p0, v4}, Lh/dC;->a(Li/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/view/android/q;

    invoke-virtual {v4}, Li/x;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4}, Li/x;->u()Lk/l;

    move-result-object v4

    check-cast v4, LaB/f;

    iget-object v5, p0, Lh/dC;->d:LaB/f;

    new-instance v6, Lx/q;

    const/16 v10, 0x3e9

    invoke-direct {v6, v10, v9, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {v7, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v7}, Lh/dC;->e(Lcom/google/googlenav/ui/view/android/L;)V

    :cond_2
    invoke-direct {p0, v7}, Lh/dC;->f(Lcom/google/googlenav/ui/view/android/L;)V

    invoke-direct {p0, v7}, Lh/dC;->g(Lcom/google/googlenav/ui/view/android/L;)V

    invoke-direct {p0, v7}, Lh/dC;->i(Lcom/google/googlenav/ui/view/android/L;)V

    invoke-virtual {p0, v7}, Lh/dC;->b(Lcom/google/googlenav/ui/view/android/L;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v7}, Lh/dC;->c(Lcom/google/googlenav/ui/view/android/L;)V

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v7}, Lh/dC;->a(Lcom/google/googlenav/ui/view/android/L;)V

    :cond_4
    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v7}, Lh/dC;->h(Lcom/google/googlenav/ui/view/android/L;)V

    :cond_5
    invoke-direct {p0, v7}, Lh/dC;->j(Lcom/google/googlenav/ui/view/android/L;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v7}, Lh/dC;->d(Lcom/google/googlenav/ui/view/android/L;)V

    :cond_6
    iget-object v1, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {v1}, Li/aE;->K()Ljava/util/Vector;

    move-result-object v8

    move v9, v11

    :goto_2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Li/x;

    move-object v4, v0

    invoke-direct {p0, v4}, Lh/dC;->a(Li/x;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/google/googlenav/ui/view/android/q;

    invoke-virtual {v4}, Li/x;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4}, Li/x;->u()Lk/l;

    move-result-object v4

    check-cast v4, LaB/f;

    new-instance v6, Lx/q;

    const/16 v5, 0x3ea

    invoke-direct {v6, v5, v9, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v5, v3

    invoke-direct/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {v7, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    return-object v7
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/dC;->k:I

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/dC;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dC;->j:Lx/J;

    iget-object v0, p0, Lh/dC;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0f003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xb8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {v1}, Li/aE;->O()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    new-instance v1, Lh/au;

    invoke-direct {v1, p0}, Lh/au;-><init>(Lh/dC;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lh/aw;

    invoke-direct {v1, p0}, Lh/aw;-><init>(Lh/dC;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    iput v0, p0, Lh/dC;->e:I

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    const/16 v1, 0x261

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lh/dC;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/aV;->ai:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    check-cast v3, LaB/f;

    iget-object v4, p0, Lh/dC;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v4

    sget-char v5, Lcom/google/googlenav/ui/aV;->ar:C

    invoke-interface {v4, v5}, Lk/j;->e(C)Lk/l;

    move-result-object v4

    check-cast v4, LaB/f;

    new-instance v5, Lx/q;

    const/16 v6, 0x3ed

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LaB/f;LaB/f;Lx/q;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Li/aE;)V
    .locals 0

    iput-object p1, p0, Lh/dC;->b:Li/aE;

    invoke-virtual {p0}, Lh/dC;->u()V

    return-void
.end method

.method b(Li/aE;)Lcom/google/googlenav/ui/bv;
    .locals 4

    iget-object v0, p0, Lh/dC;->f:Lcom/google/googlenav/ui/bv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bv;

    iget-object v1, p0, Lh/dC;->g:Lh/eY;

    iget-object v2, p0, Lh/dC;->h:LaU/a;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/googlenav/ui/bv;-><init>(Lh/eY;Li/aE;LaU/a;I)V

    iput-object v0, p0, Lh/dC;->f:Lcom/google/googlenav/ui/bv;

    :cond_0
    iget-object v0, p0, Lh/dC;->f:Lcom/google/googlenav/ui/bv;

    return-object v0
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lh/eR;->b()V

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/dC;->f:Lcom/google/googlenav/ui/bv;

    return-void
.end method

.method b(Lcom/google/googlenav/ui/view/android/L;)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const-string v1, "__LAYERS"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/layer/h;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lcom/google/googlenav/layer/s;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6}, Lcom/google/googlenav/layer/s;->l()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lh/dC;->b(Lcom/google/googlenav/layer/s;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lh/dC;->a(Lcom/google/googlenav/layer/s;)Lcom/google/googlenav/ui/view/android/q;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lh/dC;->v()V

    return-void
.end method
