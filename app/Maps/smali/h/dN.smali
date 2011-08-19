.class public Lh/dN;
.super Lh/eR;


# instance fields
.field a:Lcom/google/googlenav/ui/az;

.field b:Lcom/google/googlenav/ui/az;

.field c:Lcom/google/googlenav/ui/az;

.field d:Lcom/google/googlenav/ui/az;

.field private e:Lcom/google/googlenav/ui/aT;

.field private f:Lcom/google/googlenav/h;

.field private l:Lcom/google/googlenav/h;

.field private m:Lh/ae;

.field private n:Lx/B;

.field private o:Z

.field private p:Lo/aH;

.field private q:Z

.field private final r:Lh/eI;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;Lh/eI;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    new-instance v0, Lcom/google/googlenav/ui/az;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    new-instance v0, Lcom/google/googlenav/ui/az;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v0, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    iput-object p3, p0, Lh/dN;->r:Lh/eI;

    return-void
.end method

.method private F()Lx/n;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lh/dN;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1f5

    :goto_1
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lx/n;

    invoke-direct {v1, v0, v4, v4, v4}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1

    :cond_0
    const/16 v0, 0x84

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private G()Lx/G;
    .locals 3

    new-instance v0, Lx/G;

    invoke-direct {p0}, Lh/dN;->H()Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v0
.end method

.method private H()Lcom/google/googlenav/ui/aQ;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v3}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/google/googlenav/ui/av;->M:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v1, :cond_5

    iget-object v4, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v4}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_6

    iget-object v5, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v5}, Lcom/google/googlenav/h;->f()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v1, :cond_2

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v3, 0x19b

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->z()Lk/l;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lf/h;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, LQ/h;->a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V

    return-object v0

    :cond_3
    move-object v2, v7

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x92

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    move-object v4, v7

    goto :goto_2

    :cond_6
    move-object v5, v7

    goto :goto_3

    :cond_7
    move-object v1, v7

    goto :goto_4
.end method

.method private I()V
    .locals 7

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/d;->g()Lo/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lh/dN;->N()Lo/bB;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/au;

    iget-object v3, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    const/4 v4, 0x0

    new-instance v5, Lh/bw;

    iget-object v6, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-direct {v5, p0, v6}, Lh/bw;-><init>(Lh/dN;Lcom/google/googlenav/h;)V

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/googlenav/au;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ae;)V

    invoke-virtual {v1, v2}, Lo/bB;->a(Lak/m;)V

    return-void
.end method

.method private J()V
    .locals 11

    iget-object v0, p0, Lh/dN;->p:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v9, v0, v1

    invoke-virtual {v9}, Lcom/google/googlenav/bG;->b()J

    move-result-wide v4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v6

    invoke-direct {p0}, Lh/dN;->N()Lo/bB;

    move-result-object v10

    new-instance v0, Lcom/google/googlenav/be;

    invoke-virtual {v9}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v8, Lh/cY;

    invoke-direct {v8, p0, v9}, Lh/cY;-><init>(Lh/dN;Lcom/google/googlenav/bG;)V

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/be;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/aj;)V

    invoke-virtual {v10, v0}, Lo/bB;->a(Lak/m;)V

    invoke-static {}, Lo/A;->H()V

    return-void
.end method

.method private K()LH/d;
    .locals 2

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->z()LH/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private L()Law/e;
    .locals 3

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, LH/f;->d()Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method private M()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-interface {v0, v1, v3}, Lcom/google/googlenav/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    const/16 v1, 0x13d

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Li/aE;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method private N()Lo/bB;
    .locals 3

    new-instance v0, Lo/bB;

    iget-object v1, p0, Lh/dN;->g:Lh/eY;

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/bB;-><init>(Lh/eY;Lo/aN;)V

    return-object v0
.end method

.method static synthetic a(Lh/dN;)Lh/eI;
    .locals 1

    iget-object v0, p0, Lh/dN;->r:Lh/eI;

    return-object v0
