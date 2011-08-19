.class public Li/aP;
.super Li/H;


# instance fields
.field c:Ljava/util/List;

.field private d:[Lax/e;

.field private e:Lx/B;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 3

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lax/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/w;->E:Lax/e;

    aput-object v2, v0, v1

    iput-object v0, p0, Li/aP;->d:[Lax/e;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Li/aP;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lv/d;ILjava/util/Vector;Ljava/util/Vector;Z)V
    .locals 4

    iget-object v0, p0, Li/aP;->a:Li/x;

    check-cast v0, Li/av;

    invoke-virtual {v0}, Li/av;->V()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lv/v;->b()Law/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lv/v;->b()Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {p0}, Li/aP;->d()Lcom/google/googlenav/ui/bu;

    move-result-object v2

    invoke-virtual {v0}, Li/av;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v3

    invoke-static {v1, v2, v3}, Li/bk;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x57a

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    if-eqz p5, :cond_1

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->i(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v0}, Li/av;->bq()Lx/x;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lx/x;)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->bw:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {p1}, Lv/d;->d()Lf/h;

    move-result-object v2

    invoke-virtual {p0}, Li/aP;->d()Lcom/google/googlenav/ui/bu;

    move-result-object v3

    invoke-static {v2, v3, v1}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    goto :goto_0
.end method

.method private f()Ljava/util/Vector;
    .locals 13

    const/16 v12, 0x14

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v1, p0, Li/aP;->a:Li/x;

    move-object v0, v1

    check-cast v0, Li/av;

    move-object v7, v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v7}, Li/av;->V()Lv/t;

    move-result-object v8

    invoke-virtual {p0}, Li/aP;->d()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/aP;->d()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-virtual {p0}, Li/aP;->d()Lcom/google/googlenav/ui/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    invoke-interface {v1, v2}, Lv/j;->a(Lf/h;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Li/aP;->c:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Li/aP;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7}, Li/av;->bp()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v10

    :goto_1
    if-ge v3, v9, :cond_4

    invoke-interface {v8}, Lv/t;->i()Lv/j;

    move-result-object v2

    iget-object v1, p0, Li/aP;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lv/d;->g()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v1}, Lv/j;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Li/aP;->c:Ljava/util/List;

    goto :goto_0

    :cond_2
    sub-int v1, v9, v11

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Li/aP;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    move v6, v11

    :goto_3
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Li/aP;->a(Lv/d;ILjava/util/Vector;Ljava/util/Vector;Z)V

    goto :goto_2

    :cond_3
    move v6, v10

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v7, v5}, Li/av;->a(Ljava/util/Vector;)V

    :cond_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v11

    :goto_4
    sget-object v2, Lcom/google/googlenav/ui/av;->aw:Lcom/google/googlenav/ui/av;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lv/t;->h()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x3f6

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-static {v1, v3}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v5, v10

    :goto_6
    array-length v6, v1

    if-ge v5, v6, :cond_9

    aget-object v6, v1, v5

    invoke-static {v6, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    move v1, v10

    goto :goto_4

    :cond_8
    const/16 v3, 0x3ee

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/login/j;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3f2

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->q()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->l()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x3f3

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    return-object v4
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Li/aP;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Li/aP;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public al_()Lx/J;
    .locals 3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Li/aP;->c()Lx/B;

    move-result-object v1

    iget-object v2, p0, Li/aP;->a:Li/x;

    invoke-virtual {v0, v1, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/aP;->e:Lx/B;

    return-void
.end method

.method protected c()Lx/B;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lx/n;

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3de

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x57b

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3, v3}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lx/n;

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3ef

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3, v3}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    move-object v5, v0

    :goto_1
    iget-object v0, p0, Li/aP;->e:Lx/B;

    if-nez v0, :cond_0

    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Li/aP;->e()I

    move-result v1

    invoke-direct {p0}, Li/aP;->f()Ljava/util/Vector;

    move-result-object v4

    iget-object v6, p0, Li/aP;->d:[Lax/e;

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput-object v0, p0, Li/aP;->e:Lx/B;

    :goto_2
    iget-object v0, p0, Li/aP;->e:Lx/B;

    return-object v0

    :cond_0
    iget-object v0, p0, Li/aP;->e:Lx/B;

    invoke-virtual {v0, v5}, Lx/B;->a(Lx/n;)V

    iget-object v0, p0, Li/aP;->e:Lx/B;

    invoke-direct {p0}, Li/aP;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_2

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method d()Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object p0, p0, Li/aP;->a:Li/x;

    check-cast p0, Li/av;

    invoke-virtual {p0}, Li/av;->bo()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    return-object v0
.end method

.method protected e()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
