.class public Li/r;
.super Li/bq;


# instance fields
.field private b:Lx/B;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/bq;-><init>(Li/x;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/r;->e()Li/M;

    move-result-object v0

    invoke-virtual {v0}, Li/M;->bo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/M;->ag_()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Li/M;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li/M;->af_()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private e()Li/M;
    .locals 0

    iget-object p0, p0, Li/r;->a:Li/x;

    check-cast p0, Li/M;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)Lx/J;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Li/r;->e()Li/M;

    move-result-object v0

    invoke-virtual {v0}, Li/M;->P()Z

    move-result v1

    invoke-virtual {v0}, Li/M;->bo()Z

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Li/M;->bq()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x21c

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_8

    invoke-static {v3, v7}, Li/P;->a(Ljava/util/Vector;Z)V

    :cond_1
    :goto_0
    const/16 v4, 0x3af

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25a

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/d;->q()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/d;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lr/d;->a:Lr/d;

    invoke-virtual {v4}, Lr/d;->f()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/16 v4, 0x107

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x19c

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_9

    const/16 v2, 0x3d5

    :goto_1
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->aM:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Li/M;->p()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/M;->b(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x34a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/labs/android/e;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x28d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Li/r;->b:Lx/B;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Li/M;->at()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v6}, Li/M;->f(Z)V

    iget-object v1, p0, Li/r;->b:Lx/B;

    invoke-direct {p0}, Li/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/B;->a(Ljava/lang/String;)V

    iget-object v1, p0, Li/r;->b:Lx/B;

    invoke-virtual {v1, v3}, Lx/B;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Li/r;->b:Lx/B;

    invoke-virtual {p0, p1}, Li/r;->b(Lcom/google/googlenav/c;)Lx/G;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/B;->a(Lx/G;)V

    iget-object v1, p0, Li/r;->b:Lx/B;

    invoke-virtual {p0, p1, v6}, Li/r;->a(Lcom/google/googlenav/c;Z)Lx/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/B;->b(Lx/n;)V

    :cond_7
    :goto_3
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/r;->b:Lx/B;

    invoke-virtual {v1, v2, v0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/c;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Li/M;->bB()Z

    move-result v4

    invoke-static {p1, v3, v7, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;ZZ)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x3d4

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Li/M;->af_()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v2, v8}, Lcom/google/googlenav/ui/e;->b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0}, Li/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Li/r;->b(Lcom/google/googlenav/c;)Lx/G;

    move-result-object v2

    invoke-virtual {p0, p1, v6}, Li/r;->a(Lcom/google/googlenav/c;Z)Lx/n;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lx/B;->a(Ljava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;)Lx/B;

    move-result-object v1

    iput-object v1, p0, Li/r;->b:Lx/B;

    goto :goto_3
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/r;->b:Lx/B;

    return-void
.end method

.method protected b(Lcom/google/googlenav/c;)Lx/G;
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Li/r;->e()Li/M;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Li/M;->bo()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Li/M;->ag_()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->U()Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v4, v8

    sget-object v6, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    move v5, v7

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    sget-object v7, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li/M;->af_()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move v5, v8

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_6

    aget-object v6, v4, v5

    invoke-static {v6}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v5

    sget-object v7, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Li/M;->P()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x228

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Li/M;->V()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Li/M;->U()Lk/l;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->b(Lk/l;)Lcom/google/googlenav/ui/aQ;

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v4

    invoke-virtual {v0}, Li/M;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v5

    invoke-static {v4, v5, v1}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    :cond_6
    invoke-virtual {v0}, Li/M;->br()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1, v2}, Li/P;->f(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_7
    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v0}, Li/M;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bx;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/aQ;->c(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v0}, Li/M;->bt()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->b(Z)Lcom/google/googlenav/ui/aQ;

    new-instance v0, Lx/G;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v0

    :cond_8
    invoke-virtual {v0}, Li/M;->af_()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v5, v4

    if-lez v5, :cond_9

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->U()Z

    move-result v5

    if-nez v5, :cond_9

    aget-object v5, v4, v8

    sget-object v6, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    array-length v5, v4

    if-le v5, v7, :cond_4

    aget-object v4, v4, v7

    sget-object v5, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const/16 v4, 0x43f

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method
