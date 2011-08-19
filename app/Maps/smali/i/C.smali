.class public Li/C;
.super Li/bl;

# interfaces
.implements LaD/n;
.implements Lo/bP;
.implements Lo/bn;
.implements Lo/r;
.implements Lx/K;


# instance fields
.field private E:Li/D;

.field private O:LaD/r;

.field private P:Lc/p;

.field private Q:Lc/p;

.field private R:Lcom/google/googlenav/ui/bu;

.field private S:Li/br;

.field private T:LaU/a;

.field private U:Lo/aH;

.field private V:Z

.field private W:[Lcom/google/googlenav/ui/r;

.field private X:[Lcom/google/googlenav/ui/r;

.field private Y:[Lcom/google/googlenav/ui/r;

.field private Z:Lo/bt;

.field protected final a:LaF/a;

.field private aa:Lo/cg;

.field private ab:LaF/a;

.field private ac:Lc/k;

.field private ad:Lh/eY;

.field private ae:Z

.field private af:J

.field private final b:Lc/s;

.field private c:Lo/bg;

.field private d:Lo/by;

.field private e:Lo/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;LaU/a;Lcom/google/googlenav/ui/X;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/j;Li/br;Lc/k;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Li/bl;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    new-instance v0, Lc/s;

    invoke-direct {v0}, Lc/s;-><init>()V

    iput-object v0, p0, Li/C;->b:Lc/s;

    new-instance v0, Lo/aH;

    const/4 p2, 0x0

    check-cast p2, Ljava/util/Vector;

    invoke-direct {v0, p2}, Lo/aH;-><init>(Ljava/util/Vector;)V

    iput-object v0, p0, Li/C;->U:Lo/aH;

    new-instance v0, LaF/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LaF/a;-><init>(II)V

    iput-object v0, p0, Li/C;->ab:LaF/a;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Li/C;->a:LaF/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v6

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v7, p1

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Li/C;->a(LaU/a;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Lh/eY;Lcom/google/googlenav/ui/aT;Li/br;Lc/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;LaU/a;Lcom/google/googlenav/ui/X;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Li/br;Lc/k;)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p5}, Li/bl;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    new-instance v0, Lc/s;

    invoke-direct {v0}, Lc/s;-><init>()V

    iput-object v0, p0, Li/C;->b:Lc/s;

    new-instance v0, Lo/aH;

    const/4 p2, 0x0

    check-cast p2, Ljava/util/Vector;

    invoke-direct {v0, p2}, Lo/aH;-><init>(Ljava/util/Vector;)V

    iput-object v0, p0, Li/C;->U:Lo/aH;

    new-instance v0, LaF/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LaF/a;-><init>(II)V

    iput-object v0, p0, Li/C;->ab:LaF/a;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Li/C;->a:LaF/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v6

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v7, p1

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Li/C;->a(LaU/a;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Lh/eY;Lcom/google/googlenav/ui/aT;Li/br;Lc/k;)V

    return-void
.end method

.method static synthetic a(Li/C;)Lc/s;
    .locals 1

    iget-object v0, p0, Li/C;->b:Lc/s;

    return-object v0
.end method

.method private a(LaU/a;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Lh/eY;Lcom/google/googlenav/ui/aT;Li/br;Lc/k;)V
    .locals 13

    invoke-virtual/range {p7 .. p7}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v2

    invoke-virtual {v2}, LaD/t;->a()LaD/r;

    move-result-object v2

    iput-object v2, p0, Li/C;->O:LaD/r;

    new-instance v2, Lc/p;

    iget-object v3, p0, Li/C;->O:LaD/r;

    const/4 v4, 0x0

    sget v5, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v2, v3, v4, v5}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v2, p0, Li/C;->P:Lc/p;

    new-instance v2, Lc/p;

    iget-object v3, p0, Li/C;->O:LaD/r;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v2, p0, Li/C;->Q:Lc/p;

    iput-object p2, p0, Li/C;->c:Lo/bg;

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Li/C;->d:Lo/by;

    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Li/C;->e:Lo/g;

    iget-object v2, p0, Li/C;->e:Lo/g;

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/C;->e:Lo/g;

    invoke-virtual {v2, p0}, Lo/g;->a(Li/C;)V

    :cond_0
    iput-object p1, p0, Li/C;->T:LaU/a;

    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Li/C;->R:Lcom/google/googlenav/ui/bu;

    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Li/C;->ad:Lh/eY;

    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Li/C;->S:Li/br;

    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Li/C;->ac:Lc/k;

    new-instance v2, Li/D;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Li/D;-><init>(Li/C;Li/aq;)V

    iput-object v2, p0, Li/C;->E:Li/D;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/r;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    iput-object v2, p0, Li/C;->X:[Lcom/google/googlenav/ui/r;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/r;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iput-object v2, p0, Li/C;->W:[Lcom/google/googlenav/ui/r;

    new-instance v2, Lo/bt;

    invoke-direct {v2, p0}, Lo/bt;-><init>(Li/C;)V

    iput-object v2, p0, Li/C;->Z:Lo/bt;

    new-instance v2, Lo/cg;

    iget-object v5, p0, Li/C;->h:Lf/v;

    iget-object v6, p0, Li/C;->i:Lf/Y;

    iget-object v7, p0, Li/C;->b:Lc/s;

    iget-object v11, p0, Li/C;->c:Lo/bg;

    move-object v3, p1

    move-object/from16 v4, p7

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lo/cg;-><init>(LaU/a;Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lc/s;Li/C;Lo/by;Lo/g;Lo/bg;Lh/eY;)V

    iput-object v2, p0, Li/C;->aa:Lo/cg;

    const-string v2, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v3, 0x1

    new-instance v4, Li/aq;

    invoke-direct {v4, p0}, Li/aq;-><init>(Li/C;)V

    invoke-static {v2, v3, v4}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    iget-object v2, p0, Li/C;->O:LaD/r;

    invoke-virtual {v2, p0}, LaD/r;->a(LaD/n;)V

    invoke-static {}, Lac/d;->b()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Li/C;->p()V

    :cond_1
    return-void
.end method

.method static synthetic a(Li/C;Z)V
    .locals 0

    invoke-direct {p0, p1}, Li/C;->n(Z)V

    return-void
.end method

.method private a(Lo/U;IILk/m;Lcom/google/googlenav/ui/x;)V
    .locals 6

    invoke-virtual {p1}, Lo/U;->z()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/C;->h:Lf/v;

    iget-object v2, p0, Li/C;->a:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v1, v0, LaF/a;->a:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, LaF/a;->a:I

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v1, v0, LaF/a;->b:I

    sub-int/2addr v1, p3

    iput v1, v0, LaF/a;->b:I

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v0, v0, LaF/a;->a:I

    iget-object v1, p0, Li/C;->a:LaF/a;

    iget v1, v1, LaF/a;->b:I

    invoke-static {p4, v0, v1, p2, p3}, Lk/o;->a(Lk/m;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/U;->D()C

    move-result v0

    iget-object v1, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {p5}, Lcom/google/googlenav/ui/x;->a()Lk/m;

    move-result-object v2

    iget-object v3, p0, Li/C;->a:LaF/a;

    iget v3, v3, LaF/a;->a:I

    iget-object v4, p0, Li/C;->a:LaF/a;

    iget v4, v4, LaF/a;->b:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/googlenav/ui/aV;->a(CLk/m;II)V

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v0, v0, LaF/a;->a:I

    sget v1, LaD/q;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Li/C;->a:LaF/a;

    iget v1, v1, LaF/a;->b:I

    sget v2, LaD/q;->b:I

    add-int/2addr v1, v2

    iget-object v2, p0, Li/C;->O:LaD/r;

    new-instance v3, Lc/a;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-direct {v3, v4, v5}, Lc/a;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v2, v3}, LaD/r;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v2

    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p5}, Lcom/google/googlenav/ui/x;->a()Lk/m;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lk/m;->a(Lk/l;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Lcom/google/googlenav/ui/x;->a()Lk/m;

    move-result-object v2

    iget-object v3, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v4

    sget v5, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/aV;->a(ZI)Lk/l;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lk/m;->a(Lk/l;II)V

    goto/16 :goto_0
.end method

.method static synthetic b(Li/C;)Lo/by;
    .locals 1

    iget-object v0, p0, Li/C;->d:Lo/by;

    return-object v0
.end method

.method private b(Lax/c;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/C;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->U()V

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Li/C;->aH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/C;->V()V

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Li/C;Z)Z
    .locals 0

    iput-boolean p1, p0, Li/C;->ae:Z

    return p1
.end method

.method private bC()Lo/U;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v2}, Lcom/google/googlenav/j;->b(I)V

    move v0, v2

    :cond_1
    if-ne v0, v2, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v0

    goto :goto_0
.end method

.method private bD()V
    .locals 1

    invoke-direct {p0}, Li/C;->bF()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/C;->t:Lx/J;

    return-void
.end method

.method private bE()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/C;->v:Lx/J;

    return-void
.end method

.method private bF()V
    .locals 4

    iget-object v0, p0, Li/C;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    instance-of v0, v0, Lx/B;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->b:Lc/s;

    iget-object v1, p0, Li/C;->n:Lx/J;

    invoke-interface {v1}, Lx/J;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/s;->b(I)V

    invoke-direct {p0}, Li/C;->bR()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Li/C;->b:Lc/s;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/s;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/C;->b:Lc/s;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lc/s;->a(J)V

    goto :goto_0
.end method

.method private bR()Lo/U;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/C;->n:Lx/J;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/C;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/B;

    iget-object v1, v0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Li/C;->n:Lx/J;

    invoke-interface {v1}, Lx/J;->h()I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iget-object v1, v0, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    instance-of v1, v1, Lo/U;

    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast p0, Lo/U;

    move-object v0, p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lx/B;->a()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Lx/B;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method private bS()V
    .locals 3

    new-instance v0, Li/ao;

    invoke-direct {v0, p0}, Li/ao;-><init>(Li/C;)V

    iget-object v1, p0, Li/C;->ac:Lc/k;

    iget-object v2, p0, Li/C;->T:LaU/a;

    invoke-virtual {v1, v2, v0}, Lc/k;->a(LaU/a;Lc/e;)V

    return-void
.end method

.method private bT()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Li/C;->bW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Lo/U;->t()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Li/C;->W:[Lcom/google/googlenav/ui/r;

    new-instance v4, Li/ap;

    invoke-direct {v4, p0, v2, v0}, Li/ap;-><init>(Li/C;ILo/U;)V

    aput-object v4, v3, v6

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Li/C;->Y:[Lcom/google/googlenav/ui/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->Y:[Lcom/google/googlenav/ui/r;

    aget-object v0, v0, v6

    iget-object v1, p0, Li/C;->X:[Lcom/google/googlenav/ui/r;

    aget-object v1, v1, v6

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->c(Li/x;)V

    :cond_1
    return-void

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private bU()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Li/C;->x:Z

    if-nez v0, :cond_3

    move v0, v7

    :goto_0
    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-nez v1, :cond_4

    move v1, v7

    :goto_1
    iget-object v2, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Li/C;->aI()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_2
    iget-object v3, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v7

    :goto_3
    iget-object v4, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Li/C;->F:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    iget v4, p0, Li/C;->F:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_7

    :cond_0
    iget-boolean v4, p0, Li/C;->G:Z

    if-nez v4, :cond_7

    move v4, v7

    :goto_4
    iget-object v5, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1
    iget-object v5, p0, Li/C;->b:Lc/s;

    if-eqz v5, :cond_8

    iget-object v5, p0, Li/C;->b:Lc/s;

    invoke-virtual {v5}, Lc/s;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v7

    :goto_5
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_9

    :cond_2
    move v0, v7

    :goto_6
    return v0

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    move v3, v6

    goto :goto_3

    :cond_7
    move v4, v6

    goto :goto_4

    :cond_8
    move v5, v6

    goto :goto_5

    :cond_9
    move v0, v6

    goto :goto_6
.end method

.method private bV()V
    .locals 1

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->v()V

    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/C;->E:Li/D;

    invoke-virtual {v0}, Li/D;->a()V

    :cond_0
    invoke-direct {p0}, Li/C;->bD()V

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->Y_()V

    :cond_1
    return-void
.end method

.method private bW()Z
    .locals 2

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/U;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Li/C;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bp()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private bv()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/C;->aa:Lo/cg;

    const/16 v1, 0x138

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/cg;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private bw()Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Li/C;->br()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    return-object v0
.end method

.method static synthetic c(Li/C;)Lo/aH;
    .locals 1

    iget-object v0, p0, Li/C;->U:Lo/aH;

    return-object v0
.end method

.method private d(Lo/U;)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Li/C;)LaU/a;
    .locals 1

    iget-object v0, p0, Li/C;->T:LaU/a;

    return-object v0
.end method

.method static synthetic e(Li/C;)Lc/k;
    .locals 1

    iget-object v0, p0, Li/C;->ac:Lc/k;

    return-object v0
.end method

.method static synthetic f(Li/C;)LaD/r;
    .locals 1

    iget-object v0, p0, Li/C;->O:LaD/r;

    return-object v0
.end method

.method static synthetic g(Li/C;)Lh/eY;
    .locals 1

    iget-object v0, p0, Li/C;->ad:Lh/eY;

    return-object v0
.end method

.method private g(Lax/c;)Z
    .locals 9

    const/4 v8, -0x1

    const/16 v7, 0x34

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v1

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    if-eq v1, v7, :cond_1

    const/16 v2, 0x36

    if-eq v1, v2, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Li/C;->z:Z

    if-ne v1, v7, :cond_2

    const-string v2, "pf"

    :goto_1
    invoke-static {v2}, Lo/A;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Li/C;->aI()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, v8, :cond_3

    invoke-virtual {p0, v0}, Li/C;->i(I)V

    move v0, v5

    goto :goto_0

    :cond_2
    const-string v2, "nf"

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-virtual {v2}, Lo/aH;->b()I

    move-result v2

    if-le v2, v5, :cond_7

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-virtual {v2}, Lo/aH;->i()Lac/s;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lac/s;->c(J)I

    move-result v3

    if-gez v3, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    if-ne v1, v7, :cond_6

    move v1, v8

    :goto_2
    add-int/2addr v1, v3

    invoke-virtual {v2}, Lac/s;->b()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2}, Lac/s;->b()I

    move-result v3

    rem-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lac/s;->a(I)J

    move-result-wide v1

    long-to-int v1, v1

    if-eq v1, v0, :cond_7

    invoke-virtual {p0, v1}, Li/C;->i(I)V

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-static {v0}, Lo/A;->a(Lcom/google/googlenav/j;)V

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_0
.end method

.method static synthetic h(Li/C;)Z
    .locals 1

    iget-boolean v0, p0, Li/C;->V:Z

    return v0
.end method

.method private n(Z)V
    .locals 7

    const/16 v6, 0x11

    invoke-virtual {p0}, Li/C;->aY()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/C;->V:Z

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/U;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/U;->d()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/U;->t()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const v0, 0x7fffffff

    :cond_2
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bu;->a(ILf/h;)Lf/l;

    move-result-object v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0xf

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lf/l;->a()I

    move-result v2

    if-le v2, v6, :cond_5

    invoke-static {v6}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v2, p0, Li/C;->i:Lf/Y;

    invoke-virtual {v2, v1, v0}, Lf/Y;->d(Lf/h;Lf/l;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/C;->V:Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->Q()V

    iget-object v2, p0, Li/C;->i:Lf/Y;

    invoke-virtual {v2, v1, v0}, Lf/Y;->e(Lf/h;Lf/l;)V

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 4

    invoke-super {p0}, Li/bl;->A()V

    iget-object v0, p0, Li/C;->d:Lo/by;

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    return-void
.end method

.method public B()Lo/aH;
    .locals 1

    iget-object v0, p0, Li/C;->U:Lo/aH;

    return-object v0
.end method

.method public D()Lc/k;
    .locals 1

    iget-object v0, p0, Li/C;->ac:Lc/k;

    return-object v0
.end method

.method public G()V
    .locals 2

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/C;->b:Lc/s;

    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    invoke-virtual {v0, v1}, Lc/s;->a(B)V

    :cond_0
    invoke-super {p0}, Li/bl;->G()V

    return-void
.end method

.method public H()[Lax/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Lc/p;
    .locals 1

    iget-object v0, p0, Li/C;->Q:Lc/p;

    return-object v0
.end method

.method public J()Lc/s;
    .locals 1

    iget-object v0, p0, Li/C;->b:Lc/s;

    return-object v0
.end method

.method public L()Lo/g;
    .locals 1

    iget-object v0, p0, Li/C;->e:Lo/g;

    return-object v0
.end method

.method public M()V
    .locals 0

    invoke-direct {p0}, Li/C;->bD()V

    invoke-direct {p0}, Li/C;->bE()V

    invoke-super {p0}, Li/bl;->M()V

    return-void
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->aY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->X:[Lcom/google/googlenav/ui/r;

    iput-object v0, p0, Li/C;->Y:[Lcom/google/googlenav/ui/r;

    :goto_0
    iget-object v0, p0, Li/C;->Y:[Lcom/google/googlenav/ui/r;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Li/C;->W:[Lcom/google/googlenav/ui/r;

    iput-object v0, p0, Li/C;->Y:[Lcom/google/googlenav/ui/r;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public N()Lo/U;
    .locals 1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Li/C;->bC()Lo/U;

    move-result-object v0

    goto :goto_0
.end method

.method public N_()V
    .locals 1

    invoke-super {p0}, Li/bl;->N_()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/C;->V:Z

    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->c(Li/x;)V

    return-void
.end method

.method public O()V
    .locals 3

    invoke-static {}, Lo/A;->m()V

    const/16 v0, 0x148

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/C;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    new-instance v1, Li/as;

    invoke-direct {v1, p0}, Li/as;-><init>(Li/C;)V

    invoke-virtual {v0, v1, p0}, Lh/eY;->a(Lh/aK;Lcom/google/googlenav/ui/aY;)V

    return-void
.end method

.method public P()V
    .locals 1

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/C;->Y_()V

    :cond_0
    return-void
.end method

.method public S()J
    .locals 5

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Li/C;->br()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v3

    goto :goto_0
.end method

.method protected T()V
    .locals 2

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/U;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->b(I)V

    :cond_0
    :goto_0
    invoke-super {p0}, Li/bl;->T()V

    return-void

    :cond_1
    iget-boolean v0, p0, Li/C;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/C;->n(Z)V

    goto :goto_0
.end method

.method public U()V
    .locals 1

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Li/C;->c(Lo/U;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/C;->n(Z)V

    invoke-static {}, Lo/A;->a()V

    :cond_0
    invoke-virtual {p0}, Li/C;->T()V

    return-void
.end method

.method public V()V
    .locals 2

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Li/C;->c(Lo/U;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/C;->n(Z)V

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-static {v0}, Lo/A;->a(Lcom/google/googlenav/j;)V

    :cond_1
    invoke-virtual {p0}, Li/C;->G()V

    return-void
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1f1

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

    const/16 v0, 0x12

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/bl;->X()I

    move-result v0

    goto :goto_0
.end method

.method protected Y_()V
    .locals 2

    invoke-super {p0}, Li/bl;->Y_()V

    iget-object v0, p0, Li/C;->T:LaU/a;

    iget-object v1, p0, Li/C;->ad:Lh/eY;

    invoke-static {v0, v1, p0}, Lc/q;->a(LaU/a;Lh/eY;Li/C;)V

    return-void
.end method

.method public Z_()V
    .locals 2

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/C;->bF()V

    iget-object v0, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v0}, Lo/bt;->c()Lx/B;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/C;->g(Z)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Li/C;->Y_()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/U;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v1, v0}, Lo/bt;->a(Lo/U;)Lx/B;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v1, v0}, Lo/bt;->b(Lo/U;)Lx/B;

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Li/bl;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    invoke-static {p3}, Lcom/google/googlenav/bc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aH;->b(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aH;->c(Ljava/lang/String;)Lcom/google/googlenav/aH;

    return-void

    :cond_1
    move-wide v0, v3

    goto :goto_0

    :cond_2
    move-wide v2, v3

    goto :goto_1
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    check-cast p1, Lcom/google/googlenav/z;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->q()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Li/C;->c(Lcom/google/googlenav/z;)V

    iput-object p1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0}, Li/C;->Z_()V

    invoke-virtual {p0}, Li/C;->aY()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/C;->Y()V

    :cond_2
    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/C;->E:Li/D;

    invoke-virtual {v0}, Li/D;->a()V

    goto :goto_0
.end method

.method public a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V
    .locals 3

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lo/U;->a(Lf/N;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/U;->a(J)V

    if-nez p2, :cond_2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lo/U;->c(J)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/U;->c(J)V

    :cond_3
    invoke-virtual {v0}, Lo/U;->v()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/C;->i(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/C;->V:Z

    :cond_4
    invoke-direct {p0}, Li/C;->bD()V

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->Y_()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lo/U;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->b(I)V

    :cond_1
    invoke-virtual {p0}, Li/C;->U()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lo/U;)V
    .locals 4

    const/4 v3, -0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v3}, Lcom/google/googlenav/j;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lo/aH;->a(J)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->b(I)V

    goto :goto_0
.end method

.method public a(ZLcom/google/googlenav/z;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Li/C;->c(Lcom/google/googlenav/j;)V

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Li/C;->V:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google/googlenav/z;->c()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/googlenav/z;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Li/C;->d(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Li/C;->aN()Z

    invoke-direct {p0, v2}, Li/C;->n(Z)V

    :cond_2
    :goto_2
    const/16 v0, 0x144

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/C;->a(IILjava/lang/Object;)Z

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Li/C;->d(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Li/C;->aH()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_6
    invoke-virtual {p2}, Lcom/google/googlenav/z;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Li/C;->d(I)V

    invoke-virtual {p0}, Li/C;->aN()Z

    goto :goto_2
.end method

.method public a(ZLo/aT;)V
    .locals 0

    invoke-direct {p0}, Li/C;->bV()V

    return-void
.end method

.method public a([Law/e;)V
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1, v6}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v6}, Law/b;->f(Law/e;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Li/C;->U:Lo/aH;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lo/U;->a(Law/e;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/C;->Z_()V

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Li/C;->aa:Lo/cg;

    invoke-virtual {v0, p1, p2, p3}, Lo/cg;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Li/bl;->a(IILjava/lang/Object;)Z

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

.method protected a(Lax/c;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/C;->bR()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aH;->a(J)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Li/C;->d(I)V

    :cond_0
    invoke-virtual {p0}, Li/C;->U()V

    :goto_0
    move v0, v4

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Li/C;->F:I

    invoke-virtual {p0}, Li/C;->U()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lo/A;->c()V

    invoke-virtual {p0}, Li/C;->Y_()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Li/C;->b(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Li/C;->g(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Li/C;->f(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public a(Lax/e;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/googlenav/ui/w;->t:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12d

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v4}, Li/C;->a(IILjava/lang/Object;)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/w;->v:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/C;->d:Lo/by;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Li/bl;->a(Lax/e;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 5

    new-instance v0, Lcom/google/googlenav/z;

    invoke-direct {v0}, Lcom/google/googlenav/z;-><init>()V

    iput-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    iget-object v1, p0, Li/C;->S:Li/br;

    invoke-virtual {p0}, Li/C;->b()I

    move-result v2

    iget-object v3, p0, Li/C;->T:LaU/a;

    new-instance v4, Li/ar;

    invoke-direct {v4, p0, v0}, Li/ar;-><init>(Li/C;Lcom/google/googlenav/z;)V

    invoke-virtual {v1, v2, v3, v4}, Li/br;->a(ILaU/a;Li/o;)V

    iget-object v0, p0, Li/C;->e:Lo/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->e:Lo/g;

    invoke-virtual {v0}, Lo/g;->a()V

    :cond_0
    invoke-direct {p0}, Li/C;->bv()V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lx/Q;)Z
    .locals 1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-static {v0}, Lo/A;->a(Lcom/google/googlenav/j;)V

    invoke-super {p0, p1}, Li/bl;->a(Lx/Q;)Z

    move-result v0

    return v0
.end method

.method public aM()V
    .locals 1

    invoke-super {p0}, Li/bl;->aM()V

    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->c(Li/x;)V

    return-void
.end method

.method public aN()Z
    .locals 1

    invoke-super {p0}, Li/bl;->aN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/C;->bT()V

    :cond_0
    return v0
.end method

.method public aV()Z
    .locals 1

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/bl;->aV()Z

    move-result v0

    goto :goto_0
.end method

.method public aW()Z
    .locals 1

    invoke-direct {p0}, Li/C;->bW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aa()V
    .locals 1

    invoke-direct {p0}, Li/C;->bF()V

    iget-object v0, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v0}, Lo/bt;->b()V

    invoke-super {p0}, Li/bl;->aa()V

    return-void
.end method

.method public aa_()V
    .locals 1

    invoke-direct {p0}, Li/C;->bD()V

    invoke-direct {p0}, Li/C;->bE()V

    invoke-super {p0}, Li/bl;->M()V

    iget v0, p0, Li/C;->F:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/C;->b(I)V

    :cond_0
    return-void
.end method

.method public ae()V
    .locals 0

    invoke-super {p0}, Li/bl;->ae()V

    return-void
.end method

.method protected ah()V
    .locals 2

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->n:Lx/J;

    iget-object v1, p0, Li/C;->b:Lc/s;

    invoke-virtual {v1}, Lc/s;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lx/J;->e_(I)V

    :cond_0
    return-void
.end method

.method protected ak()V
    .locals 1

    invoke-direct {p0}, Li/C;->bU()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Li/bl;->ak()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/C;->bT()V

    goto :goto_0
.end method

.method protected aq()I
    .locals 2

    iget-object v0, p0, Li/C;->b:Lc/s;

    invoke-virtual {v0}, Lc/s;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Li/C;->b:Lc/s;

    invoke-virtual {v0}, Lc/s;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/bl;->aq()I

    move-result v0

    goto :goto_0
.end method

.method public ar_()V
    .locals 1

    iget-object v0, p0, Li/C;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method

.method protected ax()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Li/C;->bp()I

    move-result v0

    invoke-virtual {p0, p1}, Li/C;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 9

    const/16 v1, 0xe

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v4

    iget-object v0, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->d(B)I

    move-result v2

    iget-object v0, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->c(B)I

    move-result v3

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->j()Lac/s;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6}, Lac/s;->b()I

    move-result v7

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v6, v8}, Lac/s;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v1, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/C;->a(Lo/U;IILk/m;Lcom/google/googlenav/ui/x;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/C;->a(Lo/U;IILk/m;Lcom/google/googlenav/ui/x;)V

    :cond_1
    return-void
.end method

.method public b(ZLo/aT;)V
    .locals 0

    invoke-direct {p0}, Li/C;->bV()V

    return-void
.end method

.method public b(Lo/U;)Z
    .locals 2

    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bo()V
    .locals 1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/C;->d(I)V

    invoke-virtual {p0}, Li/C;->aN()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/C;->d(I)V

    goto :goto_0
.end method

.method bq()Lo/bt;
    .locals 1

    iget-object v0, p0, Li/C;->Z:Lo/bt;

    return-object v0
.end method

.method public br()J
    .locals 2

    iget-object p0, p0, Li/C;->k:Lcom/google/googlenav/j;

    check-cast p0, Lcom/google/googlenav/z;

    invoke-virtual {p0}, Lcom/google/googlenav/z;->aq()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bs()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Li/C;->af:J

    iget-object v0, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v0}, Lo/bt;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-le v0, v6, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->b()I

    move-result v0

    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v2, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    iget-wide v3, p0, Li/C;->af:J

    invoke-virtual {v2, v3, v4}, Lo/U;->f(J)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_0
.end method

.method public bt()I
    .locals 1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    return v0
.end method

.method public bu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/z;)V
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->c()Z

    move-result v1

    invoke-direct {p0}, Li/C;->bF()V

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Li/C;->bC()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2
    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/z;->a(B)V

    :cond_3
    :goto_1
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v5}, Lcom/google/googlenav/j;->c_()I

    move-result v5

    if-ge v0, v5, :cond_5

    new-instance v5, Ljava/lang/Long;

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v6

    invoke-virtual {v6, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v6

    invoke-virtual {v6}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v6

    invoke-virtual {v6, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_3

    invoke-virtual {p0}, Li/C;->aF()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/z;->a(B)V

    goto :goto_1

    :cond_5
    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    iput-object v0, p0, Li/C;->U:Lo/aH;

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v6}, Lo/aH;->b()I

    move-result v6

    move v7, v0

    :goto_3
    if-ge v5, v6, :cond_b

    iget-object v0, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v0, v5}, Lo/aH;->a(I)Lo/U;

    move-result-object v8

    invoke-virtual {v8}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lo/ce;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Li/C;->E:Li/D;

    invoke-virtual {v0, v8}, Li/D;->a(Lo/U;)Z

    :cond_6
    invoke-virtual {v8}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    if-eqz v0, :cond_d

    invoke-virtual {v8}, Lo/U;->d()Lf/h;

    move-result-object v9

    invoke-virtual {v8}, Lo/U;->t()J

    move-result-wide v10

    invoke-virtual {v0}, Lo/U;->d()Lf/h;

    move-result-object v0

    invoke-static {v9, v10, v11, v0}, Lo/bg;->a(Lf/h;JLf/h;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lo/U;->d(Z)V

    if-nez v7, :cond_d

    invoke-virtual {v8}, Lo/U;->b()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8}, Lo/U;->m()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_4
    if-nez v1, :cond_9

    invoke-virtual {v8}, Lo/U;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    const-wide/16 v9, -0x1

    cmp-long v7, v2, v9

    if-nez v7, :cond_9

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ar()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1, v5}, Lcom/google/googlenav/z;->b(I)V

    :cond_7
    :goto_5
    invoke-virtual {v8}, Lo/U;->b()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Li/C;->e:Lo/g;

    if-eqz v7, :cond_a

    iget-object v7, p0, Li/C;->e:Lo/g;

    invoke-virtual {v8}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Lo/g;->a(Ljava/lang/Long;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Li/C;->e:Lo/g;

    invoke-virtual {v8}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Lo/g;->b(Ljava/lang/Long;)Lo/aI;

    move-result-object v7

    invoke-virtual {v7}, Lo/aI;->d()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lo/U;->d(J)V

    invoke-direct {p0, v8}, Li/C;->d(Lo/U;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    invoke-virtual {v7}, Lo/aI;->a()J

    move-result-wide v10

    invoke-static {v10, v11, v9}, Lo/A;->a(JI)V

    :cond_8
    :goto_6
    invoke-virtual {v8}, Lo/U;->C()V

    add-int/lit8 v5, v5, 0x1

    move v7, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v8}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v2, v9

    if-nez v7, :cond_7

    invoke-virtual {p1, v5}, Lcom/google/googlenav/z;->b(I)V

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/z;->d_()B

    move-result v7

    iget-object v9, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v9}, Lcom/google/googlenav/j;->d_()B

    move-result v9

    if-eq v7, v9, :cond_7

    iget-object v7, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v7}, Lcom/google/googlenav/j;->d_()B

    move-result v7

    invoke-virtual {p1, v7}, Lcom/google/googlenav/z;->a(B)V

    goto :goto_5

    :cond_a
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lo/U;->d(J)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->a()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v2}, Lo/aH;->b()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_c

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v3

    new-instance v4, LaD/j;

    invoke-virtual {v3}, Lo/U;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v5, v3}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    iget-object v1, p0, Li/C;->O:LaD/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    new-instance v0, Lc/p;

    iget-object v1, p0, Li/C;->O:LaD/r;

    iget-object v2, p0, Li/C;->U:Lo/aH;

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v0, p0, Li/C;->P:Lc/p;

    new-instance v0, Lc/p;

    iget-object v1, p0, Li/C;->O:LaD/r;

    iget-object v2, p0, Li/C;->U:Lo/aH;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v0, p0, Li/C;->Q:Lc/p;

    invoke-direct {p0}, Li/C;->bS()V

    goto/16 :goto_0

    :cond_d
    move v0, v7

    goto/16 :goto_4
.end method

.method protected c(Lo/U;)V
    .locals 1

    invoke-virtual {p1}, Lo/U;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/U;->C()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/C;->ae:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Li/C;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/C;->b:Lc/s;

    invoke-virtual {v0}, Lc/s;->a()B

    move-result v0

    if-eq v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Li/C;->aG()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Li/C;->b:Lc/s;

    invoke-virtual {v0}, Lc/s;->a()B

    move-result v0

    invoke-virtual {p0, v0}, Li/C;->a(B)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Li/C;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    :cond_5
    invoke-super {p0}, Li/bl;->d()V

    goto :goto_0
.end method

.method protected d(Lcom/google/googlenav/ui/x;)V
    .locals 7

    invoke-super {p0, p1}, Li/bl;->d(Lcom/google/googlenav/ui/x;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Li/C;->bW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/C;->N()Lo/U;

    move-result-object v4

    invoke-virtual {v4}, Lo/U;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Li/C;->h:Lf/v;

    invoke-virtual {v4}, Lo/U;->d()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/C;->a:LaF/a;

    invoke-virtual {v1, v2, v3}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v1, p0, Li/C;->h:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->c(I)I

    move-result v3

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v1, v0, LaF/a;->a:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, LaF/a;->a:I

    iget-object v0, p0, Li/C;->a:LaF/a;

    iget v1, v0, LaF/a;->b:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, LaF/a;->b:I

    iget-object v0, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v1

    iget-object v2, p0, Li/C;->a:LaF/a;

    iget-object v5, p0, Li/C;->h:Lf/v;

    invoke-virtual {v5}, Lf/v;->p()Z

    move-result v5

    invoke-virtual {v4, v5}, Lo/U;->e(Z)I

    move-result v5

    iget-object v6, p0, Li/C;->h:Lf/v;

    invoke-virtual {v6}, Lf/v;->p()Z

    move-result v6

    invoke-virtual {v4, v6}, Lo/U;->f(Z)I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/aV;->a(Lk/m;LaF/a;IIII)V

    goto :goto_0
.end method

.method protected e(Lcom/google/googlenav/ui/x;)V
    .locals 3

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {p0}, Li/C;->aK()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Li/C;->b(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 2

    invoke-super {p0}, Li/bl;->h()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/C;->o:Lcom/google/googlenav/ui/X;

    iget-object v1, p0, Li/C;->R:Lcom/google/googlenav/ui/bu;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/X;->b(Lcom/google/googlenav/ui/bA;)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 3

    iget-object v0, p0, Li/C;->b:Lc/s;

    iget-object v1, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v1, p1}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/s;->a(J)V

    iget-object v0, p0, Li/C;->b:Lc/s;

    iget-object v1, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v1}, Lo/bt;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lc/s;->b(I)V

    invoke-virtual {p0, p1}, Li/C;->d(I)V

    invoke-virtual {p0}, Li/C;->aN()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li/C;->n(Z)V

    return-void
.end method

.method public j(I)Lx/J;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Li/C;->H:Z

    iget-object v0, p0, Li/C;->B:Li/aG;

    check-cast v0, Li/am;

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/am;->a(Lo/U;)Lx/J;

    move-result-object v0

    iput-boolean v2, p0, Li/C;->H:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Li/bl;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/C;->V:Z

    return-void
.end method

.method public j(Z)V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public k(I)V
    .locals 1

    invoke-virtual {p0}, Li/C;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/C;->e(Z)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Li/C;->h(I)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v0, p1}, Lo/bt;->a(Z)V

    invoke-virtual {p0}, Li/C;->Z_()V

    return-void
.end method

.method public l(Z)I
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    :cond_0
    if-eqz p1, :cond_3

    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    sub-int/2addr v0, v4

    :cond_1
    :goto_1
    iget-object v1, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v1, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    iget-object v2, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v2}, Lo/bt;->d()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lo/U;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Li/C;->af:J

    invoke-virtual {v1, v2, v3}, Lo/U;->f(J)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return v0

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public l(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/h;

    invoke-direct {v0, p0}, LN/h;-><init>(Li/x;)V

    return-object v0
.end method

.method public m(I)V
    .locals 2

    invoke-virtual {p0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/U;->a(I)V

    iget-object v1, p0, Li/C;->n:Lx/J;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/C;->Z:Lo/bt;

    invoke-virtual {v1, v0}, Lo/bt;->a(Lo/U;)Lx/B;

    iget-object v0, p0, Li/C;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method protected n()Z
    .locals 2

    invoke-super {p0}, Li/bl;->n()Z

    move-result v0

    iget-boolean v1, p0, Li/C;->ae:Z

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iput-boolean v1, p0, Li/C;->ae:Z

    return v0
.end method

.method public p()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/A;->G()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->p(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public r_()Lc/p;
    .locals 1

    iget-object v0, p0, Li/C;->P:Lc/p;

    return-object v0
.end method

.method protected s()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Li/C;->U:Lo/aH;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->g()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x211

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u()Lk/l;
    .locals 2

    iget-object v0, p0, Li/C;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->ak:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method protected v()V
    .locals 5

    invoke-super {p0}, Li/bl;->v()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-static {p0}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Li/C;->k:Lcom/google/googlenav/j;

    check-cast v0, Lcom/google/googlenav/z;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Li/C;->bw()Law/e;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "FRIENDS_LAYER-FL Error saving Friends"

    invoke-static {v3, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "FRIENDS_LAYER-FL OOME saving Friends"

    invoke-static {v3, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected x()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Li/C;->c:Lo/bg;

    invoke-virtual {v0, p0}, Lo/bg;->a(Lo/r;)V

    iget-object v0, p0, Li/C;->c:Lo/bg;

    invoke-virtual {v0}, Lo/bg;->a()Lo/aU;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/C;->E:Li/D;

    iget-object v2, v0, Lo/aU;->a:Lf/h;

    iget v3, v0, Lo/aU;->c:I

    iget-object v0, v0, Lo/aU;->d:LG/Z;

    invoke-virtual {v1, v2, v3, v0}, Li/D;->a(Lf/h;ILG/Z;)V

    :cond_0
    iget-object v0, p0, Li/C;->c:Lo/bg;

    iget-object v1, p0, Li/C;->E:Li/D;

    invoke-virtual {v0, v1}, Lo/bg;->a(LH/o;)V

    iput-boolean v4, p0, Li/C;->z:Z

    return v4
.end method

.method public y()V
    .locals 2

    invoke-static {}, Li/i;->f()V

    iget-object v0, p0, Li/C;->O:LaD/r;

    invoke-virtual {v0, p0}, LaD/r;->b(LaD/n;)V

    iget-object v0, p0, Li/C;->c:Lo/bg;

    iget-object v1, p0, Li/C;->E:Li/D;

    invoke-virtual {v0, v1}, Lo/bg;->b(LH/o;)V

    invoke-static {}, Lo/U;->B()V

    iget-object v0, p0, Li/C;->U:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->h()V

    invoke-super {p0}, Li/bl;->y()V

    return-void
.end method
