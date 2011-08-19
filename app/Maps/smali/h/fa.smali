.class public Lh/fa;
.super Lh/eR;

# interfaces
.implements LH/o;
.implements Lh/cD;
.implements Li/o;
.implements Lo/cd;
.implements Lx/U;


# instance fields
.field private A:I

.field private B:Lcom/google/googlenav/bs;

.field private C:Lcom/google/googlenav/ui/bv;

.field private D:Ljava/lang/String;

.field private E:Z

.field public a:Lx/J;

.field private b:I

.field private c:Lh/G;

.field private final d:Lcom/google/googlenav/bL;

.field private final e:LH/f;

.field private final f:Lcom/google/googlenav/ui/bu;

.field private final l:Lf/Y;

.field private m:Li/aE;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/google/googlenav/c;

.field private r:Law/e;

.field private s:Ljava/util/List;

.field private t:Z

.field private u:Lf/h;

.field private v:J

.field private w:Ljava/util/ArrayList;

.field private x:Ljava/util/ArrayList;

.field private y:Lx/J;

.field private z:I


# direct methods
.method protected constructor <init>(Lh/eY;Lcom/google/googlenav/bL;LaU/a;LH/f;Lcom/google/googlenav/ui/bu;Lf/Y;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput v2, p0, Lh/fa;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh/fa;->v:J

    iput-boolean v2, p0, Lh/fa;->E:Z

    iput-object p2, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    iput-object p4, p0, Lh/fa;->e:LH/f;

    iput-object p5, p0, Lh/fa;->f:Lcom/google/googlenav/ui/bu;

    iput-object p6, p0, Lh/fa;->l:Lf/Y;

    invoke-direct {p0}, Lh/fa;->R()V

    invoke-direct {p0}, Lh/fa;->S()V

    return-void
.end method

.method private F()V
    .locals 1

    new-instance v0, Lh/bC;

    invoke-direct {v0, p0}, Lh/bC;-><init>(Lh/fa;)V

    invoke-direct {p0, v0}, Lh/fa;->a(Lh/bg;)V

    return-void
.end method

.method private G()V
    .locals 1

    new-instance v0, Lh/bE;

    invoke-direct {v0, p0}, Lh/bE;-><init>(Lh/fa;)V

    invoke-direct {p0, v0}, Lh/fa;->a(Lh/bg;)V

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lh/fa;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->q:Lcom/google/googlenav/c;

    new-instance v0, Lh/bF;

    invoke-direct {v0, p0}, Lh/bF;-><init>(Lh/fa;)V

    new-instance v1, Lcom/google/googlenav/ad;

    iget-object v2, p0, Lh/fa;->p:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method private I()V
    .locals 6

    const/16 v5, 0xb2

    const/4 v4, 0x1

    const/16 v0, 0x57

    const-string v1, "d"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    iget-object v1, p0, Lh/fa;->g:Lh/eY;

    new-instance v2, Lh/di;

    invoke-direct {v2}, Lh/di;-><init>()V

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/di;->a(Ljava/lang/String;)Lh/di;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lh/di;->a(I)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v4}, Lh/di;->a(Z)Lh/di;

    move-result-object v2

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/di;->b(Ljava/lang/String;)Lh/di;

    move-result-object v2

    invoke-virtual {v2, p0}, Lh/di;->a(Lh/cD;)Lh/di;

    move-result-object v2

    const/16 v3, 0x3bc

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/di;->c(Ljava/lang/String;)Lh/di;

    move-result-object v2

    const/16 v3, 0x477

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/di;->d(Ljava/lang/String;)Lh/di;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lh/di;->a(B)Lh/di;

    move-result-object v2

    iget-object v3, p0, Lh/fa;->r:Law/e;

    invoke-virtual {v2, v3}, Lh/di;->b(Law/e;)Lh/di;

    move-result-object v2

    iget-object v3, p0, Lh/fa;->s:Ljava/util/List;

    invoke-virtual {v2, v3}, Lh/di;->a(Ljava/util/List;)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v4}, Lh/di;->d(Z)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v0}, Lh/di;->a(Law/e;)Lh/di;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh/eY;->a(Lh/di;)V

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    return-void
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Lh/fa;->a:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->a:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->a:Lx/J;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 5

    new-instance v0, Lx/V;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x70f

    const/16 v4, 0x710

    invoke-direct {v0, v1, v2, v3, v4}, Lx/V;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lx/V;->a(I)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->y:Lx/J;

    iget-object v0, p0, Lh/fa;->y:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private L()V
    .locals 1

    iget-object v0, p0, Lh/fa;->y:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->y:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->y:Lx/J;

    :cond_0
    return-void
