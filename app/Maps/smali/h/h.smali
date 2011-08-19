.class public Lh/h;
.super Lh/eR;


# instance fields
.field protected a:Lu/v;

.field protected b:Lcom/google/googlenav/aB;

.field private c:Z


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/h;->a:Lu/v;

    iput-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    return-void
.end method

.method private a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->W:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/h;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private h()Lx/B;
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->az()I

    move-result v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v1}, Lu/v;->V()I

    move-result v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v5}, Lu/v;->aa()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v5, v2}, Lu/v;->l(I)Lu/e;

    move-result-object v5

    invoke-virtual {v5}, Lu/e;->z()I

    move-result v5

    iget-object v6, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v6, v5}, Lu/v;->j(I)Lu/b;

    move-result-object v6

    if-eqz v6, :cond_0

    aget-boolean v7, v1, v5

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    aput-boolean v7, v1, v5

    iget-object v7, p0, Lh/h;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v7

    iget-object v8, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v8, v2}, Lu/v;->l(I)Lu/e;

    move-result-object v8

    invoke-virtual {v8}, Lu/e;->t()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v7

    invoke-static {v7}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lu/b;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/googlenav/ui/av;->O:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v9}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    iget-object v9, p0, Lh/h;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lu/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lu/b;->c()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    iget-object v8, p0, Lh/h;->g:Lh/eY;

    invoke-virtual {v8}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/googlenav/g;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x5b

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v7

    :goto_2
    new-instance v8, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v8}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    sget-char v8, Lcom/google/googlenav/ui/aV;->R:C

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lh/h;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    iget-object v8, p0, Lh/h;->g:Lh/eY;

    invoke-virtual {v8}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/googlenav/g;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    :goto_3
    invoke-virtual {v7}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v6}, Lu/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lu/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    sget-char v6, Lcom/google/googlenav/ui/aV;->W:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lh/h;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v7}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v7

    goto/16 :goto_2

    :cond_4
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    goto :goto_3

    :cond_5
    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/h;->G_()I

    move-result v1

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method

.method private j()Lx/B;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v5, v8

    :goto_0
    iget-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/D;->j()Ljava/lang/String;

    move-result-object v0

    move v2, v8

    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_1

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/googlenav/ui/av;->O:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/googlenav/D;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/googlenav/D;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lh/h;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v0, 0x42d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/googlenav/D;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lh/h;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_2
    new-instance v0, Lx/B;

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v9, v1, v9}, Lx/B;-><init>(Ljava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;)V

    return-object v0

    :cond_3
    move v2, v8

    goto :goto_2
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/h;->a:Lu/v;

    iget-object v1, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {p0}, Lh/h;->v()V

    iput-object v0, p0, Lh/h;->a:Lu/v;

    iput-object v1, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {p0}, Lh/h;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/h;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/h;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/h;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/h;->c:Z

    iget-object v0, p0, Lh/h;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/h;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/h;->a(Lx/J;)V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/h;->e()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/h;->j:Lx/J;

    iget-object v0, p0, Lh/h;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aB;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh/h;->b(Lcom/google/googlenav/aB;)V

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "al"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lh/h;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "loadAgencyUrl"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lu/v;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh/h;->b(Lu/v;)V

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lh/h;->a:Lu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v0, p2}, Lu/v;->j(I)Lu/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lh/h;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/D;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lh/h;->a:Lu/v;

    invoke-virtual {v0, p2}, Lu/v;->j(I)Lu/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/h;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/D;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/h;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x3f8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    iput-object v0, p0, Lh/h;->a:Lu/v;

    return-void
.end method

.method public b(Lcom/google/googlenav/aB;)V
    .locals 1

    iput-object p1, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/h;->a:Lu/v;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ac"

    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/h;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-static {p1}, LR/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Lcom/google/googlenav/p;Z)V

    return-void
.end method

.method public b(Lu/v;)V
    .locals 1

    iput-object p1, p0, Lh/h;->a:Lu/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/h;->b:Lcom/google/googlenav/aB;

    return-void
.end method

.method protected e()Lx/B;
    .locals 1

    iget-object v0, p0, Lh/h;->a:Lu/v;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/h;->h()Lx/B;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lh/h;->j()Lx/B;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh/h;->c:Z

    return v0
.end method
