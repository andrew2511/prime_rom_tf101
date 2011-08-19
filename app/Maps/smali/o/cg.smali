.class public Lo/cg;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaU/a;

.field private final b:Lcom/google/googlenav/ui/aT;

.field private final c:Lf/v;

.field private final d:Lf/Y;

.field private final e:Lc/s;

.field private final f:Li/C;

.field private final g:Lo/by;

.field private final h:Lo/g;

.field private final i:Lo/bg;

.field private final j:Lh/eY;

.field private k:Lo/bh;


# direct methods
.method public constructor <init>(LaU/a;Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lc/s;Li/C;Lo/by;Lo/g;Lo/bg;Lh/eY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/cg;->a:LaU/a;

    iput-object p2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    iput-object p3, p0, Lo/cg;->c:Lf/v;

    iput-object p4, p0, Lo/cg;->d:Lf/Y;

    iput-object p5, p0, Lo/cg;->e:Lc/s;

    iput-object p6, p0, Lo/cg;->f:Li/C;

    iput-object p7, p0, Lo/cg;->g:Lo/by;

    iput-object p8, p0, Lo/cg;->h:Lo/g;

    iput-object p9, p0, Lo/cg;->i:Lo/bg;

    iput-object p10, p0, Lo/cg;->j:Lh/eY;

    return-void
.end method

.method static synthetic a(Lo/cg;)Li/C;
    .locals 1

    iget-object v0, p0, Lo/cg;->f:Li/C;

    return-object v0
.end method

.method private a()V
    .locals 8

    const/4 v5, 0x1

    invoke-static {}, Li/i;->b()V

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    invoke-virtual {v0, v5}, Lc/s;->a(Z)V

    invoke-static {}, LaR/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    const/16 v1, 0x187

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x184

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x185

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd9

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v7, Lo/ah;

    invoke-direct {v7, p0}, Lo/ah;-><init>(Lo/cg;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/bG;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/bB;->a(Lcom/google/googlenav/bG;)Lcom/google/googlenav/bs;

    move-result-object v0

    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "cp"

    invoke-static {v0}, Lo/A;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->N()Lo/U;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/cg;->b(Lo/U;)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/h;)V
    .locals 2

    new-instance v0, Lh/cF;

    invoke-direct {v0}, Lh/cF;-><init>()V

    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aN()Li/br;

    move-result-object v1

    iput-object v1, v0, Lh/cF;->d:Li/br;

    iput-object p1, v0, Lh/cF;->a:Lcom/google/googlenav/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh/cF;->c:Z

    iget-object v1, p0, Lo/cg;->j:Lh/eY;

    invoke-virtual {v1, v0}, Lh/eY;->a(Lh/cF;)V

    return-void
.end method

.method private a(Lh/fP;)V
    .locals 7

    iget-object v0, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x34

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lh/fP;->a:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lo/aO;

    invoke-direct {v1, p0}, Lo/aO;-><init>(Lo/cg;)V

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2}, Li/C;->bQ()LaD/t;

    move-result-object v2

    invoke-virtual {v2}, LaD/t;->a()LaD/r;

    move-result-object v2

    new-instance v3, Lc/a;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, Lc/a;-><init>(Ljava/lang/Long;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    iget-object v4, p1, Lh/fP;->a:[B

    const/4 v5, 0x0

    iget-object v6, p1, Lh/fP;->a:[B

    array-length v6, v6

    invoke-interface {v0, v4, v5, v6}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v2, v3, v0, v4, v1}, LaD/r;->a(Lcom/google/googlenav/ui/aH;Lk/l;Ljava/lang/String;Lo/B;)V

    goto :goto_0
.end method

.method private a(Lo/U;)V
    .locals 6

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/ad;

    invoke-direct {v2, p0, v1}, Lo/ad;-><init>(Lo/cg;Ljava/lang/String;)V

    iget-object v3, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v4, 0x154

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v3, Lo/n;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lo/n;-><init>(JLo/l;)V

    invoke-virtual {v1, v3}, Lak/h;->c(Lak/d;)V

    const/16 v0, 0x3d

    const-string v1, "pa"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void
.end method

.method private a(Lo/U;J)V
    .locals 13

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    add-long v3, v0, p2

    new-instance v0, Lo/af;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lo/af;-><init>(Lo/cg;Lo/U;JJ)V

    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v2, 0x17e

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v5, Lo/bu;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v8, v3

    move-wide v10, p2

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, Lo/bu;-><init>(JJJLo/w;)V

    invoke-virtual {v1, v5}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private a(Lo/U;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lac/s;->a(J)V

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    new-instance v3, Lo/bZ;

    invoke-direct {v3, v0, v1}, Lo/bZ;-><init>(Lac/s;Lac/s;)V

    invoke-virtual {v2, v3}, Lak/h;->c(Lak/d;)V

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lo/U;->a(Z)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->aa_()V

    return-void

    :cond_0
    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lac/s;->a(J)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lo/aT;)V
    .locals 2

    invoke-static {}, Lo/ce;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/cg;->i:Lo/bg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo/bg;->b(ZLo/aT;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lo/aT;->a(I)V

    goto :goto_0
.end method

.method private a(Lo/aT;Law/e;)V
    .locals 9

    const/16 v4, 0xb2

    const/4 v8, 0x1

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->Z()B

    move-result v2

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->aC()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->ae()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->aa()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->ao()V

    invoke-static {}, Lh/fQ;->j()I

    move-result v0

    iget-object v1, p0, Lo/cg;->j:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->J()Z

    move-result v1

    if-nez v1, :cond_0

    and-int/lit8 v0, v0, -0x5

    :cond_0
    and-int/lit8 v0, v0, -0x3

    iget-object v6, p0, Lo/cg;->j:Lh/eY;

    new-instance v1, Lh/di;

    invoke-direct {v1}, Lh/di;-><init>()V

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lh/di;->a(Ljava/lang/String;)Lh/di;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/di;->a(I)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v8}, Lh/di;->a(Z)Lh/di;

    move-result-object v0

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/di;->b(Ljava/lang/String;)Lh/di;

    move-result-object v7

    new-instance v0, Lo/E;

    iget-object v1, p0, Lo/cg;->f:Li/C;

    iget-object v3, p0, Lo/cg;->i:Lo/bg;

    iget-object v4, p0, Lo/cg;->d:Lf/Y;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/E;-><init>(Li/C;BLo/bg;Lf/Y;Lo/aT;)V

    invoke-virtual {v7, v0}, Lh/di;->a(Lh/cD;)Lh/di;

    move-result-object v0

    const/16 v1, 0x3bc

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/di;->c(Ljava/lang/String;)Lh/di;

    move-result-object v0

    const/16 v1, 0x477

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/di;->d(Ljava/lang/String;)Lh/di;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lh/di;->a(B)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v8}, Lh/di;->b(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, p2}, Lh/di;->a(Law/e;)Lh/di;

    move-result-object v0

    invoke-virtual {v6, v0}, Lh/eY;->a(Lh/di;)V

    return-void
.end method

.method static synthetic a(Lo/cg;Lo/U;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/cg;->e(Lo/U;)V

    return-void
.end method

.method private a(Lo/o;)V
    .locals 7

    const/4 v5, 0x1

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->D()Lc/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/k;->a()Lo/i;

    move-result-object v2

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    invoke-virtual {v0, v5}, Lc/s;->a(Z)V

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x476

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x27d

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lo/ae;

    invoke-direct {v6, p0, v2, p1}, Lo/ae;-><init>(Lo/cg;Lo/i;Lo/o;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V

    return-void
.end method

.method static synthetic b(Lo/cg;)Lc/s;
    .locals 1

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Lc/s;->a(I)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->P()V

    return-void
.end method

.method private b(Lo/U;)V
    .locals 2

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->Z()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/A;->a()V

    :goto_0
    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0, p1}, Li/C;->a(Lo/U;)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->U()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/C;->a(B)V

    return-void

    :cond_0
    invoke-static {}, Lo/A;->b()V

    goto :goto_0
.end method

.method private b(Lo/U;Z)V
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lo/U;->m()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lac/s;->a(J)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    new-instance v3, Lo/bZ;

    invoke-direct {v3, v0, v1}, Lo/bZ;-><init>(Lac/s;Lac/s;)V

    invoke-virtual {v2, v3}, Lak/h;->c(Lak/d;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/U;->a(Z)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lac/s;->a(J)V

    move-object v8, v1

    move-object v7, v0

    :goto_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v9

    new-instance v0, Lo/f;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v8}, Lo/f;-><init>(Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;)V

    invoke-virtual {v9, v0}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p1, p2}, Lo/U;->b(Z)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->aa_()V

    return-void

    :cond_1
    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lac/s;->a(J)V

    move-object v8, v0

    move-object v7, v1

    goto :goto_0
.end method

.method private b(Lo/aT;)V
    .locals 3

    invoke-static {}, Lo/ce;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lo/al;

    invoke-direct {v0, p0, p1}, Lo/al;-><init>(Lo/cg;Lo/aT;)V

    iget-object v1, p0, Lo/cg;->i:Lo/bg;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lo/bg;->a(ZLo/aT;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lo/aT;->a(I)V

    goto :goto_0
.end method

.method private b(Lo/o;)V
    .locals 3

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->D()Lc/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/k;->a()Lo/i;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/h;

    invoke-direct {v2, p1}, Lo/h;-><init>(Lo/o;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p1}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->D()Lc/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/k;->b()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->Z_()V

    return-void
.end method

.method static synthetic c(Lo/cg;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->e()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lo/cg;->j:Lh/eY;

    new-instance v2, Lo/aj;

    invoke-direct {v2, p0, v0}, Lo/aj;-><init>(Lo/cg;Ljava/util/Vector;)V

    invoke-virtual {v1, v0, v2}, Lh/eY;->a(Ljava/util/Vector;Lh/bM;)V

    return-void
.end method

.method private c(Lo/U;)V
    .locals 1

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0, p1}, Li/C;->a(Lo/U;)V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->V()V

    return-void
.end method

.method static synthetic d(Lo/cg;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lo/A;->g()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/C;->j(Z)V

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    const/16 v1, 0x60

    new-instance v2, Lo/aP;

    invoke-direct {v2, p0}, Lo/aP;-><init>(Lo/cg;)V

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILh/bv;)V

    return-void
.end method

.method private d(Lo/U;)V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lo/A;->i()V

    const/16 v0, 0x170

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x16f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    const/4 v5, 0x1

    new-instance v7, Lo/ag;

    invoke-direct {v7, p0, p1}, Lo/ag;-><init>(Lo/cg;Lo/U;)V

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method

.method static synthetic e(Lo/cg;)Lo/g;
    .locals 1

    iget-object v0, p0, Lo/cg;->h:Lo/g;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lo/A;->d()V

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    new-instance v1, Lo/aR;

    invoke-direct {v1, p0}, Lo/aR;-><init>(Lo/cg;)V

    invoke-virtual {v0, v1}, Lh/eY;->a(Lcom/google/googlenav/ui/wizard/android/d;)V

    return-void
.end method

.method private e(Lo/U;)V
    .locals 10

    const/4 v1, 0x0

    new-instance v5, Lac/s;

    invoke-direct {v5}, Lac/s;-><init>()V

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lac/s;->a(J)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v9

    new-instance v0, Lo/f;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lo/f;-><init>(Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;)V

    invoke-virtual {v9, v0}, Lak/h;->c(Lak/d;)V

    invoke-direct {p0, p1}, Lo/cg;->f(Lo/U;)V

    return-void
.end method

.method static synthetic f(Lo/cg;)Lo/bg;
    .locals 1

    iget-object v0, p0, Lo/cg;->i:Lo/bg;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lo/A;->e()V

    iget-object v0, p0, Lo/cg;->e:Lc/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    iget-object v0, p0, Lo/cg;->j:Lh/eY;

    new-instance v1, Lo/aQ;

    invoke-direct {v1, p0}, Lo/aQ;-><init>(Lo/cg;)V

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2}, Li/C;->D()Lc/k;

    move-result-object v2

    iget-object v3, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v3}, Li/C;->B()Lo/aH;

    move-result-object v3

    invoke-virtual {v3}, Lo/aH;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lh/eY;->a(Lh/cE;Lc/k;I)V

    return-void
