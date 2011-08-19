.class public Lh/dR;
.super Lh/eR;


# instance fields
.field a:Lh/ew;

.field private b:Lh/dw;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method static synthetic a(Lh/dR;)Lh/dw;
    .locals 1

    iget-object v0, p0, Lh/dR;->b:Lh/dw;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/c;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/R;

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->c:Lf/h;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/googlenav/R;-><init>(Lf/h;III)V

    new-instance v1, Lh/aa;

    invoke-direct {v1, p0, p1}, Lh/aa;-><init>(Lh/dR;Lcom/google/googlenav/c;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/R;->a(Lcom/google/googlenav/N;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic a(Lh/dR;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dR;->b(Law/e;)V

    return-void
.end method

.method static synthetic a(Lh/dR;Lcom/google/googlenav/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dR;->a(Lcom/google/googlenav/c;)V

    return-void
.end method

.method private b(Law/e;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/h;

    invoke-direct {v0, p1}, Lcom/google/googlenav/h;-><init>(Law/e;)V

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->d:Lh/i;

    if-eqz v1, :cond_0

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->d:Lh/i;

    invoke-interface {v1, v0}, Lh/i;->a(Lcom/google/googlenav/h;)V

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    const/4 v1, 0x0

    iput-object v1, v0, Lh/ew;->d:Lh/i;

    :cond_0
    invoke-virtual {p0}, Lh/dR;->v()V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/dR;->a:Lh/ew;

    invoke-virtual {p0}, Lh/dR;->v()V

    invoke-virtual {p0, v0}, Lh/dR;->a(Lh/ew;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dR;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/dR;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/dR;->d()V

    iget v0, p0, Lh/dR;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/dR;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/dR;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    new-instance v0, Lh/dw;

    invoke-direct {v0, p0}, Lh/dw;-><init>(Lh/dR;)V

    iput-object v0, p0, Lh/dR;->b:Lh/dw;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    iget-object v2, p0, Lh/dR;->b:Lh/dw;

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dR;->j:Lx/J;

    iget-object v0, p0, Lh/dR;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v0, p0, Lh/dR;->b:Lh/dw;

    invoke-virtual {v0}, Lh/dw;->c()V

    return-void
.end method

.method public a(Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dR;->b(Law/e;)V

    return-void
.end method

.method public a(Lh/ew;)V
    .locals 0

    iput-object p1, p0, Lh/dR;->a:Lh/ew;

    invoke-virtual {p0}, Lh/dR;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x66

    const-string v1, "a"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    invoke-interface {v0}, Lh/i;->a()V

    :cond_0
    iput-object v1, p0, Lh/dR;->a:Lh/ew;

    iput-object v1, p0, Lh/dR;->b:Lh/dw;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/dR;->b:Lh/dw;

    if-eqz v0, :cond_0

    sget-object v0, Lh/X;->a:[I

    iget-object v1, p0, Lh/dR;->b:Lh/dw;

    invoke-virtual {v1}, Lh/dw;->f()Lh/dd;

    move-result-object v1

    invoke-virtual {v1}, Lh/dd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lh/dR;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dR;->v()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lh/dR;->b:Lh/dw;

    invoke-virtual {v0}, Lh/dw;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/android/x;->b()Lcom/google/googlenav/android/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    invoke-interface {v0}, Lh/i;->a()V

    invoke-virtual {p0}, Lh/dR;->v()V

    iget-object v0, p0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const-string v1, "GO AWAY MONKEY"

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->g(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v1}, Lcom/google/googlenav/ao;->d()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v4, v0

    :goto_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v7

    new-instance v0, Lo/aK;

    iget-object v1, p0, Lh/dR;->a:Lh/ew;

    iget-object v1, v1, Lh/ew;->c:Lf/h;

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    iget-object v2, p0, Lh/dR;->a:Lh/ew;

    iget-object v2, v2, Lh/ew;->c:Lf/h;

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    iget-object v3, p0, Lh/dR;->b:Lh/dw;

    invoke-virtual {v3}, Lh/dw;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lh/ab;

    invoke-direct {v6, p0}, Lh/ab;-><init>(Lh/dR;)V

    invoke-direct/range {v0 .. v6}, Lo/aK;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/v;)V

    invoke-virtual {v7, v0}, Lak/h;->c(Lak/d;)V

    :cond_1
    iget-object v0, p0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    move-object v4, v1

    goto :goto_1
.end method

.method public j()V
    .locals 2

    const-string v0, "l"

    invoke-virtual {p0, v0}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/dR;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    invoke-interface {v0}, Lh/i;->b()V

    new-instance v0, Lh/di;

    invoke-direct {v0}, Lh/di;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lh/di;->a(I)Lh/di;

    new-instance v1, Lh/Z;

    invoke-direct {v1, p0}, Lh/Z;-><init>(Lh/dR;)V

    invoke-virtual {v0, v1}, Lh/di;->a(Lh/cD;)Lh/di;

    iget-object v1, p0, Lh/dR;->g:Lh/eY;

    invoke-virtual {v1, v0}, Lh/eY;->a(Lh/di;)V

    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "c"

    invoke-virtual {p0, v0}, Lh/dR;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dR;->v()V

    return-void
.end method

.method public l()V
    .locals 7

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lh/dR;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->c:Lf/h;

    iget-object v1, p0, Lh/dR;->b:Lh/dw;

    invoke-virtual {v1}, Lh/dw;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh/Y;

    invoke-direct {v2, p0}, Lh/Y;-><init>(Lh/dR;)V

    invoke-static {v0, v1, v2}, Lh/ac;->a(Lf/h;Ljava/lang/String;Lo/cd;)Lo/J;

    move-result-object v2

    iget-object v0, p0, Lh/dR;->g:Lh/eY;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    return-void
.end method