.end method

.method private M()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lh/fa;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lh/fa;->f:Lcom/google/googlenav/ui/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fa;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()Lf/h;
    .locals 7

    iget-object v0, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v1}, LH/f;->y()LH/d;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LH/d;->k()J

    move-result-wide v1

    iget-object v3, p0, Lh/fa;->u:Lf/h;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lh/fa;->v:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lh/fa;->u:Lf/h;

    invoke-virtual {v0, v3}, Lf/h;->a(Lf/h;)J

    move-result-wide v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v3, p0, Lh/fa;->v:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    iput-object v0, p0, Lh/fa;->u:Lf/h;

    iput-wide v1, p0, Lh/fa;->v:J

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->aN()Li/br;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Li/br;->a(ILaU/a;Li/o;)V

    :cond_0
    return-void
.end method

.method private P()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lh/fa;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x2d2

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/fa;->o:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Q()V
    .locals 4

    new-instance v1, Law/e;

    sget-object v0, Ls/T;->G:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lh/fa;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lh/fa;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Law/e;->a(II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "PLACES_HIDDEN_CATEGORIES"

    invoke-virtual {p0, v0, v1}, Lh/fa;->a(Ljava/lang/String;Law/e;)V

    return-void
.end method

.method private R()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/fa;->w:Ljava/util/ArrayList;

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->F:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const-string v1, "PLACES_CUSTOM_CATEGORIES"

    invoke-direct {p0, v1, v0}, Lh/fa;->b(Ljava/lang/String;Law/e;)V

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    const/16 v2, 0x57

    const-string v3, "n"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v2}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private S()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/fa;->x:Ljava/util/ArrayList;

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->G:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const-string v1, "PLACES_HIDDEN_CATEGORIES"

    invoke-direct {p0, v1, v0}, Lh/fa;->b(Ljava/lang/String;Law/e;)V

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lh/fa;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v2}, Law/e;->c(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T()V
    .locals 1

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->V()Lh/as;

    move-result-object v0

    invoke-virtual {v0}, Lh/as;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    return-void
.end method

.method static synthetic a(Lh/fa;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x7

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    const-string v1, "c"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    if-ne p1, v3, :cond_0

    :cond_0
    if-ne p1, v3, :cond_2

    const-string v0, "*"

    :goto_0
    invoke-virtual {p0, v0}, Lh/fa;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/c;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->c(Lf/h;)V

    :cond_0
    iget-object v0, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->h()Lf/C;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/z;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/c;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v3, v0}, Lf/Y;->a(Lf/C;)I

    move-result v3

    iget-object v4, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v4, v0}, Lf/Y;->b(Lf/C;)I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/googlenav/z;-><init>([Lcom/google/googlenav/c;Lf/C;II)V

    invoke-virtual {p0}, Lh/fa;->v()V

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v2, Lh/fc;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v2}, Lh/l;->a(Lh/fc;)V

    iget-object v0, p0, Lh/fa;->m:Li/aE;

    invoke-virtual {v0, v1}, Li/aE;->a(Lcom/google/googlenav/z;)Li/c;

    iget-object v0, p0, Lh/fa;->m:Li/aE;

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Li/x;->a(B)V

    return-void
.end method