.end method

.method private f(Lo/U;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lo/U;->b(I)V

    invoke-virtual {p1}, Lo/U;->C()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v0}, Li/C;->M()V

    iget-object v0, p0, Lo/cg;->f:Li/C;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Li/C;->a(B)V

    return-void
.end method

.method static synthetic g(Lo/cg;)LaU/a;
    .locals 1

    iget-object v0, p0, Lo/cg;->a:LaU/a;

    return-object v0
.end method

.method private g(Lo/U;)V
    .locals 6

    iget-object v0, p0, Lo/cg;->h:Lo/g;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/g;->a(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/cg;->h:Lo/g;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/g;->b(Ljava/lang/Long;)Lo/aI;

    move-result-object v0

    new-instance v1, Lo/ak;

    invoke-direct {v1, p0}, Lo/ak;-><init>(Lo/cg;)V

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v3, 0x17f

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    new-instance v3, Lo/bR;

    invoke-virtual {v0}, Lo/aI;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lo/bR;-><init>(JLo/L;)V

    invoke-virtual {v2, v3}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method static synthetic h(Lo/cg;)Lo/by;
    .locals 1

    iget-object v0, p0, Lo/cg;->g:Lo/by;

    return-object v0
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .locals 9

    const/16 v4, 0x148

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1}, Li/C;->N()Lo/U;

    move-result-object v1

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2}, Li/C;->B()Lo/aH;

    move-result-object v2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v1, v5

    :goto_1
    return v1

    :sswitch_0
    invoke-virtual {p0, v4, v3, v6}, Lo/cg;->a(IILjava/lang/Object;)Z

    move-object v0, p3

    check-cast v0, Lcom/google/googlenav/h;

    move-object v3, v0

    if-eqz v3, :cond_0

    move v4, v8

    :goto_2
    const-string v6, "cm"

    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    new-instance v7, Lo/ai;

    invoke-direct {v7, p0}, Lo/ai;-><init>(Lo/cg;)V

    invoke-virtual/range {v1 .. v7}, Lh/eY;->a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZZLjava/lang/String;Lh/ae;)V

    move v1, v8

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, v4, v3, v6}, Lo/cg;->a(IILjava/lang/Object;)Z

    new-instance v1, Lh/cF;

    invoke-direct {v1}, Lh/cF;-><init>()V

    check-cast p3, Lcom/google/googlenav/h;

    iput-object p3, v1, Lh/cF;->a:Lcom/google/googlenav/h;

    iput-boolean v8, v1, Lh/cF;->c:Z

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aN()Li/br;

    move-result-object v2

    iput-object v2, v1, Lh/cF;->d:Li/br;

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v2

    invoke-virtual {v2, v1}, Lh/eY;->a(Lh/cF;)V

    move v1, v8

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lo/cg;->f()V

    move v1, v8

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lo/cg;->d()V

    move v1, v8

    goto :goto_1

    :sswitch_4
    check-cast p3, Lh/fP;

    invoke-direct {p0, p3}, Lo/cg;->a(Lh/fP;)V

    move v1, v8

    goto :goto_1

    :sswitch_5
    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1}, Li/C;->O()V

    move v1, v8

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lo/cg;->e()V

    move v1, v8

    goto :goto_1

    :sswitch_7
    invoke-static {}, Lo/A;->c()V

    iget-object v1, p0, Lo/cg;->f:Li/C;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Li/C;->a(B)V

    move v1, v8

    goto :goto_1

    :sswitch_8
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, p3}, Lo/aH;->a(Ljava/lang/String;)Lo/U;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lo/cg;->b(Lo/U;)V

    :cond_1
    move v1, v8

    goto :goto_1

    :sswitch_9
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, p3}, Lo/aH;->a(Ljava/lang/String;)Lo/U;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lo/cg;->c(Lo/U;)V

    :cond_2
    move v1, v8

    goto/16 :goto_1

    :sswitch_a
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1, v6}, Li/C;->a(Ljava/lang/Object;)V

    :goto_3
    move v1, v8

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lo/cg;->b(Lo/U;)V

    goto :goto_3

    :sswitch_b
    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1}, Li/C;->O()V

    move v1, v8

    goto/16 :goto_1

    :sswitch_c
    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1, v8}, Li/C;->k(Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_d
    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1, v5}, Li/C;->k(Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_e
    invoke-direct {p0}, Lo/cg;->c()V

    move v1, v8

    goto/16 :goto_1

    :sswitch_f
    invoke-direct {p0}, Lo/cg;->a()V

    move v1, v8

    goto/16 :goto_1

    :sswitch_10
    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v2, 0x140

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    new-instance v1, Lo/q;

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-direct {v1, v2}, Lo/q;-><init>(Lcom/google/googlenav/bL;)V

    invoke-direct {p0, v1}, Lo/cg;->b(Lo/aT;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_11
    iget-object v1, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    const/16 v2, 0x140

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    new-instance v1, Lo/q;

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-direct {v1, v2}, Lo/q;-><init>(Lcom/google/googlenav/bL;)V

    invoke-direct {p0, v1}, Lo/cg;->a(Lo/aT;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_12
    invoke-static {}, Lo/A;->n()Law/e;

    move-result-object v1

    new-instance v2, Lo/q;

    iget-object v3, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-direct {v2, v3}, Lo/q;-><init>(Lcom/google/googlenav/bL;)V

    invoke-direct {p0, v2, v1}, Lo/cg;->a(Lo/aT;Law/e;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_13
    invoke-static {}, Lo/A;->h()V

    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1}, Li/C;->aa()V

    invoke-static {}, Lo/aF;->l()Lo/aF;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_14
    invoke-direct {p0, v1, v5}, Lo/cg;->b(Lo/U;Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_15
    invoke-direct {p0, v1, v8}, Lo/cg;->b(Lo/U;Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_16
    invoke-direct {p0, v1, v8}, Lo/cg;->a(Lo/U;Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_17
    invoke-direct {p0, v1, v5}, Lo/cg;->a(Lo/U;Z)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_18
    invoke-direct {p0, v1}, Lo/cg;->d(Lo/U;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_19
    iget-object v1, p0, Lo/cg;->e:Lc/s;

    if-ne p1, v4, :cond_4

    move v2, v8

    :goto_4
    invoke-virtual {v1, v2}, Lc/s;->a(Z)V

    move v1, v8

    goto/16 :goto_1

    :cond_4
    move v2, v5

    goto :goto_4

    :sswitch_1a
    iget-object v1, p0, Lo/cg;->g:Lo/by;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v6, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_1b
    check-cast p3, Lo/bh;

    iput-object p3, p0, Lo/cg;->k:Lo/bh;

    iget-object v1, p0, Lo/cg;->k:Lo/bh;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/cg;->k:Lo/bh;

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/bh;->a(Lo/aH;)V

    :cond_5
    move v1, v8

    goto/16 :goto_1

    :sswitch_1c
    iput-object v6, p0, Lo/cg;->k:Lo/bh;

    move v1, v8

    goto/16 :goto_1

    :sswitch_1d
    iget-object v1, p0, Lo/cg;->k:Lo/bh;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/cg;->k:Lo/bh;

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2}, Li/C;->B()Lo/aH;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/bh;->a(Lo/aH;)V

    :cond_6
    move v1, v8

    goto/16 :goto_1

    :sswitch_1e
    invoke-static {}, Lo/A;->j()V

    iget-object v1, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v1}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/aH;->a(I)Lo/U;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/cg;->c(Lo/U;)V

    iget-object v2, p0, Lo/cg;->e:Lc/s;

    invoke-virtual {v2, p2}, Lc/s;->b(I)V

    iget-object v2, p0, Lo/cg;->e:Lc/s;

    invoke-virtual {v1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/s;->a(J)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_1f
    invoke-static {}, Lo/A;->k()V

    iget-object v2, p0, Lo/cg;->f:Li/C;

    invoke-virtual {v2, v8}, Li/C;->a(B)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lo/U;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v2

    new-instance v3, Lh/fc;

    const/16 v4, 0x19

    invoke-virtual {v1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lh/l;->a(Lh/fc;)V

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lu/h;->a(Lo/U;)Lu/h;

    move-result-object v1

    iget-object v3, p0, Lo/cg;->d:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->p()Law/e;

    move-result-object v3

    invoke-virtual {v2, v6, v1, v3}, Lcom/google/googlenav/ui/aT;->a(Lu/h;Lu/h;Law/e;)V

    :cond_7
    move v1, v8

    goto/16 :goto_1

    :sswitch_20
    invoke-direct {p0}, Lo/cg;->b()V

    move v1, v8

    goto/16 :goto_1

    :sswitch_21
    iget-object v1, p0, Lo/cg;->e:Lc/s;

    invoke-virtual {v1, v3}, Lc/s;->a(I)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_22
    invoke-static {}, Lo/A;->o()V

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v2

    invoke-virtual {v1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/googlenav/g;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_23
    invoke-static {}, Lo/A;->p()V

    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-interface {v2, v3, v6, v6}, Lcom/google/googlenav/g;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_24
    iget-object v2, p0, Lo/cg;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v2

    invoke-virtual {v1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/googlenav/g;->a(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_1

    :sswitch_25
    const-wide/32 v2, 0xdbba0

    invoke-direct {p0, v1, v2, v3}, Lo/cg;->a(Lo/U;J)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_26
    const-wide/32 v2, 0x1b7740

    invoke-direct {p0, v1, v2, v3}, Lo/cg;->a(Lo/U;J)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_27
    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, v1, v2, v3}, Lo/cg;->a(Lo/U;J)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_28
    invoke-direct {p0, v1}, Lo/cg;->g(Lo/U;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_29
    check-cast p3, Lo/o;

    invoke-direct {p0, p3}, Lo/cg;->a(Lo/o;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_2a
    check-cast p3, Lo/o;

    invoke-direct {p0, p3}, Lo/cg;->b(Lo/o;)V

    move v1, v8

    goto/16 :goto_1

    :sswitch_2b
    invoke-virtual {v1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/h;-><init>(Law/e;)V

    invoke-virtual {v1}, Lo/U;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/google/googlenav/h;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v3}, Lo/cg;->a(Lcom/google/googlenav/h;)V

    :cond_8
    :goto_5
    move v1, v8

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, v2}, Lo/cg;->a(Lcom/google/googlenav/bG;)V

    goto :goto_5

    :sswitch_2c
    invoke-direct {p0, v1}, Lo/cg;->a(Lo/U;)V

    move v1, v8

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x12c -> :sswitch_e
        0x12d -> :sswitch_2
        0x12e -> :sswitch_1e
        0x12f -> :sswitch_10
        0x130 -> :sswitch_11
        0x131 -> :sswitch_12
        0x132 -> :sswitch_b
        0x133 -> :sswitch_13
        0x134 -> :sswitch_14
        0x135 -> :sswitch_15
        0x136 -> :sswitch_16
        0x137 -> :sswitch_17
        0x138 -> :sswitch_3
        0x139 -> :sswitch_4
        0x13a -> :sswitch_18
        0x13b -> :sswitch_5
        0x13c -> :sswitch_7
        0x13d -> :sswitch_1a
        0x13f -> :sswitch_1b
        0x140 -> :sswitch_1c
        0x141 -> :sswitch_20
        0x142 -> :sswitch_22
        0x143 -> :sswitch_23
        0x144 -> :sswitch_1d
        0x148 -> :sswitch_19
        0x149 -> :sswitch_19
        0x14a -> :sswitch_9
        0x14b -> :sswitch_8
        0x14c -> :sswitch_29
        0x14d -> :sswitch_2a
        0x14e -> :sswitch_c
        0x14f -> :sswitch_d
        0x150 -> :sswitch_24
        0x152 -> :sswitch_f
        0x155 -> :sswitch_6
        0x156 -> :sswitch_2c
        0x19a -> :sswitch_21
        0x25b -> :sswitch_1f
        0x834 -> :sswitch_0
        0x83b -> :sswitch_2b
        0x843 -> :sswitch_1
        0x899 -> :sswitch_25
        0x89a -> :sswitch_26
        0x89b -> :sswitch_27
        0x89c -> :sswitch_28
    .end sparse-switch
.end method
