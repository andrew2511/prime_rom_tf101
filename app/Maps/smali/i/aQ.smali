.class public Li/aQ;
.super Li/n;

# interfaces
.implements Lcom/google/googlenav/S;
.implements Lcom/google/googlenav/bd;


# instance fields
.field private E:Lx/T;

.field private O:Lx/T;

.field private final P:Ljava/util/Hashtable;

.field private Q:Lc/p;

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Lx/d;

.field private U:Lx/d;

.field private V:D

.field private W:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Li/aQ;->P:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Li/aQ;->W:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->h()V

    :cond_0
    invoke-direct {p0}, Li/aQ;->bu()V

    if-eqz p7, :cond_1

    invoke-virtual {p0, p7}, Li/aQ;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Li/aQ;->P:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Li/aQ;->W:Ljava/lang/String;

    invoke-direct {p0}, Li/aQ;->bu()V

    return-void
.end method

.method public static U()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x20a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Law/e;)Lcom/google/googlenav/ui/aI;
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/ui/D;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1b6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/google/googlenav/ui/av;->aC:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Li/aQ;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/aQ;->W:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lc/a;LaD/r;LaD/n;LaU/a;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1, p0}, LaD/r;->b(Lcom/google/googlenav/ui/aH;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    new-instance v1, LaD/j;

    invoke-virtual {p0}, Lc/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v5, v2}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, LaD/j;

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v3

    invoke-virtual {v3}, Lo/H;->o()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v1, v5, v2}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/aQ;->S:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v7}, Ljava/util/Vector;-><init>(I)V

    if-nez p2, :cond_1

    iget-object v2, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/by;

    new-instance v4, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v3, v4, v2}, Lcom/google/googlenav/by;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v3, v2

    move v2, v7

    :goto_0
    iget-object v4, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v4, v0, v1}, Lx/T;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v0, v8}, Lx/T;->c(I)V

    invoke-static {p1, v3}, Lcom/google/googlenav/bB;->a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)Lcom/google/googlenav/bF;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bF;->f(Z)V

    iget-object v1, p0, Li/aQ;->P:Ljava/util/Hashtable;

    iget-object v2, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/bF;)V

    invoke-virtual {p0}, Li/aQ;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-virtual {p0}, Li/aQ;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    invoke-virtual {p0}, Li/aQ;->aA()V

    return-void

    :cond_1
    move v2, v8

    move-object v3, p2

    goto :goto_0
.end method

