.class public Lh/e;
.super Lh/eR;


# instance fields
.field private a:Lh/m;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method

.method private h()LI/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 1

    iget-object v0, p0, Lh/e;->a:Lh/m;

    invoke-virtual {p0}, Lh/e;->v()V

    iput-object v0, p0, Lh/e;->a:Lh/m;

    invoke-virtual {p0}, Lh/e;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/e;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/e;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/e;->d()V

    iget v0, p0, Lh/e;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/e;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/e;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/e;->k:I

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/e;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/e;->j:Lx/J;

    iget-object v0, p0, Lh/e;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/e;->a:Lh/m;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/e;->a:Lh/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/e;->a:Lh/m;

    iget-object v0, v0, Lh/m;->a:Lh/bV;

    invoke-interface {v0}, Lh/bV;->a()V

    :cond_0
    invoke-virtual {p0}, Lh/e;->v()V

    return-void
.end method
