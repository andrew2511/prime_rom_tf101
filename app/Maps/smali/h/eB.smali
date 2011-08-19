.class public Lh/eB;
.super Lh/eR;


# instance fields
.field protected final a:LaD/n;

.field private final b:Lcom/google/googlenav/bL;

.field private c:Lcom/google/googlenav/c;

.field private d:I

.field private e:Lx/J;

.field private f:Z

.field private l:LaJ/c;

.field private final m:Lcom/google/googlenav/ui/aG;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    new-instance v0, LaJ/d;

    invoke-direct {v0}, LaJ/d;-><init>()V

    iput-object v0, p0, Lh/eB;->l:LaJ/c;

    new-instance v0, Lh/ci;

    invoke-direct {v0, p0}, Lh/ci;-><init>(Lh/eB;)V

    iput-object v0, p0, Lh/eB;->a:LaD/n;

    iput-object p3, p0, Lh/eB;->b:Lcom/google/googlenav/bL;

    invoke-interface {p3}, Lcom/google/googlenav/bL;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->c()LaD/p;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->A()Lk/l;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;Lk/l;)V

    iput-object v1, p0, Lh/eB;->m:Lcom/google/googlenav/ui/aG;

    return-void
.end method

.method static synthetic a(Lh/eB;)I
    .locals 1

    iget v0, p0, Lh/eB;->d:I

    return v0
.end method

.method static synthetic a(Lh/eB;Ljava/lang/String;)Lx/i;
    .locals 1

    invoke-direct {p0, p1}, Lh/eB;->a(Ljava/lang/String;)Lx/i;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lx/i;
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/Vector;-><init>(I)V

    if-eqz v0, :cond_0

    new-instance v2, Lx/w;

    const-string v3, "GMM-CLIENT-AUTH-COOKIE"

    const-string v5, "google.com"

    invoke-direct {v2, v3, v0, v5}, Lx/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x453

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x270

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v8, v1

    move-object v9, v1

    invoke-static/range {v0 .. v10}, Lx/C;->a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;

    move-result-object v0

    new-instance v2, Lx/i;

    invoke-direct {v2, v1, v4, v0, v1}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    return-object v2
.end method

.method static synthetic a(Lh/eB;ZLh/dZ;Lx/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh/eB;->a(ZLh/dZ;Lx/i;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Lh/dZ;

    invoke-direct {v2, v3}, Lh/dZ;-><init>(Lh/ci;)V

    iget-object v0, p0, Lh/eB;->g:Lh/eY;

    const/16 v1, 0x227

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lh/eB;->a(Ljava/lang/String;)Lx/i;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lh/eB;->a(ZLh/dZ;Lx/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/eB;->l:LaJ/c;

    const-string v1, "checkLogin"

    new-instance v3, Lh/ch;

    invoke-direct {v3, p0, v2, p1, p2}, Lh/ch;-><init>(Lh/eB;Lh/dZ;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v3}, LaJ/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(ZLh/dZ;Lx/i;)V
    .locals 2

    invoke-virtual {p2}, Lh/dZ;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lx/k;->a(Lx/i;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    if-eqz p1, :cond_2

    iput-object v0, p0, Lh/eB;->e:Lx/J;

    :goto_1
    iget-object v1, p0, Lh/eB;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->f()V

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lh/eB;->j:Lx/J;

    goto :goto_1
.end method

.method static synthetic b(Lh/eB;)V
    .locals 0

    invoke-direct {p0}, Lh/eB;->j()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    iget-object v1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/c;)Z

    move-result v0

    iget-object v1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/d;->a(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lh/eB;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lh/eB;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/eB;->b:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private h()V
    .locals 13

    const/4 v3, 0x0

    const/16 v0, 0x282

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    iget-object v1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/c;)Z

    move-result v4

    new-instance v0, Lx/B;

    const/4 v1, 0x1

    iget-object v5, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    new-instance v6, Lcom/google/googlenav/ui/ax;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    iget-object v7, p0, Lh/eB;->m:Lcom/google/googlenav/ui/aG;

    iget-object v8, p0, Lh/eB;->a:LaD/n;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/google/googlenav/ui/M;->a(Lcom/google/googlenav/c;ZLx/U;Lcom/google/googlenav/ui/aG;LaD/n;)Ljava/util/Vector;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move-object v12, v3

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eB;->j:Lx/J;

    iget-object v0, p0, Lh/eB;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private j()V
    .locals 5

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->x()Ln/b;

    move-result-object v1

    const-string v2, "http://maps.google.com/coupons/checklogin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ln/b;->a(Ljava/lang/String;Z)Ln/n;

    move-result-object v1

    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMM-CLIENT-AUTH-COOKIE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ln/n;->d()I

    move-result v0

    invoke-interface {v1}, Ln/n;->f()V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lh/ez;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/ez;-><init>(Lh/ci;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/a;)V

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->j()V

    invoke-virtual {v0}, Lh/ez;->c()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->b(Lcom/google/googlenav/login/a;)V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh/eB;->k:I

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    iget v1, p0, Lh/eB;->d:I

    invoke-virtual {p0}, Lh/eB;->v()V

    invoke-virtual {p0, v0, v1}, Lh/eB;->a(Lcom/google/googlenav/c;I)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/eB;->d()V

    iget v0, p0, Lh/eB;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eB;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/eB;->k:I

    goto :goto_0
.end method

.method public a(Lf/h;)I
    .locals 1

    invoke-direct {p0}, Lh/eB;->m()V

    const/4 v0, 0x4

    return v0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/eB;->k:I

    iget-object v0, p0, Lh/eB;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eB;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eB;->j:Lx/J;

    :cond_0
    iget v0, p0, Lh/eB;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lh/eB;->m()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lh/eB;->h()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lh/eB;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/eB;->b(Z)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/c;I)V
    .locals 0

    iput-object p1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    iput p2, p0, Lh/eB;->d:I

    invoke-virtual {p0}, Lh/eB;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v3

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/c;->c(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lh/eB;->a(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lh/eB;->f:Z

    iput v4, p0, Lh/eB;->k:I

    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2}, Lh/eB;->b(Z)V

    iput-boolean v2, p0, Lh/eB;->f:Z

    iput v4, p0, Lh/eB;->k:I

    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x76c -> :sswitch_0
        0x79e -> :sswitch_1
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/eB;->e:Lx/J;

    invoke-virtual {p0, v0}, Lh/eB;->a(Lx/J;)V

    iput-object v1, p0, Lh/eB;->e:Lx/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/eB;->f:Z

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v1, p0, Lh/eB;->c:Lcom/google/googlenav/c;

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lh/eB;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eB;->e:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eB;->e:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eB;->e:Lx/J;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/eB;->f:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lh/eB;->k:I

    goto :goto_0
.end method
