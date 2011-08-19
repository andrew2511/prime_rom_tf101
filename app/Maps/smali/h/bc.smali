.class public Lh/bc;
.super Lh/eR;


# instance fields
.field private a:Lh/eA;

.field private final b:Lcom/google/googlenav/bL;

.field private c:Lh/el;


# direct methods
.method static synthetic a(Lh/bc;)Lh/el;
    .locals 1

    iget-object v0, p0, Lh/bc;->c:Lh/el;

    return-object v0
.end method

.method private h()LI/n;
    .locals 2

    new-instance v0, Lh/el;

    iget-object v1, p0, Lh/bc;->a:Lh/eA;

    invoke-direct {v0, p0, v1}, Lh/el;-><init>(Lh/bc;Lh/eA;)V

    iput-object v0, p0, Lh/bc;->c:Lh/el;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/bc;->a:Lh/eA;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/bc;->a:Lh/eA;

    invoke-virtual {p0}, Lh/bc;->v()V

    invoke-virtual {p0, v0}, Lh/bc;->a(Lh/eA;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/bc;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/bc;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/bc;->d()V

    iget v0, p0, Lh/bc;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/bc;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/bc;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    new-instance v0, Lh/fR;

    invoke-direct {v0, p0}, Lh/fR;-><init>(Lh/bc;)V

    iget-object v1, p0, Lh/bc;->j:Lx/J;

    if-nez v1, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lx/z;

    invoke-direct {p0}, Lh/bc;->h()LI/n;

    move-result-object v3

    invoke-direct {v2, v3}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/bc;->j:Lx/J;

    :cond_0
    iget-object v1, p0, Lh/bc;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->d(Z)Lcom/google/googlenav/V;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    iget-object v1, p0, Lh/bc;->b:Lcom/google/googlenav/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method public a(Lh/eA;)V
    .locals 0

    iput-object p1, p0, Lh/bc;->a:Lh/eA;

    invoke-virtual {p0}, Lh/bc;->u()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v0, p0, Lh/bc;->a:Lh/eA;

    iput-object v0, p0, Lh/bc;->c:Lh/el;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/bc;->a:Lh/eA;

    invoke-interface {v0}, Lh/eA;->c()V

    invoke-virtual {p0}, Lh/bc;->v()V

    return-void
.end method
