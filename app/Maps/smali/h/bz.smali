.class public Lh/bz;
.super Lh/eR;


# instance fields
.field a:Lcom/google/googlenav/layer/h;

.field private final b:Lcom/google/googlenav/bL;

.field private c:Lk/j;

.field private d:Lcom/google/googlenav/ui/bB;

.field private final e:Ljava/util/Vector;


# direct methods
.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/bz;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private m()Ljava/util/Vector;
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x277

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->d()I

    move-result v4

    iget-object v5, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Lcom/google/googlenav/layer/h;->d(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v6}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->b()Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-object v7, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    move-object v4, v10

    :goto_3
    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    if-eqz v5, :cond_5

    move-object v4, v10

    :goto_4
    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->b(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    if-eqz v5, :cond_6

    const/16 v4, 0x2f2

    :goto_5
    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lh/bz;->d:Lcom/google/googlenav/ui/bB;

    iget-object v7, p0, Lh/bz;->d:Lcom/google/googlenav/ui/bB;

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/googlenav/ui/bB;->e(C)Lk/l;

    move-result-object v4

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lh/bz;->c:Lk/j;

    sget-char v6, Lcom/google/googlenav/ui/aV;->ar:C

    invoke-interface {v4, v6}, Lk/j;->e(C)Lk/l;

    move-result-object v4

    goto :goto_4

    :cond_6
    const/16 v4, 0x2f1

    goto :goto_5
.end method

.method private n()Lx/n;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x3aa

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lx/n;

    invoke-direct {v1, v0, v3, v3, v3}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/bz;->h()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/bz;->j:Lx/J;

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/bz;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    iget-object v0, p0, Lh/bz;->j:Lx/J;

    if-nez v0, :cond_0

    iget v0, p0, Lh/bz;->k:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh/bz;->d()V

    iget v0, p0, Lh/bz;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/bz;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/bz;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/bz;->k:I

    iget-object v0, p0, Lh/bz;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lh/bz;->e:Ljava/util/Vector;

    const-string v1, "__ROOT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/bz;->o()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x44

    const/4 v3, 0x3

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    iput v3, p0, Lh/bz;->k:I

    move v0, v6

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    iget-object v1, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lh/bz;->b:Lcom/google/googlenav/bL;

    new-instance v3, Lcom/google/googlenav/V;

    invoke-direct {v3}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v3, 0x3a8

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    iput v4, p0, Lh/bz;->k:I

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    iget-object v1, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lh/bz;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/bz;->o()V

    iput v3, p0, Lh/bz;->k:I

    move v0, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "b"

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lh/bz;->v()V

    iget-object v0, p0, Lh/bz;->g:Lh/eY;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Lh/eY;->a(Ljava/lang/String;)V

    iput v3, p0, Lh/bz;->k:I

    move v0, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25a -> :sswitch_2
        0x2f1 -> :sswitch_1
        0x2f2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    invoke-super {p0}, Lh/eR;->b()V

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lh/bz;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    iput v2, p0, Lh/bz;->k:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/bz;->e:Ljava/util/Vector;

    iget-object v1, p0, Lh/bz;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-direct {p0}, Lh/bz;->o()V

    const/4 v0, 0x3

    iput v0, p0, Lh/bz;->k:I

    goto :goto_0
.end method

.method protected h()Lx/B;
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lh/bz;->a:Lcom/google/googlenav/layer/h;

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "__ROOT"

    invoke-direct {p0}, Lh/bz;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0x62

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v0, Lx/B;

    const/16 v1, 0xd

    invoke-direct {p0}, Lh/bz;->m()Ljava/util/Vector;

    move-result-object v4

    invoke-direct {p0}, Lh/bz;->n()Lx/n;

    move-result-object v5

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->c()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method