.method static a(Lcom/google/googlenav/c;Lx/T;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/google/googlenav/bB;->a(Lcom/google/googlenav/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->j(Law/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/bG;

    invoke-direct {v4, v3}, Lcom/google/googlenav/bG;-><init>(Law/e;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/googlenav/bB;->k(Law/e;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v0}, Lcom/google/googlenav/bB;->k(Law/e;)I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    move v4, v6

    :goto_0
    if-ge v4, v2, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/bB;->g(Law/e;)Lcom/google/googlenav/by;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    invoke-virtual {p1, v1, v0}, Lx/T;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {p1, v6}, Lx/T;->c(I)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic a(Li/aQ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Li/aQ;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Li/aQ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li/aQ;->W:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Li/aQ;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aQ;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->f(Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Ljava/util/Vector;)V
    .locals 5

    new-instance v0, LaD/j;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v3

    invoke-virtual {v3}, Lo/H;->o()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0, v1, v2}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Li/aQ;->bQ()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->b()LaD/r;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->N:LaD/n;

    invoke-virtual {v0, p1, v1}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    return-void
.end method

.method private bC()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/aQ;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private bD()V
    .locals 5

    invoke-static {}, Lo/aS;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    invoke-virtual {p0}, Li/aQ;->C()Lc/o;

    move-result-object v1

    iget-object v2, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lc/o;->b()Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/D;->a(Law/e;)Lf/h;

    move-result-object v3

    invoke-virtual {v1}, Lc/o;->c()I

    move-result v1

    new-instance v4, Li/f;

    invoke-direct {v4, p0}, Li/f;-><init>(Li/aQ;)V

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/google/googlenav/ui/aT;->a(Lf/h;ILh/cD;Law/e;)V

    return-void
.end method

.method private bu()V
    .locals 4

    new-instance v0, Lx/T;

    invoke-direct {v0}, Lx/T;-><init>()V

    iput-object v0, p0, Li/aQ;->E:Lx/T;

    new-instance v0, Lx/T;

    invoke-direct {v0}, Lx/T;-><init>()V

    iput-object v0, p0, Li/aQ;->O:Lx/T;

    new-instance v0, Lc/p;

    invoke-virtual {p0}, Li/aQ;->bQ()LaD/t;

    move-result-object v1

    invoke-virtual {v1}, LaD/t;->b()LaD/r;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v0, p0, Li/aQ;->Q:Lc/p;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/aQ;->i(Z)V

    return-void
.end method

.method private bv()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Li/aQ;->R:Z

    if-eqz v0, :cond_2

    :cond_0
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

.method private bw()V
    .locals 4

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    iget-object v1, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/T;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Li/aQ;->a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/aQ;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    iget-object v2, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    goto :goto_0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->b(I)V

    invoke-virtual {p0}, Li/aQ;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bF;->a(B)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/bF;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->b(I)V

    invoke-virtual {p0}, Li/aQ;->T()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected B()Lo/be;
    .locals 4

    iget-object v0, p0, Li/aQ;->b:Lo/be;

    if-nez v0, :cond_0

    new-instance v0, Lo/be;

    iget-object v1, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v2

    iget-object v3, p0, Li/aQ;->O:Lx/T;

    invoke-direct {v0, v1, v2, v3}, Lo/be;-><init>(Lcom/google/googlenav/ui/aT;Lh/eY;Lx/T;)V

    iput-object v0, p0, Li/aQ;->b:Lo/be;

    :cond_0
    iget-object v0, p0, Li/aQ;->b:Lo/be;

    return-object v0
.end method

.method protected G()V
    .locals 0

    invoke-super {p0}, Li/n;->G()V

    return-void
.end method

.method public H()[Lax/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/aQ;->S:Ljava/lang/String;

    return-object v0
.end method

.method protected J()Lcom/google/googlenav/bG;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Li/aQ;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Li/aQ;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Li/aQ;->n(Lcom/google/googlenav/c;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/c;->bw()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Li/aQ;->E:Lx/T;

    invoke-static {v0, v1}, Li/aQ;->a(Lcom/google/googlenav/c;Lx/T;)V

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v0}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    goto :goto_0
.end method

.method protected K_()V
    .locals 8

    iget-object v0, p0, Li/aQ;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Li/aQ;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->i()J

    move-result-wide v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bX()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    iget-object v6, p0, Li/aQ;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/bF;)V

    goto :goto_0
.end method

.method protected N()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aQ;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Li/aQ;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public N_()V
    .locals 4

    invoke-super {p0}, Li/n;->N_()V

    const-wide v0, 0x3feccccccccccccdL

    iget-wide v2, p0, Li/aQ;->V:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Li/aQ;->V:D

    return-void
.end method

.method protected O()V
    .locals 2

    invoke-virtual {p0}, Li/aQ;->N()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Li/aQ;->d(I)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/aQ;->b(B)V

    invoke-virtual {p0}, Li/aQ;->J()Lcom/google/googlenav/bG;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iput v0, p0, Li/aQ;->F:I

    invoke-virtual {p0}, Li/aQ;->G()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/aQ;->T()V

    goto :goto_0
.end method

.method protected P_()V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lo/aS;->b()V

    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Li/aQ;->O:Lx/T;

    iget-object v5, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-object v0, p0, Li/aQ;->T:Lx/d;

    invoke-virtual {p0}, Li/aQ;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aQ;

    iget-object v2, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->c()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->d()Lf/h;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/google/googlenav/aQ;-><init>(Lf/h;Lf/h;Lcom/google/googlenav/S;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lcom/google/googlenav/aQ;)V

    return-void
.end method

.method protected V()Lc/a;
    .locals 4

    new-instance v0, Lc/a;

    invoke-virtual {p0}, Li/aQ;->bL()Lcom/google/googlenav/c;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bF;

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bW()J

    move-result-wide v1

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2, v3}, Lc/a;-><init>(JI)V

    return-object v0
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4a

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

    const/16 v0, 0x13

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/n;->X()I

    move-result v0

    goto :goto_0
.end method

.method protected Y_()V
    .locals 1

    invoke-static {}, Lo/aS;->b()V

    invoke-super {p0}, Li/n;->Y_()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Li/aQ;->b(B)V

    invoke-virtual {p0}, Li/aQ;->aj()V

    return-void
.end method

.method protected a(Lcom/google/googlenav/bF;)Lcom/google/googlenav/ui/bi;
    .locals 3

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->cc()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/googlenav/ui/aS;

    sget v2, Lcom/google/googlenav/ui/aV;->bL:I

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Li/aQ;->K:LaD/p;

    invoke-virtual {v0, v1}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li/aQ;->K:LaD/p;

    iget-object v2, p0, Li/aQ;->L:LaD/n;

    invoke-virtual {v0, v1, v2}, LaD/p;->a(Lcom/google/googlenav/ui/aS;LaD/n;)V

    :cond_2
    iget-object v0, p0, Li/aQ;->I:Lcom/google/googlenav/ui/aG;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Law/e;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/aQ;->b(B)V

    const/16 v0, 0x10

    iput v0, p0, Li/aQ;->F:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aQ;->R:Z

    invoke-virtual {p0}, Li/aQ;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/o;->a(Law/e;)V

    invoke-virtual {v0, p2}, Lc/o;->a(I)V

    invoke-virtual {v0, v1}, Lc/o;->a(Z)V

    invoke-virtual {p0, v1}, Li/aQ;->e(Z)V

    invoke-virtual {p0}, Li/aQ;->aj()V

    return-void
.end method

.method public a(Lf/h;I[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p3}, Lcom/google/googlenav/ui/D;->a(Lf/h;[Ljava/lang/String;)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Li/aQ;->a(Law/e;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Li/aQ;->W:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->a()Li/ai;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    new-instance v1, Li/g;

    invoke-direct {v1, p0}, Li/g;-><init>(Li/aQ;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aY;->a(Li/ai;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Vector;Lf/h;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Li/n;->a(Ljava/util/Vector;Lf/h;I)V

    iget-object v0, p0, Li/aQ;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {p0, v0, p2}, Li/aQ;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v2

    int-to-long v4, p3

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    invoke-virtual {p0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v0, v4, v2, v3}, Li/aR;->a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;Ljava/util/Vector;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/aQ;->bQ()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->b()LaD/r;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/bB;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iget-object v4, p0, Li/aQ;->M:LaD/n;

    invoke-virtual {v0, v2, v4}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    iget-object v0, p0, Li/aQ;->K:LaD/p;

    sget v2, Lo/bd;->a:I

    invoke-static {p1, v2}, Lcom/google/googlenav/bB;->a(Ljava/util/Vector;I)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Li/aQ;->M:LaD/n;

    invoke-virtual {v0, v2, v4}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    iget-object v0, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0, p1, p2}, Lx/T;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    iget-object v0, p0, Li/aQ;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aQ;->T:Lx/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->aF()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    iget-object v2, p0, Li/aQ;->O:Lx/T;

    iget-object v5, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->T:Lx/d;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lx/d;->a(Ljava/util/Vector;)V

    :goto_1
    iget-object v0, p0, Li/aQ;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    iget-object v2, p0, Li/aQ;->O:Lx/T;

    iget-object v3, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->U:Lx/d;

    iget-object v0, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lx/d;->a(Ljava/util/Vector;)V

    goto :goto_1
.end method

.method public a(ZLcom/google/googlenav/bG;)V
    .locals 2

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/aQ;->L()V

    invoke-virtual {p0}, Li/aQ;->aa()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Li/aQ;->a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)V

    invoke-virtual {p0}, Li/aQ;->T()V

    iget-object v0, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li/aQ;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->b(Lf/h;)V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x109

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ZLcom/google/googlenav/bo;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Li/aQ;->C()Lc/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/o;->d()V

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Li/aQ;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Li/aQ;->bv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aQ;

    iget-object v2, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->c()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->d()Lf/h;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/google/googlenav/aQ;-><init>(Lf/h;Lf/h;Lcom/google/googlenav/S;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lcom/google/googlenav/aQ;)V

    :goto_0
    invoke-virtual {p0}, Li/aQ;->L()V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    invoke-virtual {p0}, Li/aQ;->aa()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aQ;->e(Z)V

    invoke-virtual {p0}, Li/aQ;->aj()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x10b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Li/n;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->a()V

    :cond_0
    iget-boolean v0, p0, Li/aQ;->R:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/aQ;->bw()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Li/n;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Li/aQ;->B()Lo/be;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aQ;

    iget-object v2, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->c()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->d()Lf/h;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/google/googlenav/aQ;-><init>(Lf/h;Lf/h;Lcom/google/googlenav/S;)V

    invoke-virtual {v0, v1}, Lo/be;->a(Lcom/google/googlenav/aQ;)V

    move v0, v4

    goto :goto_0

    :sswitch_2
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Li/aQ;->c:Ljava/lang/String;

    move v0, v4

    goto :goto_0

    :sswitch_3
    iput-boolean v4, p0, Li/aQ;->R:Z

    invoke-virtual {p0}, Li/aQ;->B()Lo/be;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lo/be;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-direct {p0}, Li/aQ;->bw()V

    invoke-direct {p0}, Li/aQ;->bC()V

    move v0, v4

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Li/aQ;->bD()V

    move v0, v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x190 -> :sswitch_3
        0x191 -> :sswitch_1
        0x199 -> :sswitch_2
        0x19b -> :sswitch_4
    .end sparse-switch
.end method

.method protected a(Lax/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Li/aQ;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->T()V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aQ;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Li/aQ;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/aQ;->Y_()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Li/n;->a(Lax/c;)Z

    move-result v0

    goto :goto_1
.end method

.method protected a(Lx/J;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected aP()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Li/aQ;->F:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/aQ;->J()Lcom/google/googlenav/bG;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Li/aQ;->R:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Li/aQ;->a(Lcom/google/googlenav/bG;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->O:Lx/T;

    iget-object v2, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-object v0, p0, Li/aQ;->U:Lx/d;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Li/aQ;->a(Lcom/google/googlenav/bG;)V

    iget-object v1, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v1}, Lx/T;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, v1}, Li/aQ;->b(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->E:Lx/T;

    iget-object v2, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lo/bd;->a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-object v0, p0, Li/aQ;->U:Lx/d;

    goto :goto_0
.end method

.method protected aq()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aQ;->ba()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Li/aQ;->i(Z)V

    iget-object v0, p0, Li/aQ;->O:Lx/T;

    invoke-virtual {v0}, Lx/T;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public b(ZLcom/google/googlenav/bG;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object v4, p0, Li/aQ;->S:Ljava/lang/String;

    invoke-direct {p0}, Li/aQ;->bv()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Li/n;->b(ZLcom/google/googlenav/bG;)V

    :cond_1
    iget-object v0, p0, Li/aQ;->P:Ljava/util/Hashtable;

    invoke-virtual {p2}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {p2}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/T;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lx/T;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    iget-object v0, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v0, v4}, Lx/T;->a(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/aQ;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lf/K;->a(BLf/h;Lf/l;)Lf/K;

    move-result-object v0

    iget-object v1, p0, Li/aQ;->a:Lf/x;

    invoke-virtual {v1}, Lf/x;->a()V

    iget-object v1, p0, Li/aQ;->a:Lf/x;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lf/x;->a(Lf/K;Z)Lf/U;

    iget-object v0, p0, Li/aQ;->a:Lf/x;

    invoke-virtual {v0}, Lf/x;->e()V

    invoke-direct {p0}, Li/aQ;->bv()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Li/aQ;->aC()V

    :cond_3
    return-void
.end method

.method protected bo()Lc/p;
    .locals 1

    iget-object v0, p0, Li/aQ;->Q:Lc/p;

    return-object v0
.end method

.method protected bq()Lx/J;
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Li/aQ;->C()Lc/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/o;->b()Law/e;

    move-result-object v0

    invoke-static {v0}, Li/aQ;->a(Law/e;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v0, p0, Li/aQ;->d:Lh/fP;

    if-nez v0, :cond_0

    move-object v7, v1

    :goto_0
    invoke-virtual {p0}, Li/aQ;->F()Lo/bd;

    move-result-object v0

    iget-object v8, p0, Li/aQ;->c:Ljava/lang/String;

    invoke-virtual {p0}, Li/aQ;->E()Lax/d;

    move-result-object v9

    move v6, v4

    invoke-virtual/range {v0 .. v9}, Lo/bd;->a(Lx/T;Lc/o;Lcom/google/googlenav/ui/aI;IZZLjava/lang/String;Ljava/lang/String;Lax/d;)Lx/g;

    move-result-object v0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Li/aQ;->d:Lh/fP;

    iget-object v0, v0, Lh/fP;->c:Ljava/lang/String;

    move-object v7, v0

    goto :goto_0
.end method

.method public br()Lx/B;
    .locals 1

    iget-object v0, p0, Li/aQ;->U:Lx/d;

    return-object v0
.end method

.method public bt()Lx/B;
    .locals 1

    iget-object v0, p0, Li/aQ;->T:Lx/d;

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Li/aQ;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aQ;->i(Z)V

    invoke-virtual {p0}, Li/aQ;->Y_()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aQ;->R:Z

    iget v0, p0, Li/aQ;->F:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Li/aQ;->L()V

    :cond_2
    iget-object v0, p0, Li/aQ;->E:Lx/T;

    invoke-virtual {v0}, Lx/T;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Li/aQ;->aC()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Li/aQ;->T()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aQ;->R:Z

    :cond_1
    invoke-super {p0, p1}, Li/n;->d(I)V

    return-void
.end method

.method public h()V
    .locals 4

    invoke-super {p0}, Li/n;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aQ;->R:Z

    const-wide v0, 0x3fb999999999999aL

    iget-wide v2, p0, Li/aQ;->V:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Li/aQ;->V:D

    return-void
.end method

.method protected k()V
    .locals 4

    invoke-virtual {p0}, Li/aQ;->V()Lc/a;

    move-result-object v0

    invoke-virtual {p0}, Li/aQ;->bQ()LaD/t;

    move-result-object v1

    invoke-virtual {v1}, LaD/t;->b()LaD/r;

    move-result-object v1

    iget-object v2, p0, Li/aQ;->L:LaD/n;

    iget-object v3, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Li/aQ;->a(Lc/a;LaD/r;LaD/n;LaU/a;)V

    return-void
.end method

.method protected r()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aQ;->aJ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s_()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aQ;->e(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/aQ;->a(B)V

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    invoke-static {}, Li/aQ;->U()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->h(Z)V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aP;->b()V

    :cond_0
    invoke-super {p0}, Li/n;->x()Z

    move-result v0

    return v0
.end method

.method public y()V
    .locals 2

    invoke-super {p0}, Li/n;->y()V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->h(Z)V

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aQ;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aP;->c()V

    :cond_0
    return-void
.end method