.end method

.method static synthetic a(Lh/dN;Lo/aH;)Lo/aH;
    .locals 0

    iput-object p1, p0, Lh/dN;->p:Lo/aH;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bv;

    invoke-direct {v1}, Lcom/google/googlenav/bv;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    iput-object v0, v1, Lcom/google/googlenav/bv;->a:Law/e;

    :cond_0
    :goto_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    iput-object v0, v1, Lcom/google/googlenav/bv;->c:Law/e;

    :cond_1
    :goto_3
    new-instance v0, Lh/fT;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lh/fT;-><init>(Lh/dN;Law/e;Lcom/google/googlenav/bv;I)V

    invoke-direct {p0}, Lh/dN;->N()Lo/bB;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lo/bB;->a(Lak/m;Z)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iput-object v0, v1, Lcom/google/googlenav/bv;->b:Law/e;

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    iput-object v0, v1, Lcom/google/googlenav/bv;->d:Law/e;

    goto :goto_3
.end method

.method private a(LH/d;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lh/dN;->L()Law/e;

    move-result-object v0

    invoke-static {v0}, LH/a;->a(Law/e;)LH/m;

    move-result-object v0

    const-string v1, "cz"

    invoke-static {v1}, Lo/A;->c(Ljava/lang/String;)Law/e;

    move-result-object v1

    iget-object v2, p0, Lh/dN;->g:Lh/eY;

    new-instance v3, Lh/di;

    invoke-direct {v3}, Lh/di;-><init>()V

    const/16 v4, 0x92

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh/di;->a(Ljava/lang/String;)Lh/di;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lh/di;->a(I)Lh/di;

    move-result-object v3

    invoke-virtual {v3, v6}, Lh/di;->a(Z)Lh/di;

    move-result-object v3

    invoke-virtual {p1}, LH/d;->c()Lf/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh/di;->a(Lf/h;)Lh/di;

    move-result-object v3

    invoke-virtual {p1}, LH/d;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lh/di;->b(I)Lh/di;

    move-result-object v3

    const/16 v4, 0x7b

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh/di;->b(Ljava/lang/String;)Lh/di;

    move-result-object v3

    new-instance v4, Lh/cc;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lh/cc;-><init>(Lh/dN;LH/m;Lh/fT;)V

    invoke-virtual {v3, v4}, Lh/di;->a(Lh/cD;)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v7}, Lh/di;->c(I)Lh/di;

    move-result-object v0

    const/16 v3, 0x3bc

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lh/di;->c(Ljava/lang/String;)Lh/di;

    move-result-object v0

    const/16 v3, 0x477

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lh/di;->d(Ljava/lang/String;)Lh/di;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lh/di;->a(B)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v7}, Lh/di;->b(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v6}, Lh/di;->c(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v6}, Lh/di;->d(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v1}, Lh/di;->a(Law/e;)Lh/di;

    move-result-object v0

    invoke-virtual {v2, v0}, Lh/eY;->a(Lh/di;)V

    invoke-static {v1}, LaC/a;->a(Law/e;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/bG;I)V
    .locals 3

    iget-object v0, p0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    invoke-direct {p0}, Lh/dN;->M()V

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->e(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->D()Li/C;

    move-result-object v0

    iget-object v1, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v1}, Li/aE;->D()Li/C;

    move-result-object v1

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Li/C;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dN;->v()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/dN;->a(Lcom/google/googlenav/bG;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->i(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    invoke-virtual {p0}, Lh/dN;->v()V

    return-void
.end method

.method static synthetic a(Lh/dN;Lcom/google/googlenav/bG;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/dN;->a(Lcom/google/googlenav/bG;I)V

    return-void
.end method

.method static synthetic a(Lh/dN;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/dN;->o:Z

    return p1
.end method

.method static synthetic b(Lh/dN;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method static synthetic c(Lh/dN;)Lcom/google/googlenav/h;
    .locals 1

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic d(Lh/dN;)Z
    .locals 1

    iget-boolean v0, p0, Lh/dN;->o:Z

    return v0
.end method

.method private m()Lx/B;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lh/dN;->p()Ljava/util/Vector;

    move-result-object v4

    invoke-direct {p0}, Lh/dN;->F()Lx/n;

    move-result-object v5

    invoke-direct {p0}, Lh/dN;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lh/dN;->G()Lx/G;

    move-result-object v0

    move-object v3, v0

    :goto_0
    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/dN;->G_()I

    move-result v1

    invoke-direct {p0}, Lh/dN;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_0
    move-object v3, v6

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    return v0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lh/dN;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x7b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()Ljava/util/Vector;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lh/dN;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lh/dN;->H()Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lh/dN;->k()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x1f0

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/dN;->s()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/dN;->t()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->E()Lo/bj;

    move-result-object v1

    invoke-virtual {v1}, Lo/bj;->l()Lo/I;

    move-result-object v1

    iget-boolean v2, p0, Lh/dN;->q:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v5

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lo/I;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lo/I;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lo/I;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lo/aF;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xa3

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/dN;->q()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/dN;->r()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :cond_7
    if-nez v2, :cond_4

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/googlenav/ui/aV;->br:C

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x88

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x841

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private q()Lcom/google/googlenav/ui/bx;
    .locals 4

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh/dN;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x1f7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x838

    :goto_2
    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    iget-object v3, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private r()Lcom/google/googlenav/ui/bx;
    .locals 4

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh/dN;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x203

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x83a

    :goto_2
    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    iget-object v3, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private s()Lcom/google/googlenav/ui/bx;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    :goto_0
    iget-object v2, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x87

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    iget-object v3, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_1
    const/16 v2, 0x839

    goto :goto_1
.end method

.method private t()Lcom/google/googlenav/ui/bx;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x94

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x93

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x83e

    iget-object v2, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    iget-object v3, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected G_()I
    .locals 1

    invoke-direct {p0}, Lh/dN;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public T_()V
    .locals 4

    iget-object v0, p0, Lh/dN;->m:Lh/ae;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/dN;->m:Lh/ae;

    iget-object v1, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    :cond_0
    iget-object v2, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    iget-boolean v3, p0, Lh/dN;->o:Z

    invoke-virtual {p0}, Lh/dN;->v()V

    iput-object v1, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    iput-object v2, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    iput-boolean v3, p0, Lh/dN;->o:Z

    iput-object v0, p0, Lh/dN;->m:Lh/ae;

    invoke-virtual {p0}, Lh/dN;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dN;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/dN;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/dN;->d()V

    iget v0, p0, Lh/dN;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/dN;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/dN;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    iput v3, p0, Lh/dN;->k:I

    iget-object v0, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    iget-object v0, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/az;->a(Z)V

    iget-object v0, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    invoke-virtual {p0, v0}, Lh/dN;->a(Lcom/google/googlenav/h;)V

    :goto_0
    const/16 v0, 0x835

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v4}, Lh/dN;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    new-instance v1, Lh/fV;

    invoke-direct {v1, p0}, Lh/fV;-><init>(Lh/dN;)V

    invoke-virtual {v0, v1}, Lo/bj;->a(Lo/am;)V

    iget-object v0, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    new-instance v1, Lh/fU;

    invoke-direct {v1, p0}, Lh/fU;-><init>(Lh/dN;)V

    invoke-virtual {v0, v3, v4, v1}, Li/br;->a(ILaU/a;Li/o;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/az;->a(Z)V

    iget-object v0, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {p0}, Lh/dN;->h()V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/h;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    iget-object v0, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    iget-object v0, p0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->j()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {p0}, Lh/dN;->h()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZLh/ae;Z)V
    .locals 0

    iput-object p4, p0, Lh/dN;->m:Lh/ae;

    iput-object p1, p0, Lh/dN;->e:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    iput-boolean p3, p0, Lh/dN;->o:Z

    iput-boolean p5, p0, Lh/dN;->q:Z

    invoke-virtual {p0}, Lh/dN;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lh/eR;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lh/dN;->K()LH/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lh/dN;->a(LH/d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lh/dN;->h()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lh/dN;->a(I)V

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lh/dN;->a(I)V

    :cond_3
    move v0, v2

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lh/dN;->a(I)V

    :cond_4
    iget-object v0, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    iget-object v1, p0, Lh/dN;->c:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {p0}, Lh/dN;->h()V

    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lh/dN;->a(I)V

    :cond_6
    iget-object v0, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    iget-object v1, p0, Lh/dN;->d:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-virtual {p0}, Lh/dN;->h()V

    move v0, v2

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_3

    :sswitch_5
    iput-boolean v2, p0, Lh/dN;->q:Z

    invoke-virtual {p0}, Lh/dN;->h()V

    move v0, v2

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lh/dN;->K()LH/d;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v0}, Lh/dN;->a(LH/d;)V

    goto :goto_4

    :sswitch_7
    invoke-virtual {p0}, Lh/dN;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lh/dN;->J()V

    :goto_5
    move v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lh/dN;->I()V

    goto :goto_5

    :sswitch_8
    invoke-virtual {p0}, Lh/dN;->d()V

    move v0, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x19b -> :sswitch_6
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_8
        0x835 -> :sswitch_0
        0x838 -> :sswitch_1
        0x839 -> :sswitch_3
        0x83a -> :sswitch_2
        0x83e -> :sswitch_4
        0x841 -> :sswitch_5
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    iput-object v1, p0, Lh/dN;->l:Lcom/google/googlenav/h;

    const/4 v0, 0x1

    iput v0, p0, Lh/dN;->k:I

    iput-object v1, p0, Lh/dN;->n:Lx/B;

    iget-object v0, p0, Lh/dN;->m:Lh/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->m:Lh/ae;

    invoke-interface {v0}, Lh/ae;->a()V

    :cond_0
    iput-object v1, p0, Lh/dN;->m:Lh/ae;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lh/dN;->k:I

    const-string v0, "cy"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lh/eR;->d()V

    return-void
.end method

.method h()V
    .locals 3

    invoke-virtual {p0}, Lh/dN;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/dN;->n:Lx/B;

    if-nez v0, :cond_1

    iget-object v0, p0, Lh/dN;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dN;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/dN;->a(Lx/J;)V

    :cond_1
    iget-object v0, p0, Lh/dN;->n:Lx/B;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lh/dN;->m()Lx/B;

    move-result-object v0

    iput-object v0, p0, Lh/dN;->n:Lx/B;

    :cond_2
    :goto_1
    iget-object v0, p0, Lh/dN;->j:Lx/J;

    if-nez v0, :cond_4

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/dN;->n:Lx/B;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dN;->j:Lx/J;

    iget-object v0, p0, Lh/dN;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lh/dN;->p()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0}, Lh/dN;->F()Lx/n;

    move-result-object v1

    iget-object v2, p0, Lh/dN;->n:Lx/B;

    invoke-virtual {v2, v0}, Lx/B;->a(Ljava/util/Vector;)V

    iget-object v0, p0, Lh/dN;->n:Lx/B;

    invoke-virtual {v0, v1}, Lx/B;->a(Lx/n;)V

    iget-object v0, p0, Lh/dN;->n:Lx/B;

    invoke-direct {p0}, Lh/dN;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lh/dN;->n()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh/dN;->n:Lx/B;

    invoke-direct {p0}, Lh/dN;->G()Lx/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Lx/G;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lh/dN;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lh/dN;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->p:Lo/aH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->p:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->p:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dN;->f:Lcom/google/googlenav/h;

    iget-object v1, p0, Lh/dN;->p:Lo/aH;

    invoke-virtual {v1}, Lo/aH;->d()Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/h;->a(Lcom/google/googlenav/bG;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
