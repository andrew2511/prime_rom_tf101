.class public Lh/fQ;
.super Lh/eR;

# interfaces
.implements Lx/U;


# instance fields
.field private A:Lx/S;

.field private B:Lf/h;

.field private C:Lf/h;

.field private D:Law/e;

.field private E:Ljava/util/List;

.field private F:Lh/cD;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Law/e;

.field private L:Z

.field private M:Z

.field private final N:Lcom/google/googlenav/g;

.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:B

.field protected final d:LH/f;

.field protected e:Z

.field protected final f:LaF/a;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private final v:Lf/v;

.field private final w:Lf/Y;

.field private final x:Lcom/google/googlenav/bL;

.field private final y:Lcom/google/googlenav/ui/bu;

.field private z:J


# direct methods
.method constructor <init>(Lh/eY;LaU/a;Lf/v;Lf/Y;LH/f;Lcom/google/googlenav/g;Lcom/google/googlenav/bL;Lcom/google/googlenav/ui/bu;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput v0, p0, Lh/fQ;->a:I

    iput v0, p0, Lh/fQ;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lh/fQ;->o:I

    const/4 v0, 0x3

    iput v0, p0, Lh/fQ;->p:I

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lh/fQ;->f:LaF/a;

    iput-object p3, p0, Lh/fQ;->v:Lf/v;

    iput-object p4, p0, Lh/fQ;->w:Lf/Y;

    iput-object p5, p0, Lh/fQ;->d:LH/f;

    iput-object p7, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    iput-object p8, p0, Lh/fQ;->y:Lcom/google/googlenav/ui/bu;

    iput-object p6, p0, Lh/fQ;->N:Lcom/google/googlenav/g;

    return-void
.end method

.method private F()V
    .locals 2

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/fQ;->h()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->j:Lx/J;

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private G()V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x32e

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->h(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->k(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v3, Lx/G;

    invoke-direct {v3, v6, v0}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    const/16 v0, 0x3aa

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;Ljava/lang/String;)Lx/n;

    move-result-object v5

    new-instance v0, Lx/B;

    const/16 v1, 0x10

    const/16 v2, 0x3ae

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->j:Lx/J;

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private H()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lh/fQ;->B:Lf/h;

    iget-object v0, p0, Lh/fQ;->A:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->A:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    iput-object v1, p0, Lh/fQ;->A:Lx/S;

    :cond_0
    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->b()V

    return-void
.end method

.method private I()LI/n;
    .locals 1

    new-instance v0, Lh/aQ;

    invoke-direct {v0, p0}, Lh/aQ;-><init>(Lh/fQ;)V

    return-object v0
.end method

.method private J()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lh/fQ;->p:I

    iget-object v0, p0, Lh/fQ;->F:Lh/cD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->F:Lh/cD;

    invoke-interface {v0}, Lh/cD;->E_()V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->K()V

    iget-object v0, p0, Lh/fQ;->s:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lh/fQ;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lh/fQ;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lh/fQ;->E:Ljava/util/List;

    return-object p1
.end method

.method static a(Law/e;)Lu/h;
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/ui/D;->a(Law/e;)Lf/h;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/h;->a(Lf/h;Ljava/lang/String;)Lu/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/x;Z)V
    .locals 3

    iget-object v0, p0, Lh/fQ;->v:Lf/v;

    iget-object v1, p0, Lh/fQ;->B:Lf/h;

    iget-object v2, p0, Lh/fQ;->f:LaF/a;

    invoke-virtual {v0, v1, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Lh/fQ;->i:Lcom/google/googlenav/ui/aV;

    iget-byte v1, p0, Lh/fQ;->c:B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aV;->a(BC)Lcom/google/googlenav/aG;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->f:LaF/a;

    iget v1, v1, LaF/a;->a:I

    iget-object v2, p0, Lh/fQ;->f:LaF/a;

    iget v2, v2, LaF/a;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/aG;->a(Lcom/google/googlenav/aG;Lcom/google/googlenav/ui/x;II)V

    iget-object v0, p0, Lh/fQ;->t:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh/fQ;->A:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->A:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fQ;->A:Lx/S;

    :cond_0
    return-void
.end method

.method static synthetic a(Lh/fQ;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fQ;->c(Law/e;)V

    return-void
.end method

.method static synthetic a(Lh/fQ;Lu/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fQ;->a(Lu/h;)V

    return-void
.end method

.method private a(Lu/h;)V
    .locals 5

    iget-object v0, p0, Lh/fQ;->F:Lh/cD;

    invoke-interface {v0}, Lh/cD;->D_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {p1}, Lu/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    new-instance v2, Lh/aW;

    invoke-direct {v2, p0}, Lh/aW;-><init>(Lh/fQ;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/fQ;->v:Lf/v;

    invoke-virtual {v0}, Lf/v;->e()I

    move-result v0

    iget-object v1, p0, Lh/fQ;->F:Lh/cD;

    new-instance v2, Ljava/lang/Long;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v0, 0x0

    invoke-interface {v1, p1, v2, v0}, Lh/cD;->a(Lu/h;Ljava/lang/Long;Law/e;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_0
.end method

.method static synthetic b(Lh/fQ;Law/e;)Law/e;
    .locals 0

    iput-object p1, p0, Lh/fQ;->D:Law/e;

    return-object p1
.end method

.method private b(Law/e;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lh/fQ;->g:Lh/eY;

    sget-object v2, Lh/dP;->b:Lh/dP;

    new-instance v3, Lh/aP;

    invoke-direct {v3, p0}, Lh/aP;-><init>(Lh/fQ;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lh/eY;->a(Law/e;Lh/dP;ZLh/aZ;)V

    return-void
.end method

.method private c(Law/e;)V
    .locals 5

    invoke-static {p1}, Lh/fQ;->a(Law/e;)Lu/h;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->F:Lh/cD;

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v0, v2, p1}, Lh/cD;->a(Lu/h;Ljava/lang/Long;Law/e;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    return-void
.end method

.method private c(Lcom/google/googlenav/ui/x;)V
    .locals 3

    iget-object v0, p0, Lh/fQ;->A:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->B:Lf/h;

    if-eqz v0, :cond_0

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iget-object v1, p0, Lh/fQ;->A:Lx/S;

    invoke-interface {v1}, Lx/S;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/fQ;->v:Lf/v;

    iget-object v2, p0, Lh/fQ;->B:Lf/h;

    invoke-virtual {v1, v2, v0}, Lf/v;->a(Lf/h;LaF/a;)V

    :goto_0
    iget-object v1, p0, Lh/fQ;->A:Lx/S;

    invoke-interface {v1, v0, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lh/fQ;->v:Lf/v;

    iget-object v2, p0, Lh/fQ;->B:Lf/h;

    invoke-virtual {v1, v2, v0}, Lf/v;->b(Lf/h;LaF/a;)V

    goto :goto_0
.end method

.method public static j()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/fQ;->a(Lx/J;)V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/fQ;->I()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->j:Lx/J;

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method


# virtual methods
.method public A_()I
    .locals 2

    invoke-virtual {p0}, Lh/fQ;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lh/fQ;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh/fQ;->a:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F_()V
    .locals 2

    iget v0, p0, Lh/fQ;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/fQ;->s:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->j()V

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lh/fQ;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public T_()V
    .locals 2

    iget-boolean v0, p0, Lh/fQ;->I:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/fQ;->I:Z

    iget-object v1, p0, Lh/fQ;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lh/fQ;->v()V

    iput-boolean v0, p0, Lh/fQ;->I:Z

    invoke-virtual {p0}, Lh/fQ;->u()V

    iput-object v1, p0, Lh/fQ;->r:Ljava/lang/String;

    return-void
.end method

.method public a(Lax/b;)I
    .locals 4

    iget v0, p0, Lh/fQ;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p0, Lh/fQ;->p:I

    return v0

    :pswitch_1
    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lax/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3ba

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->A:Lx/S;

    iget-object v0, p0, Lh/fQ;->v:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->B:Lf/h;

    const/4 v0, 0x3

    iput v0, p0, Lh/fQ;->p:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 3

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/fQ;->d()V

    iget v0, p0, Lh/fQ;->p:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lh/fQ;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget v0, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lh/fQ;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32b

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lh/fQ;->a(IILjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v0, 0x5

    iput v0, p0, Lh/fQ;->p:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lh/fQ;->w:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->B:Lf/h;

    iget-boolean v0, p0, Lh/fQ;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/fQ;->B:Lf/h;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lh/fQ;->a(Lf/h;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lax/e;)I
    .locals 3

    sget-object v0, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->y:Lcom/google/googlenav/ui/bu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a(Lf/h;)I
    .locals 4

    iget v0, p0, Lh/fQ;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lh/fQ;->B:Lf/h;

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3ba

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lh/fQ;->B:Lf/h;

    invoke-virtual {v0, v1, p0, v2, v3}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;ZLf/h;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Lh/fQ;->A:Lx/S;

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;
    .locals 1

    new-instance v0, Lh/cq;

    invoke-direct {v0, p0, p1, p2}, Lh/cq;-><init>(Lh/fQ;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/e;)Lcom/google/googlenav/ui/view/android/L;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lh/fQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v1}, LH/f;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v1}, LH/f;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aR;

    invoke-direct {v2, p0}, Lh/aR;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lh/fQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aL;

    invoke-direct {v2, p0}, Lh/aL;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lh/fQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3e1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aM;

    invoke-direct {v2, p0}, Lh/aM;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v3}, Lh/fQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3e3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aN;

    invoke-direct {v2, p0}, Lh/aN;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v1, p0, Lh/fQ;->e:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x265

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aO;

    invoke-direct {v2, p0}, Lh/aO;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    const/16 v1, 0x3f4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/aX;

    invoke-direct {v2, p0}, Lh/aX;-><init>(Lh/fQ;)V

    invoke-virtual {p0, v1, v2}, Lh/fQ;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    iget v0, p0, Lh/fQ;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lh/fQ;->F()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lh/fQ;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lh/fQ;->C:Lf/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lh/fQ;->t()V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 8

    const/4 v7, 0x3

    iget v0, p0, Lh/fQ;->a:I

    iput v0, p0, Lh/fQ;->n:I

    iput p1, p0, Lh/fQ;->a:I

    if-eq p1, v7, :cond_0

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/fQ;->a(Lx/J;)V

    invoke-super {p0}, Lh/eR;->b()V

    :cond_0
    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lh/fQ;->u()V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lh/fQ;->K()V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lh/fQ;->z:J

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lh/fQ;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    iget v1, p0, Lh/fQ;->n:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lh/fQ;->H:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v0}, Lh/fQ;->a(Ljava/lang/String;)V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    const/16 v1, 0x3a7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    :cond_3
    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lh/fQ;->F()V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lh/fQ;->G()V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-direct {p0, v0}, Lh/fQ;->b(Law/e;)V

    iput v7, p0, Lh/fQ;->p:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected a(Lf/h;I)V
    .locals 2

    new-instance v0, Lo/bV;

    invoke-direct {v0}, Lo/bV;-><init>()V

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/bV;->a(I)Lo/bV;

    move-result-object v0

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/bV;->b(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/bV;->e(I)Lo/bV;

    move-result-object v0

    new-instance v1, Lh/eQ;

    invoke-direct {v1, p0}, Lh/eQ;-><init>(Lh/fQ;)V

    invoke-virtual {v0, v1}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v0

    iget-boolean v1, p0, Lh/fQ;->u:Z

    invoke-virtual {v0, v1}, Lo/bV;->a(Z)Lo/bV;

    move-result-object v0

    iget-boolean v1, p0, Lh/fQ;->J:Z

    invoke-virtual {v0, v1}, Lo/bV;->b(Z)Lo/bV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bV;->g(I)Lo/bV;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->K:Law/e;

    invoke-virtual {v0, v1}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/bV;->a(Ljava/lang/String;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->a()Lo/J;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lh/di;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Lh/di;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/fQ;->b:Ljava/lang/String;

    iget v0, p1, Lh/di;->b:I

    iput v0, p0, Lh/fQ;->l:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/fQ;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lh/fQ;->e:Z

    invoke-virtual {p1}, Lh/di;->a()V

    iget-boolean v0, p1, Lh/di;->c:Z

    iput-boolean v0, p0, Lh/fQ;->m:Z

    iget-object v0, p1, Lh/di;->f:Ljava/lang/String;

    iput-object v0, p0, Lh/fQ;->q:Ljava/lang/String;

    iget-object v0, p1, Lh/di;->g:Lh/cD;

    iput-object v0, p0, Lh/fQ;->F:Lh/cD;

    iget v0, p1, Lh/di;->h:I

    iput v0, p0, Lh/fQ;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lh/fQ;->r:Ljava/lang/String;

    iget-object v0, p1, Lh/di;->i:Ljava/lang/String;

    iput-object v0, p0, Lh/fQ;->s:Ljava/lang/String;

    iget-object v0, p1, Lh/di;->j:Ljava/lang/String;

    iput-object v0, p0, Lh/fQ;->t:Ljava/lang/String;

    iget-byte v0, p1, Lh/di;->k:B

    iput-byte v0, p0, Lh/fQ;->c:B

    iget-boolean v0, p1, Lh/di;->l:Z

    iput-boolean v0, p0, Lh/fQ;->u:Z

    iget-boolean v0, p1, Lh/di;->m:Z

    iput-boolean v0, p0, Lh/fQ;->J:Z

    iget-object v0, p1, Lh/di;->n:Law/e;

    iput-object v0, p0, Lh/fQ;->K:Law/e;

    iget-boolean v0, p1, Lh/di;->q:Z

    iput-boolean v0, p0, Lh/fQ;->M:Z

    invoke-virtual {p1}, Lh/di;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lh/fQ;->L:Z

    iget-object v0, p1, Lh/di;->o:Law/e;

    iput-object v0, p0, Lh/fQ;->D:Law/e;

    iget-object v0, p1, Lh/di;->p:Ljava/util/List;

    iput-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-virtual {p0}, Lh/fQ;->u()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lh/di;->d:Lf/h;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lh/fQ;->L:Z

    iget-object v0, p1, Lh/di;->d:Lf/h;

    iput-object v0, p0, Lh/fQ;->C:Lf/h;

    iget-object v0, p1, Lh/di;->d:Lf/h;

    iget v1, p1, Lh/di;->e:I

    invoke-virtual {p0, v0, v1}, Lh/fQ;->a(Lf/h;I)V

    invoke-virtual {p0}, Lh/fQ;->u()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lh/fQ;->l:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lh/fQ;->u()V

    invoke-virtual {p0, v1}, Lh/fQ;->b(I)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lh/fQ;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lh/fQ;->b(I)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/ui/wizard/android/EnterAddressActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v1

    new-instance v2, Lh/cw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lh/cw;-><init>(Lh/fQ;Lh/aP;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void
.end method

.method protected a(I)Z
    .locals 1

    iget v0, p0, Lh/fQ;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/fQ;->s()V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh/fQ;->r()V

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lh/fQ;->n:I

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    move v0, v2

    goto :goto_0

    :sswitch_2
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/fQ;->a(Lu/h;)V

    invoke-virtual {p0, v1}, Lh/fQ;->b(I)V

    move v0, v2

    goto :goto_0

    :sswitch_3
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lh/fQ;->D:Law/e;

    invoke-direct {p0, v0}, Lh/fQ;->c(Law/e;)V

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-direct {p0, v0}, Lh/fQ;->c(Law/e;)V

    goto :goto_2

    :sswitch_4
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lh/fQ;->b(Ljava/lang/String;)V

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_3

    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    move v0, v2

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lh/fQ;->a(II)V

    move v0, v2

    goto :goto_0

    :sswitch_7
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lh/fQ;->r:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v1}, LH/f;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lh/fQ;->a(Lf/h;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    iput-boolean v2, p0, Lh/fQ;->G:Z

    move v0, v2

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_9
        0x327 -> :sswitch_2
        0x328 -> :sswitch_3
        0x329 -> :sswitch_4
        0x32b -> :sswitch_0
        0x32c -> :sswitch_1
        0x32d -> :sswitch_5
        0x32e -> :sswitch_7
        0x32f -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Lx/Q;)Z
    .locals 2

    iget-boolean v0, p0, Lh/fQ;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->B:Lf/h;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lh/fQ;->a(Lf/h;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lh/fQ;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-super {p0, p1}, Lh/eR;->a(Z)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move v0, v4

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Lh/fQ;->z:J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lh/fQ;->B:Lf/h;

    invoke-static {v0}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/fQ;->a(Lu/h;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    :cond_0
    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iget-boolean v0, p0, Lh/fQ;->I:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lh/fQ;->H()V

    iput-object v2, p0, Lh/fQ;->C:Lf/h;

    iput-object v2, p0, Lh/fQ;->D:Law/e;

    iput-object v2, p0, Lh/fQ;->E:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lh/fQ;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Li/av;->e(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh/fQ;->a(II)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget v0, p0, Lh/fQ;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-super {p0, p1}, Lh/eR;->b(Lcom/google/googlenav/ui/x;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lh/fQ;->c(Lcom/google/googlenav/ui/x;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lh/fQ;->a(Lcom/google/googlenav/ui/x;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh/fQ;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/fQ;->a(Lx/J;)V

    invoke-super {p0}, Lh/eR;->b()V

    iput-object p1, p0, Lh/fQ;->H:Ljava/lang/String;

    invoke-static {p1}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/fQ;->a(Lu/h;)V

    return-void
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x3

    iget v0, p0, Lh/fQ;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v3}, Lh/fQ;->b(I)V

    invoke-direct {p0}, Lh/fQ;->J()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lh/fQ;->H()V

    iget v0, p0, Lh/fQ;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lh/fQ;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lh/fQ;->J()V

    invoke-virtual {p0, v3}, Lh/fQ;->b(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    iput v2, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lh/fQ;->a:I

    iput v0, p0, Lh/fQ;->n:I

    iput v3, p0, Lh/fQ;->a:I

    iput v2, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v2}, Lh/fQ;->b(I)V

    iput v2, p0, Lh/fQ;->p:I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    iput v2, p0, Lh/fQ;->p:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public f()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lh/fQ;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/fQ;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh/fQ;->p:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lh/fQ;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Lx/B;
    .locals 12

    const/16 v11, 0x32f

    const/16 v10, 0x32d

    const/4 v1, 0x2

    const/16 v9, 0x328

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-boolean v2, p0, Lh/fQ;->u:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lh/fQ;->G:Z

    if-nez v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lh/fQ;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v2, 0x1b6

    :goto_0
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lh/fQ;->D:Law/e;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/D;->a(Law/e;Ljava/util/Vector;)V

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lh/fQ;->M:Z

    if-eqz v0, :cond_3

    move v2, v10

    :goto_1
    iget-boolean v0, p0, Lh/fQ;->M:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x27b

    move v5, v0

    :goto_2
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x0

    move v7, v0

    :goto_3
    iget-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    iget-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    const/16 v8, 0x10

    invoke-static {v0, v8}, Law/b;->h(Law/e;I)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Law/e;->f(I)Law/e;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-static {}, Lo/A;->D()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_2
    const/16 v2, 0x2e8

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x27a

    move v5, v0

    goto :goto_2

    :cond_5
    const/16 v8, 0x15

    invoke-virtual {v0, v8}, Law/e;->d(I)I

    move-result v0

    if-ne v1, v0, :cond_6

    invoke-static {}, Lo/A;->C()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {}, Lo/A;->B()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lh/fQ;->E:Ljava/util/List;

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v6, v5, v2}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lh/fQ;->M:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lh/fQ;->M:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3ae

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_5
    new-instance v2, Lx/n;

    invoke-direct {v2, v0, v3, v3, v3}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    move-object v5, v2

    :goto_6
    new-instance v0, Lx/B;

    iget-object v2, p0, Lh/fQ;->q:Ljava/lang/String;

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_9
    move-object v0, v3

    goto :goto_5

    :cond_a
    move-object v5, v3

    goto :goto_6
.end method

.method protected m()I
    .locals 1

    iget v0, p0, Lh/fQ;->o:I

    return v0
.end method

.method protected n()V
    .locals 2

    iget-boolean v0, p0, Lh/fQ;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v1}, LH/f;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lh/fQ;->a(Lf/h;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/fQ;->G:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fQ;->d:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lh/fQ;->a(Lu/h;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lu/h;->a()Lu/h;

    move-result-object v0

    goto :goto_1
.end method

.method protected o()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    return-void
.end method

.method protected p()V
    .locals 3

    iget-object v0, p0, Lh/fQ;->N:Lcom/google/googlenav/g;

    check-cast v0, Lcom/google/googlenav/android/Q;

    new-instance v1, Lh/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh/w;-><init>(Lh/fQ;Lh/aP;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Lcom/google/googlenav/android/M;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/fQ;->G:Z

    return-void
.end method

.method protected r()V
    .locals 3

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v0

    iget-object v1, p0, Lh/fQ;->F:Lh/cD;

    invoke-virtual {v0, v1}, Li/av;->a(Lh/cD;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lh/fQ;->b(I)V

    invoke-virtual {p0}, Lh/fQ;->v()V

    iget-object v0, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->q()Li/av;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/av;->e(ILjava/lang/Object;)V

    return-void
.end method

.method protected s()V
    .locals 4

    iget-object v0, p0, Lh/fQ;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->C()Lh/fS;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lh/fQ;->b(I)V

    invoke-virtual {p0}, Lh/fQ;->v()V

    iget-object v1, p0, Lh/fQ;->x:Lcom/google/googlenav/bL;

    const-string v2, "stars"

    iget-object v3, p0, Lh/fQ;->F:Lh/cD;

    invoke-virtual {v0, v1, v2, v3}, Lh/fS;->a(Lcom/google/googlenav/bL;Ljava/lang/String;Lh/cD;)V

    return-void
.end method

.method public x_()[Lax/e;
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lh/fQ;->a:I

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Lax/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/w;->I:Lax/e;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