.method private a(Lh/bg;)V
    .locals 7

    iget-object v0, p0, Lh/fa;->q:Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->q:Lcom/google/googlenav/c;

    invoke-interface {p1, v0}, Lh/bg;->a(Lcom/google/googlenav/c;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lh/bB;

    invoke-direct {v0, p0, p1}, Lh/bB;-><init>(Lh/fa;Lh/bg;)V

    new-instance v2, Lcom/google/googlenav/ad;

    iget-object v1, p0, Lh/fa;->p:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method static synthetic a(Lh/fa;Lcom/google/googlenav/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fa;->a(Lcom/google/googlenav/c;)V

    return-void
.end method

.method static synthetic a(Lh/fa;Lf/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fa;->b(Lf/h;)V

    return-void
.end method

.method static synthetic a(Lh/fa;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fa;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->a:Lx/J;

    iget-object v0, p0, Lh/fa;->a:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method static synthetic b(Lh/fa;Lcom/google/googlenav/c;)Lcom/google/googlenav/c;
    .locals 0

    iput-object p1, p0, Lh/fa;->q:Lcom/google/googlenav/c;

    return-object p1
.end method

.method static synthetic b(Lh/fa;)Li/aE;
    .locals 1

    iget-object v0, p0, Lh/fa;->m:Li/aE;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x57

    const-string v2, "u"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lh/fa;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lf/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->h()Lf/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v0

    iget-object v1, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->f()V

    new-instance v1, Lcom/google/googlenav/V;

    iget-object v2, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    invoke-direct {v1, v2}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->d(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v0

    iput-object v3, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    iget-object v1, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->u()Lh/l;

    move-result-object v1

    new-instance v2, Lh/fc;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lh/fc;-><init>(I)V

    invoke-virtual {v1, v2}, Lh/l;->a(Lh/fc;)V

    iget-object v1, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    const/4 v0, 0x1

    iput v0, p0, Lh/fa;->k:I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Law/e;)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh/fa;->a(Ljava/lang/String;Law/e;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/fa;->N()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/fa;->r()V

    iget-boolean v1, p0, Lh/fa;->E:Z

    if-eqz v1, :cond_1

    const-string v1, "n"

    :goto_0
    iput-boolean v7, p0, Lh/fa;->E:Z

    const/16 v2, 0x57

    const-string v3, "stp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lh/fa;->b:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v4}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v1

    new-instance v2, Lo/bV;

    invoke-direct {v2}, Lo/bV;-><init>()V

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lo/bV;->a(I)Lo/bV;

    move-result-object v2

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Lo/bV;->b(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v8}, Lo/bV;->g(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v7}, Lo/bV;->d(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->a()Lo/J;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lak/h;->c(Lak/d;)V

    invoke-static {v1}, LaC/a;->a(Law/e;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "a"

    goto :goto_0
.end method

.method static synthetic c(Lh/fa;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/fa;->p:Ljava/lang/String;

    return-object v0
.end method

.method private c(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lh/fa;->n:Ljava/lang/String;

    iget-object v1, p0, Lh/fa;->u:Lf/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lh/fa;)LH/f;
    .locals 1

    iget-object v0, p0, Lh/fa;->e:LH/f;

    return-object v0
.end method

.method static synthetic e(Lh/fa;)Lcom/google/googlenav/bs;
    .locals 1

    iget-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    return-object v0
.end method

.method public static p()V
    .locals 3

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x2cb

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x2c8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    const/16 v2, 0x2c7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    const/16 v2, 0x2c6

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    const/16 v2, 0x2c5

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x2c9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    const/16 v2, 0x2cc

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method private r()V
    .locals 1

    invoke-virtual {p0}, Lh/fa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/fa;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/fa;->j:Lx/J;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lh/fa;->t()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/fa;->t:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lh/fa;->s()V

    goto :goto_1
.end method

.method private s()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/fa;->c:Lh/G;

    iget-object v1, p0, Lh/fa;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Lh/fa;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lh/G;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lh/fa;->c:Lh/G;

    invoke-direct {p0, v3}, Lh/fa;->c(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/fa;->u:Lf/h;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lh/G;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lh/fa;->c:Lh/G;

    invoke-direct {p0}, Lh/fa;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/G;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private t()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lh/G;

    iget-object v1, p0, Lh/fa;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Lh/fa;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lh/fa;->c(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lh/fa;->P()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh/fa;->u:Lf/h;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0}, Lh/fa;->M()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lh/G;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lh/fa;->c:Lh/G;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    iget-object v2, p0, Lh/fa;->c:Lh/G;

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->j:Lx/J;

    iget-object v0, p0, Lh/fa;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void

    :cond_0
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public A_()I
    .locals 2

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/g;->f()V

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E_()V
    .locals 0

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/fa;->j:Lx/J;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/fa;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/fa;->k:I

    goto :goto_0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/fa;->d()V

    iget v0, p0, Lh/fa;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/fa;->j:Lx/J;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/fa;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/fa;->k:I

    goto :goto_0
.end method

.method public a(Lax/e;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lf/h;)I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lh/eR;->a(Lf/h;)I

    move-result v0

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lh/fa;->k:I

    iput-boolean v1, p0, Lh/fa;->t:Z

    iget-object v0, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v0, p0}, LH/f;->a(LH/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    iput-boolean v1, p0, Lh/fa;->E:Z

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    :cond_0
    iget-object v0, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v0}, LH/f;->t()V

    invoke-direct {p0}, Lh/fa;->O()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lh/fa;->b(Z)V

    invoke-direct {p0}, Lh/fa;->r()V

    return-void
.end method

.method public a(ILH/f;)V
    .locals 0

    invoke-direct {p0}, Lh/fa;->T()V

    return-void
.end method

.method public a(J)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fa;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/fa;->t:Z

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p1, p0, Lh/fa;->r:Law/e;

    iput-object p2, p0, Lh/fa;->s:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    iget-object v1, p0, Lh/fa;->D:Ljava/lang/String;

    if-eqz v1, :cond_1

    move v1, v5

    move-object v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    iget-object v3, p0, Lh/fa;->D:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    const/4 v1, 0x4

    invoke-static {p1, v1, v5}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lh/fa;->n:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1, v5}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lh/fa;->o:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->p:Ljava/lang/String;

    invoke-direct {p0}, Lh/fa;->H()V

    invoke-direct {p0}, Lh/fa;->r()V

    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/j;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lh/fa;->D:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->o()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object v2, p0, Lh/fa;->D:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lf/h;LH/f;)V
    .locals 2

    iget-object v0, p0, Lh/fa;->h:LaU/a;

    new-instance v1, Lh/bK;

    invoke-direct {v1, p0}, Lh/bK;-><init>(Lh/fa;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Li/aE;I)V
    .locals 1

    iput-object p1, p0, Lh/fa;->m:Li/aE;

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    iput p2, p0, Lh/fa;->b:I

    :cond_0
    invoke-virtual {p0}, Lh/fa;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x1

    new-instance v0, Lh/bD;

    invoke-direct {v0, p0}, Lh/bD;-><init>(Lh/fa;)V

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->d(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->f(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->h(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    const-string v3, "19"

    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-direct {p0}, Lh/fa;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v1

    iget-object v3, p0, Lh/fa;->n:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-direct {p0, v4}, Lh/fa;->c(Z)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Lcom/google/googlenav/V;->d(Ljava/lang/String;)Lcom/google/googlenav/V;

    iget-object v1, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v1}, LH/f;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    iget-object v3, p0, Lh/fa;->l:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v3, v1}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    :cond_0
    invoke-direct {p0}, Lh/fa;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v1}, LH/f;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->u()Lh/l;

    move-result-object v1

    new-instance v2, Lh/fc;

    invoke-direct {v2, v5}, Lh/fc;-><init>(I)V

    invoke-virtual {v1, v2}, Lh/l;->a(Lh/fc;)V

    iget-object v1, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    iput v4, p0, Lh/fa;->k:I

    :goto_1
    return-void

    :cond_2
    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    const/16 v1, 0x22e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh/fc;

    invoke-direct {v3, v5}, Lh/fc;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    new-instance v0, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lh/bJ;

    invoke-direct {v2, p0}, Lh/bJ;-><init>(Lh/fa;)V

    invoke-direct {v0, v1, v2}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    invoke-virtual {v0}, LT/a;->b()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p2, v2}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    new-instance v0, Lh/bI;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lh/bI;-><init>(Lh/fa;LT/c;)V

    invoke-virtual {v0}, Lh/bI;->b()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-static {p3, v0, v1}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->n:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p3, v0, v1}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->o:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/fa;->p:Ljava/lang/String;

    invoke-direct {p0}, Lh/fa;->H()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/fa;->t:Z

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    const/16 v3, 0x57

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Lh/fa;->j()V

    move v1, v4

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2}, Lh/fa;->a(I)V

    move v1, v4

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2}, Lh/fa;->b(I)V

    move v1, v4

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lh/fa;->h()V

    move v1, v4

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lh/fa;->K()V

    move v1, v4

    goto :goto_0

    :sswitch_5
    iput p2, p0, Lh/fa;->z:I

    iget-object v1, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x709

    invoke-direct {p0, v1, v2}, Lh/fa;->a(Ljava/lang/String;I)V

    move v1, v4

    goto :goto_0

    :sswitch_6
    iput p2, p0, Lh/fa;->A:I

    sget-object v1, Lh/G;->a:[Ljava/lang/String;

    iget v2, p0, Lh/fa;->A:I

    aget-object v1, v1, v2

    const/16 v2, 0x70b

    invoke-direct {p0, v1, v2}, Lh/fa;->a(Ljava/lang/String;I)V

    move v1, v4

    goto :goto_0

    :sswitch_7
    iget v1, p0, Lh/fa;->z:I

    iget-object v2, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lh/fa;->w:Ljava/util/ArrayList;

    iget v2, p0, Lh/fa;->z:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lh/fa;->n()V

    :cond_0
    iput-boolean v4, p0, Lh/fa;->t:Z

    invoke-direct {p0}, Lh/fa;->J()V

    const-string v1, "rm"

    iget v2, p0, Lh/fa;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move v1, v4

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lh/fa;->x:Ljava/util/ArrayList;

    iget v2, p0, Lh/fa;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lh/fa;->t:Z

    invoke-direct {p0}, Lh/fa;->Q()V

    invoke-direct {p0}, Lh/fa;->J()V

    const-string v1, "hdn"

    iget v2, p0, Lh/fa;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move v1, v4

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lh/fa;->L()V

    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lh/fa;->w:Ljava/util/ArrayList;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "a"

    check-cast p3, Ljava/lang/String;

    invoke-static {v3, v1, p3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lh/fa;->n()V

    :cond_1
    iput-boolean v4, p0, Lh/fa;->t:Z

    move v1, v4

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lh/fa;->L()V

    iput-boolean v4, p0, Lh/fa;->t:Z

    move v1, v4

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lh/fa;->d:Lcom/google/googlenav/bL;

    invoke-interface {v1}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Li/av;->e(ILjava/lang/Object;)V

    iput v4, p0, Lh/fa;->k:I

    move v1, v4

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lh/fa;->q()Lcom/google/googlenav/ui/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bv;->b()V

    move v1, v4

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "r"

    invoke-static {v3, v1}, Lac/g;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lh/fa;->F()V

    move v1, v4

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "p"

    invoke-static {v3, v1}, Lac/g;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lh/fa;->G()V

    move v1, v4

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lh/fa;->I()V

    move v1, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2ef -> :sswitch_3
        0x3ed -> :sswitch_c
        0x6a4 -> :sswitch_d
        0x708 -> :sswitch_5
        0x709 -> :sswitch_7
        0x70a -> :sswitch_6
        0x70b -> :sswitch_8
        0x70c -> :sswitch_1
        0x70d -> :sswitch_2
        0x70e -> :sswitch_4
        0x70f -> :sswitch_9
        0x710 -> :sswitch_a
        0x711 -> :sswitch_e
        0x712 -> :sswitch_f
        0x9c7 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Lx/Q;)Z
    .locals 3

    check-cast p1, Lx/q;

    invoke-virtual {p1}, Lx/q;->a()I

    move-result v0

    invoke-virtual {p1}, Lx/q;->b()I

    move-result v1

    invoke-virtual {p1}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lh/fa;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lh/fa;->t:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/fa;->r()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lh/eR;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/fa;->e:LH/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->e:LH/f;

    invoke-virtual {v0, p0}, LH/f;->b(LH/o;)V

    :cond_0
    invoke-direct {p0}, Lh/fa;->L()V

    invoke-direct {p0}, Lh/fa;->J()V

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->f()Lh/fo;

    move-result-object v0

    invoke-virtual {v0}, Lh/fo;->v()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Lh/fa;->v()V

    iget-object v0, p0, Lh/fa;->m:Li/aE;

    invoke-virtual {v0}, Li/aE;->A()Li/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Li/av;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/fa;->a:Lx/J;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/fa;->J()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lh/fa;->k:I

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    invoke-super {p0}, Lh/eR;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lh/eY;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 3

    const/16 v0, 0x57

    const-string v1, "m"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lh/fa;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    const/4 v0, 0x1

    iput v0, p0, Lh/fa;->k:I

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lh/fa;->B:Lcom/google/googlenav/bs;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/fa;->T()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 5

    new-instance v1, Law/e;

    sget-object v0, Ls/T;->F:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    iget-object v0, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    const/4 v4, 0x1

    iget-object v0, p0, Lh/fa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const-string v0, "PLACES_CUSTOM_CATEGORIES"

    invoke-virtual {p0, v0, v1}, Lh/fa;->a(Ljava/lang/String;Law/e;)V

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lh/fa;->b:I

    return v0
.end method

.method public q()Lcom/google/googlenav/ui/bv;
    .locals 5

    iget-object v0, p0, Lh/fa;->C:Lcom/google/googlenav/ui/bv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/bv;

    iget-object v1, p0, Lh/fa;->g:Lh/eY;

    iget-object v2, p0, Lh/fa;->m:Li/aE;

    iget-object v3, p0, Lh/fa;->h:LaU/a;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/bv;-><init>(Lh/eY;Li/aE;LaU/a;I)V

    iput-object v0, p0, Lh/fa;->C:Lcom/google/googlenav/ui/bv;

    :cond_0
    iget-object v0, p0, Lh/fa;->C:Lcom/google/googlenav/ui/bv;

    return-object v0
.end method

.method public x_()[Lax/e;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lax/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/w;->S:Lax/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlenav/ui/w;->T:Lax/e;

    aput-object v2, v0, v1

    return-object v0
.end method
