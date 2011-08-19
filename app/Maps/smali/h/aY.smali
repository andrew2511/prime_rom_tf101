.class public Lh/aY;
.super Lh/eR;


# instance fields
.field private a:Lh/eK;

.field private b:Lh/eN;

.field private c:Lh/bA;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/aY;->a:Lh/eK;

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/aY;->a:Lh/eK;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/aY;->a:Lh/eK;

    invoke-virtual {p0}, Lh/aY;->v()V

    iput-object v0, p0, Lh/aY;->a:Lh/eK;

    invoke-virtual {p0}, Lh/aY;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/aY;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aY;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/aY;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/aY;->d()V

    iget v0, p0, Lh/aY;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/aY;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/aY;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    :cond_1
    iget v0, p0, Lh/aY;->k:I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    new-instance v0, Lh/bA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/bA;-><init>(Lh/cx;)V

    iput-object v0, p0, Lh/aY;->c:Lh/bA;

    new-instance v0, Lh/eN;

    invoke-direct {v0}, Lh/eN;-><init>()V

    iput-object v0, p0, Lh/aY;->b:Lh/eN;

    iget-object v0, p0, Lh/aY;->b:Lh/eN;

    iget-object v1, p0, Lh/aY;->c:Lh/bA;

    invoke-virtual {v1}, Lh/bA;->a()Lh/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/eN;->a(Lh/o;)V

    iget-object v0, p0, Lh/aY;->c:Lh/bA;

    iget-object v1, p0, Lh/aY;->b:Lh/eN;

    invoke-virtual {v0, v1}, Lh/bA;->a(Lh/eN;)V

    new-instance v0, Lx/z;

    iget-object v1, p0, Lh/aY;->b:Lh/eN;

    invoke-direct {v0, v1}, Lx/z;-><init>(LI/n;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/aY;->j:Lx/J;

    iget-object v0, p0, Lh/aY;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v0, p0, Lh/aY;->c:Lh/bA;

    invoke-virtual {v0}, Lh/bA;->b()V

    return-void
.end method

.method protected a(Lh/aK;)V
    .locals 2

    new-instance v0, Lh/eK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/eK;-><init>(Lh/dQ;)V

    iput-object p1, v0, Lh/eK;->a:Lh/aK;

    iput-object v0, p0, Lh/aY;->a:Lh/eK;

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/aY;->c:Lh/bA;

    invoke-virtual {v0, v1}, Lh/bA;->a(Lh/eN;)V

    iget-object v0, p0, Lh/aY;->b:Lh/eN;

    invoke-virtual {v0, v1}, Lh/eN;->a(Lh/o;)V

    iput-object v1, p0, Lh/aY;->b:Lh/eN;

    iput-object v1, p0, Lh/aY;->c:Lh/bA;

    iput-object v1, p0, Lh/aY;->a:Lh/eK;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/aY;->a:Lh/eK;

    iget-object v0, v0, Lh/eK;->a:Lh/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aY;->a:Lh/eK;

    iget-object v0, v0, Lh/eK;->a:Lh/aK;

    invoke-interface {v0}, Lh/aK;->a()V

    :cond_0
    invoke-virtual {p0}, Lh/aY;->v()V

    return-void
.end method
