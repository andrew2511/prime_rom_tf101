.class public Li/bq;
.super Li/K;


# instance fields
.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, Li/K;-><init>(Li/x;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Li/bq;->b:Ljava/util/Hashtable;

    return-void
.end method

.method private static a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;
    .locals 3

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->v()Lk/j;

    move-result-object v0

    :goto_0
    sget-char v1, Lcom/google/googlenav/ui/aV;->as:C

    sparse-switch p0, :sswitch_data_0

    :goto_1
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    invoke-static {p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_3

    sget-object v1, Lcom/google/googlenav/ui/av;->s:Lcom/google/googlenav/ui/av;

    :goto_2
    invoke-static {p4, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->w()Lk/j;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    sget-char v1, Lcom/google/googlenav/ui/aV;->aV:C

    goto :goto_1

    :sswitch_1
    sget-char v1, Lcom/google/googlenav/ui/aV;->aW:C

    goto :goto_1

    :sswitch_2
    sget-char v1, Lcom/google/googlenav/ui/aV;->aX:C

    goto :goto_1

    :sswitch_3
    sget-char v1, Lcom/google/googlenav/ui/aV;->aY:C

    goto :goto_1

    :sswitch_4
    sget-char v1, Lcom/google/googlenav/ui/aV;->bb:C

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/googlenav/ui/av;->t:Lcom/google/googlenav/ui/av;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x258 -> :sswitch_3
        0x25b -> :sswitch_1
        0x901 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Li/bq;)Li/aw;
    .locals 1

    invoke-direct {p0}, Li/bq;->g()Li/aw;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 9

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    invoke-virtual {v0}, Li/bl;->bP()Li/br;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x0

    new-instance v0, Li/aZ;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/aZ;-><init>(Li/bq;Ljava/util/Vector;ILjava/lang/String;Lcom/google/googlenav/c;)V

    invoke-virtual {v6, v7, v8, v0}, Li/br;->a(ILaU/a;Li/o;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_1
.end method

.method private static a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V
    .locals 1

    new-instance v0, Lx/F;

    invoke-direct {v0, p1}, Lx/F;-><init>(Lcom/google/googlenav/ui/aI;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lx/F;

    new-instance v1, Lx/b;

    invoke-direct {v1, p1, p2}, Lx/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lx/F;-><init>(Lx/b;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Li/bq;)Li/bl;
    .locals 1

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Li/bq;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Li/bq;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()Lx/K;
    .locals 0

    iget-object p0, p0, Li/bq;->a:Li/x;

    check-cast p0, Lx/K;

    return-object p0
.end method

.method private e()Li/bl;
    .locals 0

    iget-object p0, p0, Li/bq;->a:Li/x;

    check-cast p0, Li/bl;

    return-object p0
.end method

.method private e(Lcom/google/googlenav/c;)Lx/J;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c;->g(I)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Li/bq;->b()Lx/z;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-direct {p0}, Li/bq;->d()Lx/K;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;Lx/K;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    new-instance v1, Li/an;

    invoke-direct {v1, p0, p1}, Li/an;-><init>(Li/bq;Lcom/google/googlenav/c;)V

    new-instance v2, Li/ab;

    iget-object v3, p0, Li/bq;->a:Li/x;

    invoke-virtual {v3}, Li/x;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Li/ab;-><init>(LaU/a;Li/s;Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/z;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private f()Li/q;
    .locals 0

    iget-object p0, p0, Li/bq;->a:Li/x;

    check-cast p0, Li/q;

    return-object p0
.end method

.method private g()Li/aw;
    .locals 0

    iget-object p0, p0, Li/bq;->a:Li/x;

    check-cast p0, Li/aw;

    return-object p0
.end method

.method private g(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/google/googlenav/c;)Lx/J;
    .locals 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v13

    iget-object v0, p0, Li/bq;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/B;

    if-nez v0, :cond_0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x193

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/googlenav/bF;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bI()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bV()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->ca()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bx;->f:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    new-instance v0, Lx/B;

    new-instance v3, Lx/G;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v2, v6}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    const/4 v2, 0x2

    iput v2, v0, Lx/B;->p:I

    iget-object v2, p0, Li/bq;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v13, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v2, v1}, Li/x;->f(Z)V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/bF;->aa()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bL()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private i(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->as()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bk;->a()Lcom/google/googlenav/ui/H;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/H;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/H;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    iget-object v2, v2, Li/x;->h:Lf/v;

    invoke-virtual {v2}, Lf/v;->d()Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/H;->a(Lf/h;)Lcom/google/googlenav/ui/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/H;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/H;

    move-result-object v0

    new-instance v1, Lf/h;

    iget-object v2, p0, Li/bq;->a:Li/x;

    iget-object v2, v2, Li/x;->h:Lf/v;

    invoke-virtual {v2}, Lf/v;->n()I

    move-result v2

    iget-object v3, p0, Li/bq;->a:Li/x;

    iget-object v3, v3, Li/x;->h:Lf/v;

    invoke-virtual {v3}, Lf/v;->o()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lf/h;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/H;->b(Lf/h;)Lcom/google/googlenav/ui/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/H;->a()Lcom/google/googlenav/ui/bk;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bk;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private j(Lcom/google/googlenav/c;)Lx/J;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x258

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Li/bq;->k(Lcom/google/googlenav/c;)Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private k(Lcom/google/googlenav/c;)Ljava/util/Vector;
    .locals 4

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {p1}, Li/bl;->k(Lcom/google/googlenav/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Li/P;->o(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->X()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Li/P;->b(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_1
    invoke-virtual {v0, p1}, Li/bl;->d(Lcom/google/googlenav/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v1}, Li/P;->c(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_2
    invoke-static {p1, v1}, Li/P;->h(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-static {p1, v1}, Li/P;->l(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-static {p1, v1}, Li/P;->j(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-static {p1, v1}, Li/P;->k(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-virtual {v0}, Li/bl;->b()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    invoke-static {p1, v1}, Li/P;->i(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_3
    invoke-static {p1, v1}, Li/P;->m(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-static {p1, v1, v0}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Li/x;)V

    invoke-virtual {v0}, Li/bl;->bA()Z

    move-result v0

    invoke-static {p1, v1, v0}, Li/P;->b(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    invoke-static {p1, v1}, Li/P;->n(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    return-object v1
.end method

.method private l(Lcom/google/googlenav/c;)Lx/J;
    .locals 9

    const/4 v1, 0x2

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v2

    const/4 v5, 0x3

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v0, v1, v5}, Law/e;->e(II)Law/e;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/bD;->a(Law/e;)Lcom/google/googlenav/bD;

    move-result-object v6

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v7

    invoke-virtual {v7}, Li/bl;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v6, v3, v7, v8}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/bD;Lx/U;Lcom/google/googlenav/ui/bu;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lx/B;

    const/16 v2, 0x33f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private m(Lcom/google/googlenav/c;)Lx/J;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x2d9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Li/bq;->n(Lcom/google/googlenav/c;)Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private n(Lcom/google/googlenav/c;)Ljava/util/Vector;
    .locals 5

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Li/bl;->a(Lf/N;)Z

    invoke-virtual {v0, v1}, Li/bl;->b(Lf/N;)Z

    invoke-virtual {v0, v1}, Li/bl;->a(Lf/N;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Li/bl;->b(Lf/N;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x268

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 v4, 0x25c

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/google/googlenav/c;->g(I)V

    :cond_0
    invoke-virtual {v0, v1}, Li/bl;->b(Lf/N;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x26a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25f

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c;->g(I)V

    :cond_1
    const/16 v0, 0x1a4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25b

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c;->g(I)V

    return-object v2

    :cond_2
    const/16 v3, 0x267

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private o(Lcom/google/googlenav/c;)Lx/J;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x40c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x2d9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private p(Lcom/google/googlenav/c;)Lx/J;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v4, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Z)V

    new-instance v0, Lx/B;

    const/4 v1, 0x0

    const/16 v2, 0xfe

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private q(Lcom/google/googlenav/c;)Lx/J;
    .locals 1

    invoke-direct {p0}, Li/bq;->f()Li/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/q;->b(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private r(Lcom/google/googlenav/c;)Lx/J;
    .locals 2

    invoke-direct {p0}, Li/bq;->f()Li/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li/q;->a(Lcom/google/googlenav/c;Z)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method private s(Lcom/google/googlenav/c;)Lx/J;
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    invoke-virtual {v0}, Li/bl;->bB()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->d()[Lcom/google/googlenav/c;

    move-result-object v1

    new-instance v4, Ljava/util/Vector;

    array-length v2, v1

    invoke-direct {v4, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    aget-object v5, v1, v2

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->bw:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/google/googlenav/ui/av;->bx:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v7}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    const/16 v6, 0x4b1

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x224

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    new-instance v0, Lx/B;

    const/4 v1, 0x2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x226

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1
.end method

.method private t(Lcom/google/googlenav/c;)Lx/J;
    .locals 9

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x1de

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->as()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;)[Lcom/google/googlenav/ui/aI;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "http://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, LR/a;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v8

    aget-object v6, v0, v6

    invoke-static {v3, v4, v6}, Li/bq;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v0, v5

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v0, v0, v5

    sget-object v4, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {v3, v0}, Li/bq;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_3
    new-instance v0, Lx/F;

    invoke-direct {v0, v2, v1}, Lx/F;-><init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v2

    :cond_4
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3, v0, v2}, Li/bq;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lx/y;

    invoke-direct {v0, v1, v8, v3}, Lx/y;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aQ()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Li/bq;->a(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx/F;

    invoke-direct {v0, v2, v1}, Lx/F;-><init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v4, "<?xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v3, 0x453

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x270

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;

    move-result-object v0

    new-instance v2, Lx/i;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->W()Z

    move-result v3

    if-eqz v3, :cond_8

    new-array v3, v8, [Lax/e;

    sget-object v4, Lcom/google/googlenav/ui/w;->D:Lax/e;

    aput-object v4, v3, v6

    :goto_2
    invoke-direct {v2, v1, v8, v0, v3}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Li/bq;->a:Li/x;

    invoke-virtual {v0, v2, v1}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v3, v1

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {v3, v0}, Li/bq;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    new-instance v0, Lx/F;

    invoke-direct {v0, v2, v1}, Lx/F;-><init>([Lcom/google/googlenav/ui/aI;[Lx/b;)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)Lx/J;
    .locals 21

    invoke-direct/range {p0 .. p0}, Li/bq;->e()Li/bl;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v20

    invoke-static {}, Lcom/google/googlenav/bJ;->a()Lcom/google/googlenav/bJ;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/c;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v6

    invoke-static {v5, v6}, LQ/h;->a(LH/f;Lf/h;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/16 v6, 0xfa

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->d(Z)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bD()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/c;)Z

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->e(Z)V

    :cond_1
    invoke-virtual {v11}, Li/bl;->bJ()Ljava/util/Hashtable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li/E;

    if-nez v5, :cond_1a

    new-instance v5, Li/E;

    invoke-static/range {p1 .. p1}, Li/P;->h(Lcom/google/googlenav/c;)[I

    move-result-object v7

    invoke-static/range {p1 .. p1}, Li/P;->g(Lcom/google/googlenav/c;)[I

    move-result-object v8

    invoke-static/range {p1 .. p1}, Li/y;->a(Lcom/google/googlenav/c;)I

    move-result v9

    invoke-direct {v5, v7, v8, v9}, Li/E;-><init>([I[II)V

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v5

    :goto_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-static/range {p1 .. p1}, Li/bl;->j(Lcom/google/googlenav/c;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-static {v0, v1, v2}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;I)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bD()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Li/bq;->e()Li/bl;

    move-result-object v7

    invoke-virtual {v7}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v7

    move-object v0, v6

    move v1, v5

    move-object v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Ljava/util/Vector;ILx/U;Lcom/google/googlenav/c;)I

    :cond_4
    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v8}, Li/E;->c()Z

    move-result v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Z)V

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->d(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v5

    invoke-static {v5, v6, v11}, Li/P;->a(Lcom/google/googlenav/aB;Ljava/util/Vector;Li/x;)V

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v7

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v9

    iget-object v10, v11, Li/bl;->N:LaD/n;

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->O()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->p()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v8}, Li/E;->d()Z

    move-result v7

    invoke-virtual {v8}, Li/E;->e()Z

    move-result v9

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move v3, v7

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;ZZ)V

    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aA()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/google/googlenav/ui/H;

    invoke-direct {v5}, Lcom/google/googlenav/ui/H;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aD()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/H;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/H;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/H;->a()Lcom/google/googlenav/ui/bk;

    move-result-object v5

    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v9, 0x3b

    invoke-virtual {v7, v9}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bk;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->R()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->aj()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    invoke-static {v0, v1, v2}, Li/aL;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lcom/google/googlenav/ui/aG;)V

    :cond_7
    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->bD()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Li/bq;->e()Li/bl;

    move-result-object v7

    invoke-virtual {v7}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v7

    move-object v0, v6

    move v1, v5

    move-object v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Ljava/util/Vector;ILx/U;Lcom/google/googlenav/c;)I

    :cond_8
    invoke-static/range {p1 .. p1}, Li/bl;->k(Lcom/google/googlenav/c;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Li/bq;->a(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_9
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a([I)I

    move-result v5

    const/16 v7, 0x1c

    if-ne v5, v7, :cond_15

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;Li/E;)V

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;)V

    :goto_2
    invoke-static/range {p1 .. p1}, Li/P;->i(Lcom/google/googlenav/c;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->h(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->l(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_a
    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Li/bq;->e()Li/bl;

    move-result-object v7

    invoke-virtual {v7}, Li/bl;->bB()Z

    move-result v7

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;ZZ)V

    invoke-static/range {p1 .. p1}, Li/P;->i(Lcom/google/googlenav/c;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->j(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->k(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    invoke-virtual {v11}, Li/bl;->b()I

    move-result v5

    const/16 v7, 0xf

    if-eq v5, v7, :cond_b

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->i(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_b
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->m(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v11

    invoke-static {v0, v1, v2}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Li/x;)V

    invoke-virtual {v11}, Li/bl;->bA()Z

    move-result v5

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-static {v0, v1, v2}, Li/P;->b(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->n(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_c
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/p;->a(Lcom/google/googlenav/c;Ljava/util/Vector;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->a:Li/x;

    move-object v5, v0

    const/16 v7, 0x1c

    invoke-virtual {v5, v7}, Li/x;->h(I)V

    :cond_d
    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/bu;)V

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Li/bl;->h(Lcom/google/googlenav/c;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-direct/range {p0 .. p0}, Li/bq;->g()Li/aw;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Li/aw;->i(Lcom/google/googlenav/c;)I

    move-result v7

    invoke-direct/range {p0 .. p0}, Li/bq;->g()Li/aw;

    move-result-object v5

    invoke-virtual {v5}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v5

    check-cast v5, Lcom/google/googlenav/c;

    const/16 v8, 0x2bc

    const/16 v9, 0x3e7

    invoke-static {v9}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Li/P;->a(Lcom/google/googlenav/c;IILjava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->b:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx/B;

    invoke-static/range {p1 .. p1}, Li/P;->i(Lcom/google/googlenav/c;)Z

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Li/bq;->a(Lcom/google/googlenav/c;Z)Lx/n;

    move-result-object v17

    if-eqz v5, :cond_18

    invoke-virtual {v11}, Li/bl;->at()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Li/bl;->f(Z)V

    invoke-virtual {v5, v6}, Lx/B;->a(Ljava/util/Vector;)V

    invoke-direct/range {p0 .. p1}, Li/bq;->g(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx/B;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Li/bq;->b(Lcom/google/googlenav/c;)Lx/G;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx/B;->a(Lx/G;)V

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lx/B;->b(Lx/n;)V

    :cond_f
    :goto_4
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->a:Li/x;

    move-object v7, v0

    invoke-virtual {v6, v5, v7}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v5

    return-object v5

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->o()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_11
    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/16 v9, 0xf

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_19

    new-instance v10, Lcom/google/googlenav/aA;

    invoke-virtual {v9}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/google/googlenav/aA;-><init>(Law/e;)V

    invoke-virtual {v8}, Li/E;->e()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v10, v7}, Lcom/google/googlenav/aA;->b(Ljava/util/Vector;)V

    :goto_5
    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    const/4 v7, 0x1

    :goto_6
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-static {v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    sget-object v9, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v10, v9}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    const/4 v9, 0x1

    :cond_12
    if-nez v7, :cond_13

    if-eqz v9, :cond_5

    :cond_13
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    sget-object v7, Lcom/google/googlenav/ui/bx;->d:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v10, v7}, Lcom/google/googlenav/aA;->a(Ljava/util/Vector;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;)V

    invoke-virtual {v11}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v5

    invoke-virtual {v11}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;Li/E;)V

    goto/16 :goto_2

    :cond_16
    sget-object v5, LD/b;->a:LD/b;

    invoke-virtual {v5}, LD/b;->d()Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->a:Li/x;

    move-object v5, v0

    instance-of v5, v5, Li/aw;

    if-eqz v5, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/c;->O()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {}, LaO/a;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-direct/range {p0 .. p1}, Li/bq;->i(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_17
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Li/bl;->f(Lcom/google/googlenav/c;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct/range {p0 .. p1}, Li/bq;->f(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_18
    new-instance v7, Lx/B;

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p1}, Li/bq;->g(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Li/bq;->b(Lcom/google/googlenav/c;)Lx/G;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->a:Li/x;

    move-object v5, v0

    invoke-virtual {v5}, Li/x;->H()[Lax/e;

    move-result-object v18

    const/16 v19, 0x0

    move-object v12, v6

    invoke-direct/range {v7 .. v19}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    const/4 v5, 0x2

    iput v5, v7, Lx/B;->p:I

    move-object/from16 v0, p0

    iget-object v0, v0, Li/bq;->b:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    goto/16 :goto_4

    :cond_19
    move v7, v10

    goto/16 :goto_6

    :cond_1a
    move-object v8, v5

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected a(Lcom/google/googlenav/c;Z)Lx/n;
    .locals 11

    const/16 v6, 0xd3

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Li/bl;->aV()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_0
    const/16 v3, 0x3b8

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3b9

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v2, v3, v4}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/google/googlenav/c;->g(I)V

    :cond_0
    invoke-virtual {v0, v1}, Li/bl;->a(Lf/N;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Li/bl;->b(Lf/N;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->C()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0xf

    const/4 v4, 0x4

    invoke-virtual {v0, v1}, Li/bl;->c(Lf/N;)Z

    move-result v1

    const/16 v5, 0x1a4

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v1, v5, v6}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {p0, p1}, Li/bq;->n(Lcom/google/googlenav/c;)Ljava/util/Vector;

    :goto_1
    iget-object v2, p0, Li/bq;->a:Li/x;

    invoke-virtual {v2}, Li/x;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/g;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v7

    :goto_2
    const/16 v5, 0x10

    const/16 v6, 0x5b

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x5c

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v4, v2, v6}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/google/googlenav/c;->g(I)V

    :cond_2
    :goto_3
    if-eqz p2, :cond_f

    const/16 v4, 0x901

    const/16 v5, 0x258

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x259

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v7, v5, v6}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/google/googlenav/c;->g(I)V

    invoke-direct {p0, p1}, Li/bq;->k(Lcom/google/googlenav/c;)Ljava/util/Vector;

    :goto_4
    if-eqz v2, :cond_3

    if-nez v4, :cond_e

    :cond_3
    invoke-virtual {v0, p1}, Li/bl;->d(Lcom/google/googlenav/c;)Z

    move-result v0

    const/16 v5, 0x258

    const/16 v6, 0x40c

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40d

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v8, v0, v6, v7}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c;->g(I)V

    :cond_4
    move-object v0, v5

    :goto_5
    if-eqz v2, :cond_9

    move-object v5, v2

    :goto_6
    if-ne v5, v2, :cond_b

    if-nez v4, :cond_b

    :goto_7
    new-instance v2, Lx/n;

    invoke-direct {v2, v3, v1, v5, v0}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v2

    :cond_5
    move v2, v10

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v1}, Li/bl;->c(Lf/N;)Z

    move-result v1

    const/16 v2, 0x25b

    const/16 v4, 0x1a4

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v8, v1, v4, v5}, Li/bq;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/googlenav/c;->g(I)V

    :cond_7
    move-object v1, v2

    goto/16 :goto_1

    :cond_8
    move v4, v10

    goto/16 :goto_2

    :cond_9
    if-eqz v0, :cond_a

    move-object v5, v0

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_d

    move-object v5, v4

    goto :goto_6

    :cond_b
    if-eq v5, v4, :cond_c

    move-object v0, v4

    goto :goto_7

    :cond_c
    move-object v0, v9

    goto :goto_7

    :cond_d
    move-object v5, v9

    goto :goto_6

    :cond_e
    move-object v0, v9

    goto :goto_5

    :cond_f
    move-object v4, v9

    goto :goto_4

    :cond_10
    move-object v2, v9

    goto/16 :goto_3
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Li/bq;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method protected b(Lcom/google/googlenav/c;)Lx/G;
    .locals 14

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aA()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x3ea

    :goto_0
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->aF:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2}, Li/bl;->bA()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0xc2

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v5}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ui/av;->bp:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p1, v3}, Li/P;->f(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_6
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Li/bq;->a:Li/x;

    invoke-virtual {v8}, Li/x;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/googlenav/g;->b()Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lx/q;

    const/16 v12, 0x10

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13, v1}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    const-string v1, ""

    invoke-virtual {v2}, Li/bl;->b()I

    move-result v1

    if-nez v1, :cond_8

    move-object v0, v2

    check-cast v0, Li/aw;

    move-object v1, v0

    invoke-virtual {v1}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->v()Ljava/lang/String;

    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2}, Li/bl;->bz()Z

    move-result v1

    invoke-static {p1, v6, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->as()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->Z()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v1}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->aS:Lcom/google/googlenav/ui/av;

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lx/q;

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13, v1}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x1c

    invoke-virtual {p1, v1}, Lcom/google/googlenav/c;->g(I)V

    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aB()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aC()LaO/d;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2ef

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->bV:Lcom/google/googlenav/ui/av;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, LaO/d;->b()I

    move-result v8

    invoke-static {v8}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->bU:Lcom/google/googlenav/ui/av;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, LaO/d;->d()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->bW:Lcom/google/googlenav/ui/av;

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lx/q;

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-virtual {v1}, LaO/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v12, v13, v1}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p1}, Lcom/google/googlenav/c;->Z()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v2}, Li/bl;->bx()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bd()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x444

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x2d4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/c;)Z

    move-result v1

    invoke-virtual {v2}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v4

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v7

    iget-object v7, v7, Li/bl;->N:LaD/n;

    invoke-static {v6, p1, v1, v4, v7}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/c;ZLcom/google/googlenav/ui/aG;LaD/n;)Z

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v2}, Li/bl;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bx;->f:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/aQ;->c(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v2, p1}, Li/bl;->m(Lcom/google/googlenav/c;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->b(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v2}, Li/bl;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v4}, Li/P;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aQ;Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v3

    invoke-virtual {v2}, Li/bl;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v4

    invoke-static {v3, v4, v1}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1}, Li/bl;->e(Lcom/google/googlenav/c;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0}, Li/bq;->g()Li/aw;

    move-result-object v2

    invoke-virtual {v2, p1}, Li/aw;->i(Lcom/google/googlenav/c;)I

    move-result v3

    invoke-virtual {v2}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Li/aw;->c(Lcom/google/googlenav/c;Z)Lk/l;

    move-result-object v4

    invoke-static {p0, v3, v4, v2}, Li/P;->a(Lcom/google/googlenav/c;ILk/l;Lx/U;)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bD()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_f
    const/4 v3, 0x1

    :goto_3
    new-instance v4, Lx/G;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bC()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v3, :cond_14

    :cond_10
    const/4 v3, 0x1

    :goto_4
    invoke-direct {v4, v1, v5, v2, v3}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V

    return-object v4

    :cond_11
    const/16 v1, 0x3e7

    goto/16 :goto_0

    :cond_12
    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    const/4 v3, 0x0

    goto :goto_3

    :cond_14
    const/4 v3, 0x0

    goto :goto_4

    :cond_15
    move-object v2, v3

    goto :goto_2
.end method

.method protected b()Lx/z;
    .locals 2

    new-instance v0, Lx/p;

    invoke-direct {v0}, Lx/p;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lx/z;->p:I

    return-object v0
.end method

.method public c()Lx/J;
    .locals 4

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v0

    invoke-virtual {v0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Li/bq;->e()Li/bl;

    move-result-object v3

    invoke-virtual {v3, v1}, Li/bl;->n(Lcom/google/googlenav/c;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->U()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Li/bl;->bO()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Li/bq;->h(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li/bl;->bs()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Li/bq;->e(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Li/bq;->a(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Li/bq;->t(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Li/bq;->m(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Li/bq;->q(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Li/bq;->r(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v1}, Li/bq;->s(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Li/bq;->a:Li/x;

    check-cast p0, Li/aQ;

    invoke-virtual {p0}, Li/aQ;->bq()Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v1}, Li/bq;->o(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v1}, Li/bq;->p(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, v1}, Li/bq;->c(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, v1}, Li/bq;->d(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, v1}, Li/bq;->j(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, v1}, Li/bq;->l(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method protected c(Lcom/google/googlenav/c;)Lx/J;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No implementation!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/google/googlenav/c;)Lx/J;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No implementation!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
