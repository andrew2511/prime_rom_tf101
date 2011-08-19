.class public Li/aw;
.super Li/q;

# interfaces
.implements Lcom/google/googlenav/N;
.implements Lcom/google/googlenav/a;
.implements Lf/T;
.implements Lv/h;
.implements Lx/K;


# instance fields
.field protected E:I

.field private O:Z

.field private P:J

.field private Q:Lx/S;

.field private R:J

.field private S:Lx/S;

.field private T:Lf/C;

.field private U:Z

.field private V:Lx/x;

.field private W:Ljava/lang/String;

.field private X:Lcom/google/googlenav/layer/s;

.field private Y:Lf/x;

.field private Z:Lcom/google/googlenav/layer/q;

.field protected volatile a:Z

.field private aa:LI/y;

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:LaO/b;

.field private af:LaO/b;

.field private ag:Lh/v;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    iput-boolean v0, p0, Li/aw;->a:Z

    iput-boolean v0, p0, Li/aw;->ab:Z

    iput-boolean v0, p0, Li/aw;->ac:Z

    invoke-direct {p0, p6, p7, p8}, Li/aw;->a(Lcom/google/googlenav/layer/s;Lf/x;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    iput-boolean v0, p0, Li/aw;->a:Z

    iput-boolean v0, p0, Li/aw;->ab:Z

    iput-boolean v0, p0, Li/aw;->ac:Z

    invoke-direct {p0, p5, p6, p7}, Li/aw;->a(Lcom/google/googlenav/layer/s;Lf/x;I)V

    return-void
.end method

.method static synthetic a(Li/aw;)LaO/b;
    .locals 1

    iget-object v0, p0, Li/aw;->ae:LaO/b;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-virtual {p0, p1}, Li/aw;->d(I)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Li/aw;->a(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, v2}, Li/aw;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Li/aw;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->l:Lx/S;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Li/aw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/H;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/H;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p1}, Lcom/google/googlenav/H;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Li/aw;->K:LaD/p;

    invoke-virtual {v1, v0}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aB()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aC()LaO/d;

    move-result-object v1

    invoke-virtual {v1}, LaO/d;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/google/googlenav/ui/av;->ai:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aj:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    sget-object v0, LD/g;->a:LD/g;

    invoke-virtual {v0}, LD/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aj:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aj:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ah:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ah:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private a(Lcom/google/googlenav/layer/s;Lf/x;I)V
    .locals 4

    iput-object p1, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    iput-object p2, p0, Li/aw;->Y:Lf/x;

    iput p3, p0, Li/aw;->E:I

    new-instance v0, Lc/p;

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v1

    invoke-virtual {v1}, LaD/t;->a()LaD/r;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v0, p0, Li/aw;->J:Lc/p;

    new-instance v0, Lcom/google/googlenav/layer/q;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/layer/q;-><init>(Li/x;Lcom/google/googlenav/layer/s;)V

    iput-object v0, p0, Li/aw;->Z:Lcom/google/googlenav/layer/q;

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/j;->a(Lv/h;)V

    :cond_0
    iget-object v0, p0, Li/aw;->D:LN/j;

    check-cast v0, LN/e;

    invoke-virtual {v0, p3}, LN/e;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/aw;->i(Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bx;Lx/U;)V
    .locals 2

    iget-object v0, p0, Li/aw;->Q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->Q:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Li/aw;->P:J

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/aw;->Q:Lx/S;

    return-void
.end method

