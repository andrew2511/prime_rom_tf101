.class public Lh/bx;
.super Lh/eR;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Lcom/google/googlenav/bu;

.field private c:I

.field private d:Lh/cL;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 1

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method private a(Law/e;)V
    .locals 2

    const/16 v1, 0x9e

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lh/bx;->v()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aE;->a(Law/e;)Lcom/google/googlenav/aE;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Lcom/google/googlenav/aE;)[Lcom/google/googlenav/bu;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/bx;->a([Lcom/google/googlenav/bu;)V

    goto :goto_0
.end method

.method static synthetic a(Lh/bx;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/bx;->a(Law/e;)V

    return-void
.end method

.method private a([Lcom/google/googlenav/bu;)V
    .locals 4

    new-instance v0, Lh/cL;

    iget v1, p0, Lh/bx;->c:I

    iget-object v2, p0, Lh/bx;->h:LaU/a;

    iget-object v3, p0, Lh/bx;->g:Lh/eY;

    invoke-direct {v0, p1, v1, v2, v3}, Lh/cL;-><init>([Lcom/google/googlenav/bu;ILaU/a;Lh/eY;)V

    iput-object v0, p0, Lh/bx;->d:Lh/cL;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    iget-object v2, p0, Lh/bx;->d:Lh/cL;

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/bx;->j:Lx/J;

    iget-object v0, p0, Lh/bx;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private h()V
    .locals 7

    new-instance v2, Lh/aU;

    invoke-direct {v2, p0}, Lh/aU;-><init>(Lh/bx;)V

    iget-object v0, p0, Lh/bx;->g:Lh/eY;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    new-instance v0, Lh/aT;

    invoke-direct {v0, p0, v2}, Lh/aT;-><init>(Lh/bx;Lak/f;)V

    iget-object v1, p0, Lh/bx;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/ad;->a(Lcom/google/googlenav/bh;Ljava/lang/String;)Lcom/google/googlenav/ad;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 3

    iget-object v0, p0, Lh/bx;->a:Ljava/lang/String;

    iget-object v1, p0, Lh/bx;->b:[Lcom/google/googlenav/bu;

    iget v2, p0, Lh/bx;->c:I

    invoke-virtual {p0}, Lh/bx;->v()V

    invoke-virtual {p0, v0, v1, v2}, Lh/bx;->a(Ljava/lang/String;[Lcom/google/googlenav/bu;I)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/bx;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/bx;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/bx;->d()V

    iget v0, p0, Lh/bx;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/bx;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/bx;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/bx;->k:I

    iget-object v0, p0, Lh/bx;->b:[Lcom/google/googlenav/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bx;->b:[Lcom/google/googlenav/bu;

    invoke-direct {p0, v0}, Lh/bx;->a([Lcom/google/googlenav/bu;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lh/bx;->h()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/bu;I)V
    .locals 0

    iput-object p1, p0, Lh/bx;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/bx;->b:[Lcom/google/googlenav/bu;

    iput p3, p0, Lh/bx;->c:I

    invoke-virtual {p0}, Lh/bx;->u()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v0, p0, Lh/bx;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/bx;->b:[Lcom/google/googlenav/bu;

    iput-object v0, p0, Lh/bx;->d:Lh/cL;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/bx;->d:Lh/cL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bx;->d:Lh/cL;

    invoke-virtual {v0}, Lh/cL;->c()V

    :cond_0
    invoke-virtual {p0}, Lh/bx;->v()V

    return-void
.end method