.method private a(Lcom/google/googlenav/z;ZLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Law/e;

    sget-object v1, Ls/z;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->aB()Law/e;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Law/e;->b(ILjava/lang/String;)V

    new-instance v1, LaO/b;

    new-instance v2, Li/Q;

    invoke-direct {v2, p0, p1, p2}, Li/Q;-><init>(Li/aw;Lcom/google/googlenav/z;Z)V

    invoke-direct {v1, v3, v0, v2}, LaO/b;-><init>(ILaw/e;LaO/e;)V

    iput-object v1, p0, Li/aw;->ae:LaO/b;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Li/aw;->ae:LaO/b;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/z;ZZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/z;->a(Lcom/google/googlenav/z;)V

    invoke-virtual {p0}, Li/aw;->aA()V

    invoke-virtual {p0}, Li/aw;->au()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Li/aw;->bS()V

    invoke-direct {p0}, Li/aw;->bT()V

    iput-boolean v6, p0, Li/aw;->a:Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/z;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x422

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->B()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_5

    invoke-static {p1}, Li/aw;->d(Lcom/google/googlenav/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ai()I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->d(I)V

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Li/aw;->aN()Z

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/z;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Li/aw;->cg()V

    :cond_6
    iget-object v0, p0, Li/aw;->S:Lx/S;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Li/aw;->h(Lcom/google/googlenav/z;)V

    :cond_7
    if-eqz p2, :cond_8

    iput-boolean v7, p0, Li/aw;->U:Z

    if-nez p3, :cond_8

    invoke-direct {p0}, Li/aw;->bR()Lf/C;

    move-result-object v0

    iput-object v0, p0, Li/aw;->T:Lf/C;

    :cond_8
    const-string v0, "19"

    invoke-virtual {p1}, Lcom/google/googlenav/z;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/z;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/z;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/aw;->c(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Li/aw;Lcom/google/googlenav/z;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li/aw;->a(Lcom/google/googlenav/z;ZZ)V

    return-void
.end method

.method private b(IZ)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    if-eqz p2, :cond_1

    move v0, v10

    :goto_0
    add-int/2addr v0, p1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aY;->j()[Lcom/google/googlenav/bF;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-direct {p0, p2}, Li/aw;->j(Z)I

    move-result v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    array-length v5, v4

    if-gez v0, :cond_3

    sub-int v0, v2, v10

    goto :goto_1

    :cond_3
    if-lt v0, v2, :cond_0

    invoke-virtual {v3}, Lcom/google/googlenav/aY;->i()I

    move-result v0

    if-eqz p2, :cond_4

    move v6, v10

    :goto_2
    add-int/2addr v0, v6

    move v6, v0

    :goto_3
    if-gez v6, :cond_5

    sub-int v0, v2, v10

    move v7, v0

    :goto_4
    if-eq v7, v9, :cond_b

    invoke-virtual {v1, v7}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/c;->P()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_9

    move v0, v10

    :goto_5
    add-int/2addr v0, v6

    :goto_6
    if-eq v7, v9, :cond_a

    move v0, v7

    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    :cond_5
    if-ge v6, v5, :cond_8

    aget-object v0, v4, v6

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/z;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    move v0, v10

    :goto_7
    add-int/2addr v0, v6

    move v6, v9

    :goto_8
    move v7, v6

    move v6, v0

    goto :goto_4

    :cond_6
    move v0, v9

    goto :goto_7

    :cond_7
    invoke-virtual {v3, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    add-int v7, v2, v0

    iget-object v8, p0, Li/aw;->Z:Lcom/google/googlenav/layer/q;

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v7}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v8, v0}, Lcom/google/googlenav/layer/q;->b(Lcom/google/googlenav/c;)Lak/d;

    move v0, v6

    move v6, v7

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    move v7, v0

    goto :goto_4

    :cond_9
    move v0, v9

    goto :goto_5

    :cond_a
    move v6, v0

    goto :goto_3

    :cond_b
    move v0, v6

    goto :goto_6
.end method

.method private b(ILcom/google/googlenav/c;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, p2, v0}, Li/aw;->a(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    new-instance v1, Li/X;

    invoke-direct {v1, p0, p1}, Li/X;-><init>(Li/aw;I)V

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x2bc

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->af:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Li/aw;->a(Lcom/google/googlenav/ui/bx;Lx/U;)V

    return-void
.end method

.method static synthetic b(Li/aw;)V
    .locals 0

    invoke-direct {p0}, Li/aw;->bU()V

    return-void
.end method

.method private bR()Lf/C;
    .locals 6

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->y()V

    iget-object v1, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->N()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->O()I

    move-result v3

    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v4

    invoke-virtual {p0, v4}, Li/aw;->c(Z)I

    move-result v4

    iget-object v5, p0, Li/aw;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->f()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lf/Y;->a(IIII)Lf/l;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->J()Lf/h;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v2

    invoke-virtual {p0, v2}, Li/aw;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Li/aw;->q_()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v0, v2, v3, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Li/aw;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v0

    iget-object v2, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v2, v0, v1}, Lf/Y;->d(Lf/h;Lf/l;)V

    iget-object v2, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->h()Lf/C;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v0

    return-object v0
.end method

.method private bS()V
    .locals 3

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Li/R;

    invoke-direct {v1, p0, v0}, Li/R;-><init>(Li/aw;LT/c;)V

    invoke-virtual {v1}, Li/R;->b()V

    :cond_0
    invoke-virtual {p0}, Li/aw;->bE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aA()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v0

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/R;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/R;-><init>(Lf/h;I)V

    invoke-virtual {v1, p0}, Lcom/google/googlenav/R;->a(Lcom/google/googlenav/N;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Li/aw;->W:Ljava/lang/String;

    goto :goto_0
.end method

.method private bT()V
    .locals 5

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, Li/aw;->a(Lcom/google/googlenav/bf;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    :cond_1
    return-void
.end method

.method private bU()V
    .locals 5

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Li/aw;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;

    move-result-object v0

    iget-object v4, p0, Li/aw;->K:LaD/p;

    invoke-virtual {v4, v0}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Li/aw;->K:LaD/p;

    iget-object v1, p0, Li/aw;->M:LaD/n;

    invoke-virtual {v0, v2, v1}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_2
    return-void
.end method

.method private bV()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/aw;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Li/aw;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/ay;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ay;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private bW()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Li/aw;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->av()[Lcom/google/googlenav/c;

    move-result-object v0

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/googlenav/ay;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ay;->d(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private bX()V
    .locals 7

    const/4 v6, 0x3

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    new-instance v3, Lcom/google/googlenav/V;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->m()Lcom/google/googlenav/bs;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/V;->a(Ljava/util/Hashtable;)Lcom/google/googlenav/V;

    move-result-object v1

    const/16 v3, 0x449

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const-string v3, "20"

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->as()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void

    :cond_1
    new-instance v3, Lcom/google/googlenav/aN;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private bY()V
    .locals 3

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    :goto_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aw;->e(Lcom/google/googlenav/z;)Lcom/google/googlenav/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Li/aw;->a(ILcom/google/googlenav/c;)V

    invoke-direct {p0, v0}, Li/aw;->r(Lcom/google/googlenav/c;)Lcom/google/googlenav/layer/s;

    move-result-object v0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Li/aE;->b(Lcom/google/googlenav/layer/s;Z)Li/n;

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Li/aw;->T()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    goto :goto_0
.end method

.method private bZ()V
    .locals 1

    invoke-virtual {p0}, Li/aw;->aR()I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->d(I)V

    invoke-virtual {p0}, Li/aw;->aN()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/aw;->b(Z)V

    return-void
.end method

.method static synthetic c(Li/aw;)V
    .locals 0

    invoke-direct {p0}, Li/aw;->bX()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    iget-object v1, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    new-instance v3, Lcom/google/googlenav/V;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->m()Lcom/google/googlenav/bs;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/V;->a(Ljava/util/Hashtable;)Lcom/google/googlenav/V;

    move-result-object v2

    const/16 v3, 0x449

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v2

    const-string v3, "20"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->as()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v4, Lcom/google/googlenav/n;

    const-string v5, ""

    invoke-direct {v4, v6, v5, p2}, Lcom/google/googlenav/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/googlenav/aN;

    const/16 v5, 0xf9

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v1}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private ca()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Li/aw;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gmmsmh=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cb()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private cc()Z
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private cd()Lcom/google/googlenav/bm;
    .locals 0

    iget-object p0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    check-cast p0, Lcom/google/googlenav/bm;

    return-object p0
.end method

.method private ce()V
    .locals 2

    iget-object v0, p0, Li/aw;->Q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->Q:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aw;->Q:Lx/S;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/aw;->P:J

    :cond_0
    return-void
.end method

.method private cf()V
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Li/aw;->P:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Li/aw;->ce()V

    :cond_0
    return-void
.end method

.method private cg()V
    .locals 4

    iget-object v0, p0, Li/aw;->S:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->S:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    :cond_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aj()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Li/aE;->a(Lcom/google/googlenav/z;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/aw;->R:J

    new-instance v0, Li/W;

    invoke-direct {v0, p0}, Li/W;-><init>(Li/aw;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0xcf

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->am:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/aw;->S:Lx/S;

    const/16 v0, 0x38

    const-string v1, "v"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private ch()V
    .locals 2

    iget-object v0, p0, Li/aw;->S:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->S:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aw;->S:Lx/S;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/aw;->R:J

    :cond_0
    return-void
.end method

.method private ci()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Li/aw;->R:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Li/aw;->ch()V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Li/aw;)V
    .locals 0

    invoke-direct {p0}, Li/aw;->ce()V

    return-void
.end method

.method public static d(Lcom/google/googlenav/j;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic e(Li/aw;)V
    .locals 0

    invoke-direct {p0}, Li/aw;->bY()V

    return-void
.end method

.method static synthetic f(Li/aw;)V
    .locals 0

    invoke-direct {p0}, Li/aw;->ch()V

    return-void
.end method

.method private h(Lcom/google/googlenav/z;)V
    .locals 1

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Li/aw;->e(Lcom/google/googlenav/z;)Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Li/aw;->q(Lcom/google/googlenav/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Li/aw;->f(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Li/aw;->j(Lcom/google/googlenav/z;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Li/aw;->i(Lcom/google/googlenav/z;)Z

    goto :goto_0
.end method

.method private i(Lcom/google/googlenav/z;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v4}, Li/aw;->c(Lcom/google/googlenav/c;Z)Lk/l;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v0, v1}, Li/aw;->a(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    new-instance v0, Li/Y;

    invoke-direct {v0, p0}, Li/Y;-><init>(Li/aw;)V

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->af:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Li/aw;->a(Lcom/google/googlenav/ui/bx;Lx/U;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private j(Z)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c()I

    move-result v1

    :cond_0
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    if-gez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    sub-int/2addr v1, v3

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->P()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    return v1

    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private j(Lcom/google/googlenav/z;)V
    .locals 2

    invoke-virtual {p0, p1}, Li/aw;->g(Lcom/google/googlenav/z;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-direct {p0, v1, v0}, Li/aw;->b(ILcom/google/googlenav/c;)V

    goto :goto_0
.end method

.method private n(I)Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    return-object p0
.end method

.method private o(I)I
    .locals 4

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-direct {p0, v1}, Li/aw;->n(I)Lcom/google/googlenav/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/c;->O()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private o(Lcom/google/googlenav/c;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->F()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private p(Lcom/google/googlenav/c;)I
    .locals 3

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private q(Lcom/google/googlenav/c;)V
    .locals 2

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    new-instance v0, Li/T;

    invoke-direct {v0, p0}, Li/T;-><init>(Li/aw;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Li/aw;->c(Lcom/google/googlenav/c;Z)Lk/l;

    move-result-object v1

    :goto_0
    invoke-static {p1, v1, v0}, Li/p;->a(Lcom/google/googlenav/c;Lk/l;Lx/U;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Li/aw;->a(Lcom/google/googlenav/ui/bx;Lx/U;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private r(Lcom/google/googlenav/c;)Lcom/google/googlenav/layer/s;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->by()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bx()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILjava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Law/e;->h(II)V

    const/16 v1, 0x11

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ae()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(I[B)V

    new-instance v1, Law/e;

    sget-object v2, Ls/t;->q:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->au()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->az()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Law/e;->b(ILjava/lang/String;)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/s;-><init>(Law/e;)V

    return-object v1
.end method


# virtual methods
.method protected G()V
    .locals 0

    invoke-super {p0}, Li/q;->G()V

    invoke-virtual {p0}, Li/aw;->U()V

    return-void
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ab()[Lcom/google/googlenav/ui/aU;

    move-result-object v0

    return-object v0
.end method

.method protected N()I
    .locals 1

    iget v0, p0, Li/aw;->ad:I

    return v0
.end method

.method public N_()V
    .locals 3

    invoke-super {p0}, Li/q;->N_()V

    invoke-direct {p0}, Li/aw;->ce()V

    invoke-direct {p0}, Li/aw;->ch()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    const/16 v1, 0x3ab

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aI;)V

    :cond_0
    return-void
.end method

.method protected P_()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/aw;->d(Z)V

    invoke-direct {p0}, Li/aw;->bU()V

    return-void
.end method

.method protected U()V
    .locals 3

    const/4 v0, 0x5

    const-string v1, "0"

    invoke-direct {p0}, Li/aw;->ca()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected V()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3ac

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected X()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/q;->X()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Li/aw;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->d(B)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lf/h;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v6}, Li/aw;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v6}, Li/aw;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v3

    if-nez v3, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {p0, v0, p1, v6}, Li/aw;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->Z:Lcom/google/googlenav/layer/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/c;)Lak/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/R;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/R;->l()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Li/aw;->W:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/aw;->W:Ljava/lang/String;

    iget-object v0, p0, Li/aw;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->au()V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1, p2, p3}, Li/q;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v1

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/googlenav/z;->N()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/googlenav/z;->O()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v5

    invoke-virtual {v5}, Lf/C;->b()Lf/l;

    move-result-object v5

    invoke-virtual {v5}, Lf/l;->a()I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Law/e;)Lcom/google/googlenav/aH;

    :cond_0
    invoke-virtual {v2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->d(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_1
    invoke-virtual {v2}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->e(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_2
    invoke-virtual {v2}, Lcom/google/googlenav/z;->H()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/google/googlenav/z;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->f(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_3
    const/4 v1, 0x4

    if-eq p3, v1, :cond_4

    const/16 v1, 0xf

    if-ne p3, v1, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/google/googlenav/z;->T()Lcom/google/googlenav/layer/d;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/googlenav/layer/d;->a()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Ljava/lang/String;)Lcom/google/googlenav/aH;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(I)Lcom/google/googlenav/aH;

    :cond_5
    :goto_0
    const/16 v1, 0x19

    if-eq p3, v1, :cond_6

    const/16 v1, 0x18

    if-ne p3, v1, :cond_7

    :cond_6
    invoke-virtual {v2}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Ljava/lang/Integer;)Lcom/google/googlenav/aH;

    :cond_7
    const/16 v1, 0x1f

    if-ne p3, v1, :cond_8

    if-eqz p2, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/googlenav/z;->S()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/googlenav/c;->s()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->c(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/google/googlenav/bf;->G()I

    move-result v1

    if-nez v1, :cond_9

    check-cast p2, Lcom/google/googlenav/c;

    invoke-virtual {p2}, Lcom/google/googlenav/c;->bA()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Ljava/util/List;)Lcom/google/googlenav/aH;

    :cond_9
    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Ljava/lang/String;)Lcom/google/googlenav/aH;

    invoke-virtual {p1, v7}, Lcom/google/googlenav/aH;->c(Z)Lcom/google/googlenav/aH;

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p1, v7}, Lcom/google/googlenav/aH;->a(Z)Lcom/google/googlenav/aH;

    goto/16 :goto_0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    iput-object p1, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aw;->b(B)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/aw;->a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/j;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 0

    return-void
.end method

.method public a(Lh/v;)V
    .locals 0

    iput-object p1, p0, Li/aw;->ag:Lh/v;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aw;->e(Z)V

    invoke-virtual {p0, v0}, Li/aw;->d(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lf/C;I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/V;->c(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/V;->d(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->as()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->bE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->h()Lf/C;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    :cond_0
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->J()Lf/h;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x5

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

.method public a(Ljava/lang/String;[Law/e;)V
    .locals 1

    iget-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/s;->a([Law/e;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Vector;Lf/h;I)V
    .locals 9

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/bf;->F()B

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p2}, Li/aw;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    invoke-static {p0, v3, v0, v4, v5}, Li/aR;->a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlenav/z;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v0, p2}, Li/aw;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v5

    int-to-long v7, p3

    cmp-long v7, v5, v7

    if-gez v7, :cond_5

    iget-boolean v7, p0, Li/aw;->x:Z

    if-eqz v7, :cond_6

    sget v7, Li/aE;->l:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    :cond_6
    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {p0, v0, v7, v5, v6}, Li/aR;->a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Li/q;->a(Z)V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aw()V

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->h()V

    iget-object v0, p0, Li/aw;->K:LaD/p;

    invoke-virtual {v0}, LaD/p;->a()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Li/q;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 10

    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iput-boolean v9, p0, Li/aw;->a:Z

    iput p2, p0, Li/aw;->ad:I

    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v9}, Li/aw;->a(IZ)V

    move v0, v5

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Li/aw;->af:LaO/b;

    invoke-virtual {v0}, LaO/b;->l()[Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt p2, v1, :cond_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v1

    new-instance v2, Lh/fc;

    invoke-direct {v2, v4}, Lh/fc;-><init>(I)V

    invoke-virtual {v1, v2}, Lh/l;->a(Lh/fc;)V

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0, v3, v5}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;BZ)V

    move v0, v5

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p2}, Lcom/google/googlenav/j;->b(I)V

    iput p2, p0, Li/aw;->ad:I

    invoke-virtual {p0, v6}, Li/aw;->a(Ljava/lang/Object;)V

    move v0, v5

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Li/aw;->bp()V

    move v0, v5

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Li/aw;->bY()V

    move v0, v5

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "20"

    invoke-virtual {v1, v0, v2, v6, v9}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v5

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    const-string v2, "b"

    invoke-static {v1, v0, p2, p0, v2}, Lh/dY;->a(Lcom/google/googlenav/bL;Lcom/google/googlenav/z;ILcom/google/googlenav/a;Ljava/lang/String;)V

    move v0, v5

    goto :goto_0

    :sswitch_7
    const/16 v1, 0x59

    const-string v2, "m"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v9}, Lh/eY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V

    move v0, v5

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x59

    const-string v2, "m"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v5}, Lh/eY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v9}, Lh/eY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v5}, Lh/eY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v3}, Lh/eY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;I)V

    move v0, v5

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v0, v3, :cond_2

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    if-eqz p3, :cond_3

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object v0, p3, v9

    aget-object v1, p3, v5

    invoke-direct {p0, v0, v1}, Li/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v5

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v6, v6}, Li/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_d
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v8

    const-string v0, "OpenNowNotification"

    invoke-interface {v8, v0}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    const/16 v1, 0x2a8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a1

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5e

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Li/V;

    invoke-direct {v7, p0}, Li/V;-><init>(Li/aw;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    const-string v0, "OpenNowNotification"

    new-array v1, v5, [B

    aput-byte v5, v1, v9

    invoke-interface {v8, v0, v1}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v8}, Ln/a;->a()V

    :goto_2
    move v0, v5

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Li/aw;->bX()V

    goto :goto_2

    :sswitch_e
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_3
    invoke-virtual {p0, v1, v6}, Li/aw;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Li/aw;->aB()V

    move v0, v5

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_f
    iget-object v0, p0, Li/aw;->ag:Lh/v;

    if-eqz v0, :cond_6

    iget-object v0, p0, Li/aw;->ag:Lh/v;

    invoke-virtual {v0}, Lh/v;->k()V

    :cond_6
    const/16 v0, 0x55

    const-string v1, "t"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "d"

    aput-object v3, v2, v9

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iput-boolean v5, p0, Li/aw;->x:Z

    invoke-direct {p0, p2, v5}, Li/aw;->a(IZ)V

    move v0, v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x2bc -> :sswitch_0
        0x2c4 -> :sswitch_4
        0x2c5 -> :sswitch_3
        0x2c6 -> :sswitch_6
        0x2c7 -> :sswitch_7
        0x2c8 -> :sswitch_9
        0x2c9 -> :sswitch_a
        0x2ca -> :sswitch_b
        0x2cd -> :sswitch_d
        0x2d0 -> :sswitch_8
        0x2d1 -> :sswitch_c
        0x2d3 -> :sswitch_1
        0x2ef -> :sswitch_5
        0x3f9 -> :sswitch_e
        0x6b3 -> :sswitch_f
        0x713 -> :sswitch_c
    .end sparse-switch
.end method

.method protected a(Lax/c;)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Li/aw;->bZ()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Li/aw;->b(ILjava/lang/Object;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "l"

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Li/aw;->b(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "l"

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Li/aw;->c(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Li/aw;->g(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Li/aw;->f(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Li/aw;->b(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Li/aw;->u_()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Li/aw;->O:Z

    move v0, v2

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/z;->b(Ljava/io/DataInput;)Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->b(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v1

    iput-object v1, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    new-instance v1, Lcom/google/googlenav/bm;

    new-instance v2, Lcom/google/googlenav/aY;

    iget-object v3, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    iget-object v4, p0, Li/aw;->Y:Lf/x;

    iget-object v5, p0, Li/aw;->h:Lf/v;

    iget-object v6, p0, Li/aw;->i:Lf/Y;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    iput-object v1, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v1

    new-instance v2, Li/U;

    invoke-direct {v2, p0, v0}, Li/U;-><init>(Li/aw;Lcom/google/googlenav/z;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v7

    :catch_0
    move-exception v0

    const-string v1, "UI-SL load"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lx/Q;)Z
    .locals 3

    iget-object v0, p0, Li/aw;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->l:Lx/S;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/aw;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "c"

    invoke-virtual {p0, v0, v1, v2}, Li/aw;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Li/q;->a(Lx/Q;)Z

    move-result v0

    goto :goto_0
.end method

.method public aO()Z
    .locals 3

    invoke-virtual {p0}, Li/aw;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Li/aw;->aK()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/bF;

    move-object p0, v0

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bS()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected aP()V
    .locals 3

    invoke-super {p0}, Li/q;->aP()V

    invoke-virtual {p0}, Li/aw;->bs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/aw;->n()Z

    invoke-virtual {p0}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->ai()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->b(Lf/h;)V

    goto :goto_0
.end method

.method protected aQ()V
    .locals 0

    invoke-super {p0}, Li/q;->aQ()V

    return-void
.end method

.method public aS()V
    .locals 1

    invoke-direct {p0}, Li/aw;->bW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aw;->au()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Li/aw;->bV()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->bI()V

    goto :goto_0
.end method

.method public aV()Z
    .locals 1

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/q;->aV()Z

    move-result v0

    goto :goto_0
.end method

.method public aZ()Z
    .locals 1

    iget-boolean v0, p0, Li/aw;->y:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

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

.method protected ad()V
    .locals 2

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aY;->b(Lf/h;)V

    return-void
.end method

.method protected ad_()V
    .locals 2

    invoke-virtual {p0}, Li/aw;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a(B)V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/z;->a(Lcom/google/googlenav/c;)V

    :cond_0
    return-void
.end method

.method protected ah()V
    .locals 2

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/aw;->n:Lx/J;

    check-cast v0, Lx/X;

    invoke-virtual {p0}, Li/aw;->aq()I

    move-result v1

    invoke-interface {v0, v1}, Lx/X;->d(I)V

    goto :goto_0
.end method

.method protected ax()Z
    .locals 1

    invoke-direct {p0}, Li/aw;->cb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aI()Z

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

.method protected ay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aY()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->f()I

    move-result v1

    :goto_0
    sub-int v1, v3, v1

    :goto_1
    return v1

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Li/aw;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aV;->c(B)I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Li/aw;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    goto :goto_1

    :sswitch_3
    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    iget-object v2, p0, Li/aw;->D:LN/j;

    check-cast v2, LN/e;

    invoke-virtual {v2}, LN/e;->b()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/c;->a(B)V

    invoke-virtual {p0, p1}, Li/aw;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Li/aw;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method public b(Lcom/google/googlenav/j;)V
    .locals 3

    invoke-virtual {p0, p1}, Li/aw;->a(Lcom/google/googlenav/j;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Li/aw;->b(B)V

    invoke-virtual {p0}, Li/aw;->aA()V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->Q()I

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->h()V

    invoke-virtual {p0}, Li/aw;->ae()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Li/aw;->a:Z

    invoke-virtual {v0}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v0

    iput-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->b(Lf/T;)V

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0}, Lf/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aw;->h:Lf/v;

    iget-object v1, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->b(Lf/x;)V

    :cond_0
    iget-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->a(Lf/T;)V

    iget-object v0, p0, Li/aw;->h:Lf/v;

    iget-object v1, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/x;)V

    :cond_1
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ai()I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->d(I)V

    invoke-virtual {p0}, Li/aw;->au()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bE:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aI;)V

    :cond_2
    invoke-direct {p0}, Li/aw;->bR()Lf/C;

    invoke-direct {p0}, Li/aw;->bS()V

    invoke-direct {p0}, Li/aw;->bT()V

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aw;->a:Z

    return-void
.end method

.method public b(Lcom/google/googlenav/z;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bG()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/google/googlenav/z;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Li/aw;->a(Lcom/google/googlenav/z;ZLjava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, v2}, Li/aw;->a(Lcom/google/googlenav/z;ZZ)V

    return-void
.end method

.method protected b(Z)V
    .locals 0

    invoke-direct {p0}, Li/aw;->cf()V

    invoke-direct {p0}, Li/aw;->ci()V

    invoke-super {p0, p1}, Li/q;->b(Z)V

    return-void
.end method

.method protected b(Lax/c;)Z
    .locals 8

    const/16 v7, 0x36

    const/4 v6, -0x1

    const/16 v5, 0x34

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Li/aw;->F:I

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    const/16 v0, 0x54

    const-string v1, "s"

    const-string v2, "f"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v3}, Li/aw;->l(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->k(I)V

    invoke-virtual {p0, v3}, Li/aw;->g(Z)V

    iput-boolean v4, p0, Li/aw;->z:Z

    move v0, v3

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v0, 0x54

    const-string v1, "s"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v4}, Li/aw;->l(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->k(I)V

    invoke-virtual {p0, v3}, Li/aw;->g(Z)V

    iput-boolean v4, p0, Li/aw;->z:Z

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    if-eq v0, v7, :cond_5

    if-ne v0, v5, :cond_d

    :cond_5
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c()I

    move-result v1

    invoke-virtual {p0}, Li/aw;->aI()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq v1, v6, :cond_8

    move v0, v1

    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ne v0, v1, :cond_7

    :cond_6
    move v0, v4

    :cond_7
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {p0, v0}, Li/aw;->d(I)V

    invoke-virtual {p0}, Li/aw;->aN()Z

    invoke-virtual {p0, v3}, Li/aw;->b(Z)V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Li/aw;->aI()Z

    move-result v2

    if-nez v2, :cond_9

    if-ne v0, v5, :cond_b

    invoke-direct {p0}, Li/aw;->cb()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    :cond_9
    :goto_2
    if-ne v0, v5, :cond_c

    move v2, v6

    :goto_3
    add-int/2addr v1, v2

    if-ltz v1, :cond_a

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->F()B

    move-result v2

    if-eqz v2, :cond_9

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    if-ne v0, v7, :cond_9

    invoke-direct {p0}, Li/aw;->cc()Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v6

    goto :goto_2

    :cond_c
    move v2, v3

    goto :goto_3

    :cond_d
    move v0, v4

    goto/16 :goto_0
.end method

.method public bA()Z
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bC()Lx/x;
    .locals 1

    iget-object v0, p0, Li/aw;->V:Lx/x;

    if-nez v0, :cond_0

    new-instance v0, Li/S;

    invoke-direct {v0, p0}, Li/S;-><init>(Li/aw;)V

    iput-object v0, p0, Li/aw;->V:Lx/x;

    :cond_0
    iget-object v0, p0, Li/aw;->V:Lx/x;

    return-object v0
.end method

.method public bD()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aA()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/aw;->W:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bE()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->as()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->at()Lf/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v2

    invoke-virtual {v2}, Lf/C;->a()Lf/h;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/D;->a(Lf/h;Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->S()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v0, v4

    :goto_1
    return v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public bF()[Lcom/google/googlenav/c;
    .locals 3

    iget-object v0, p0, Li/aw;->af:LaO/b;

    if-nez v0, :cond_0

    new-instance v0, Law/e;

    sget-object v1, Ls/z;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->aB()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    new-instance v1, LaO/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, LaO/b;-><init>(ILaw/e;)V

    iput-object v1, p0, Li/aw;->af:LaO/b;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Li/aw;->af:LaO/b;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    iget-object v0, p0, Li/aw;->af:LaO/b;

    invoke-virtual {v0}, LaO/b;->m()[Lcom/google/googlenav/c;

    move-result-object v0

    return-object v0
.end method

.method public bc()Z
    .locals 1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

    move-result v0

    return v0
.end method

.method protected bd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bo()V
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/aw;->b(Lcom/google/googlenav/z;Z)V

    return-void
.end method

.method protected bp()V
    .locals 4

    iget-boolean v0, p0, Li/aw;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/aw;->a:Z

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->aj()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/z;->a(ILcom/google/googlenav/a;)Lcom/google/googlenav/z;

    move-result-object v0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/z;IZ)V

    goto :goto_0
.end method

.method public bq()Z
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->ag()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->aj()I

    move-result v1

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public br()Lcom/google/googlenav/z;
    .locals 1

    invoke-direct {p0}, Li/aw;->cd()Lcom/google/googlenav/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bm;->a()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/z;

    return-object p0
.end method

.method protected bs()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aw;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-static {}, Lac/d;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->ak()I

    move-result v1

    if-le v1, v3, :cond_2

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public bt()I
    .locals 1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    return v0
.end method

.method public bu()Z
    .locals 1

    iget-boolean v0, p0, Li/aw;->ac:Z

    return v0
.end method

.method public bv()Lcom/google/googlenav/aY;
    .locals 1

    invoke-direct {p0}, Li/aw;->cd()Lcom/google/googlenav/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bm;->f()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aY;

    return-object p0
.end method

.method public bw()I
    .locals 1

    iget v0, p0, Li/aw;->E:I

    return v0
.end method

.method public bx()Z
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->u()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public by()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->r()Z

    move-result v0

    return v0
.end method

.method public bz()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/googlenav/z;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->L()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x368

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

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

.method public d()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aw;->bN()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Li/aw;->a:Z

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->bg()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aw;->i(Z)V

    invoke-virtual {p0, v2, v3}, Li/aw;->c(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Li/aw;->i(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2, v3}, Li/aw;->b(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lh/fc;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Li/aw;->d(I)V

    :cond_2
    invoke-virtual {p0, v2, v3}, Li/aw;->a(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->h(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    invoke-virtual {p0, v2, v3}, Li/aw;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->X()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(I)V

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object p0

    check-cast p0, Li/av;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li/av;->am_()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Li/aw;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iput-object v3, p0, Li/aw;->n:Lx/J;

    iget-object v0, p0, Li/aw;->ag:Lh/v;

    invoke-virtual {v0}, Lh/v;->z_()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x10 -> :sswitch_0
        0x1a -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method protected d(Lcom/google/googlenav/z;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/bm;

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    iput-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    return-void
.end method

.method public e(Lcom/google/googlenav/z;)Lcom/google/googlenav/c;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e(Lax/c;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aw;->u_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/aw;->O:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Li/aw;->O:Z

    invoke-virtual {p0}, Li/aw;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected e(Lcom/google/googlenav/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f(Lcom/google/googlenav/c;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, LD/m;->a:LD/m;

    invoke-virtual {v0}, LD/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, LaO/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Li/aw;->h(Lcom/google/googlenav/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ac()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Li/aw;->af:LaO/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Li/aw;->af:LaO/b;

    invoke-virtual {v0}, LaO/b;->l()[Lcom/google/googlenav/c;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p0, p1}, Li/aw;->g(Lcom/google/googlenav/c;)I

    move-result v1

    if-ltz v1, :cond_7

    if-ge v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Li/aw;->af:LaO/b;

    invoke-virtual {v0}, LaO/b;->l()[Lcom/google/googlenav/c;

    move-result-object v0

    array-length v0, v0

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public f(Lcom/google/googlenav/z;)Z
    .locals 2

    invoke-virtual {p0, p1}, Li/aw;->g(Lcom/google/googlenav/z;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g(Lcom/google/googlenav/c;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    move v1, v0

    move v2, v5

    :goto_0
    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/z;->c_()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Li/aw;->n(I)Lcom/google/googlenav/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/c;->O()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, p1, :cond_0

    move v2, v0

    goto :goto_1

    :cond_2
    sub-int v0, v2, v1

    return v0
.end method

.method public g(Lcom/google/googlenav/z;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aA()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public g()Lcom/google/googlenav/layer/s;
    .locals 1

    iget-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->bs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aw;->m(Z)V

    :cond_0
    invoke-super {p0, p1}, Li/q;->g(Z)V

    return-void
.end method

.method protected final g(Lax/c;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aw;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Li/aw;->aG()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v5}, Li/aw;->b(ILjava/lang/Object;)V

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Li/aw;->o(Lcom/google/googlenav/c;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Li/aw;->aH()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4, v5}, Li/aw;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "k"

    invoke-virtual {p0, v0, v1, v2}, Li/aw;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public h()V
    .locals 3

    invoke-super {p0}, Li/q;->h()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, LR/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bE:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aI;)V

    :cond_0
    return-void
.end method

.method protected h(Lcom/google/googlenav/c;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Li/aw;->i(Lcom/google/googlenav/c;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected i(Lcom/google/googlenav/c;)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-direct {p0, p1}, Li/aw;->p(Lcom/google/googlenav/c;)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ai()I

    move-result v0

    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Li/aw;->o(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public i(I)Z
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public j(I)Lx/J;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Li/aw;->H:Z

    iget-object v1, p0, Li/aw;->B:Li/aG;

    invoke-interface {v1, v0}, Li/aG;->a(Lcom/google/googlenav/c;)Lx/J;

    move-result-object v0

    iput-boolean v2, p0, Li/aw;->H:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public j()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Li/aw;->U:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Li/aw;->U:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/aw;->T:Lf/C;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aw;->T:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aw;->T:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    iget-object v1, p0, Li/aw;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v0, v2

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Li/aw;->T:Lf/C;

    invoke-virtual {p0}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Li/aw;->e(Z)V

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Li/aw;->b(Z)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Li/aw;->cf()V

    invoke-direct {p0}, Li/aw;->ci()V

    invoke-super {p0}, Li/q;->j()V

    goto :goto_0
.end method

.method protected k()V
    .locals 9

    invoke-virtual {p0}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v2, v0

    const/16 v3, 0x43

    const-string v4, "o"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Li/aw;->Z:Lcom/google/googlenav/layer/q;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/layer/q;->b(Lcom/google/googlenav/c;)Lak/d;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Li/q;->k()V

    goto :goto_0
.end method

.method public k(I)V
    .locals 1

    invoke-virtual {p0}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->b(I)V

    invoke-virtual {p0}, Li/aw;->av()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aw;->e(Z)V

    invoke-virtual {p0}, Li/aw;->am()V

    invoke-virtual {p0}, Li/aw;->an()V

    invoke-virtual {p0}, Li/aw;->bM()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Li/aw;->h(I)V

    return-void
.end method

.method public l(Z)I
    .locals 2

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0, p1}, Li/aw;->b(IZ)I

    move-result v1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->P()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public l(I)Z
    .locals 1

    iget-object v0, p0, Li/aw;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->V()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p0, Lcom/google/googlenav/bF;

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bS()Z

    move-result v0

    goto :goto_0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/e;

    invoke-direct {v0, p0}, LN/e;-><init>(Li/x;)V

    return-object v0
.end method

.method public m(I)V
    .locals 2

    iget v0, p0, Li/aw;->E:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/aE;->a(IZ)V

    iput p1, p0, Li/aw;->E:I

    iget v0, p0, Li/aw;->E:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li/aE;->a(IZ)V

    iget-object p0, p0, Li/aw;->D:LN/j;

    check-cast p0, LN/e;

    invoke-virtual {p0, p1}, LN/e;->b(I)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Li/aw;->ac:Z

    return-void
.end method

.method protected n()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Li/q;->n()Z

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->j()[Lcom/google/googlenav/bF;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    iget-boolean v1, p0, Li/aw;->ab:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->f()V

    iput-boolean v2, p0, Li/aw;->ab:Z

    invoke-virtual {p0}, Li/aw;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aw;->aC()V

    :cond_0
    invoke-virtual {p0}, Li/aw;->aA()V

    move v0, v3

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public o_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/aw;->ab:Z

    return-void
.end method

.method public p_()V
    .locals 14

    const/4 v12, 0x3

    const/4 v11, 0x0

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    :goto_0
    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v1, v3}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    move v7, v11

    :goto_1
    if-gt v7, v12, :cond_2

    invoke-virtual {v0, v7}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v9, v11

    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_0

    aget-object v10, v8, v9

    invoke-direct {p0, v10, v2}, Li/aw;->a(Lcom/google/googlenav/H;Ljava/util/List;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/c;->r()Lcom/google/googlenav/H;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, v2}, Li/aw;->a(Lcom/google/googlenav/H;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/google/googlenav/H;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    move v13, v4

    move v4, v5

    move v5, v0

    move v0, v13

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    move v5, v4

    move v4, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v6

    move v13, v0

    move v0, v4

    move v4, v13

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v5

    move v5, v6

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Li/aw;->K:LaD/p;

    iget-object v3, p0, Li/aw;->M:LaD/n;

    invoke-virtual {v0, v2, v3}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e

    const-string v2, "r"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected q_()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Li/q;->q_()I

    move-result v0

    iget-object v1, p0, Li/aw;->Q:Lx/S;

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/aw;->Q:Lx/S;

    invoke-interface {v1}, Lx/S;->d()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Li/aw;->S:Lx/S;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aw;->S:Lx/S;

    invoke-interface {v1}, Lx/S;->d()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected r()Z
    .locals 1

    invoke-virtual {p0}, Li/aw;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Li/q;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Lk/l;
    .locals 2

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->ai:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/aw;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->aj:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected v()V
    .locals 5

    invoke-super {p0}, Li/q;->v()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {p0}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v4}, Lcom/google/googlenav/z;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "UI-SL save"

    invoke-static {v3, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public x()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Li/aw;->E:I

    invoke-static {v0, v2}, Li/aE;->a(IZ)V

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    iput-boolean v2, p0, Li/aw;->z:Z

    iget-object v0, p0, Li/aw;->X:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->a(Lf/T;)V

    iget-object v0, p0, Li/aw;->h:Lf/v;

    iget-object v1, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/x;)V

    :cond_0
    return v2
.end method

.method public y()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/j;->b(Lv/h;)V

    :cond_0
    invoke-direct {p0}, Li/aw;->ce()V

    invoke-direct {p0}, Li/aw;->ch()V

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    iget v0, p0, Li/aw;->E:I

    invoke-static {v0, v1}, Li/aE;->a(IZ)V

    invoke-virtual {p0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/z;->a(ILcom/google/googlenav/a;)Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aw;->d(Lcom/google/googlenav/z;)V

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->h()V

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->b(Lf/T;)V

    iget-object v0, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0}, Lf/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/aw;->h:Lf/v;

    iget-object v1, p0, Li/aw;->Y:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->b(Lf/x;)V

    :cond_1
    iput-object v2, p0, Li/aw;->aa:LI/y;

    invoke-super {p0}, Li/q;->y()V

    return-void
.end method
