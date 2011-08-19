.class public Lh/bT;
.super Lh/eR;


# instance fields
.field private a:Lh/cF;

.field private b:Lh/dM;

.field private c:Lh/dh;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 1

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/bT;->a:Lh/cF;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/bT;->a:Lh/cF;

    invoke-virtual {p0}, Lh/bT;->v()V

    invoke-virtual {p0, v0}, Lh/bT;->a(Lh/cF;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/bT;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/bT;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/bT;->d()V

    iget v0, p0, Lh/bT;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/bT;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/bT;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 6

    new-instance v2, Lh/k;

    iget-object v0, p0, Lh/bT;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    iget-object v1, p0, Lh/bT;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->v()LaU/a;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lh/k;-><init>(Lo/bj;LaU/a;)V

    new-instance v0, Lh/dM;

    iget-object v1, p0, Lh/bT;->a:Lh/cF;

    iget-boolean v1, v1, Lh/cF;->c:Z

    invoke-direct {v0, v1}, Lh/dM;-><init>(Z)V

    iput-object v0, p0, Lh/bT;->b:Lh/dM;

    new-instance v0, Lh/dh;

    iget-object v1, p0, Lh/bT;->a:Lh/cF;

    iget-object v1, v1, Lh/cF;->d:Li/br;

    iget-object v3, p0, Lh/bT;->g:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->v()LaU/a;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lh/dh;-><init>(Li/br;LaU/a;)V

    iput-object v0, p0, Lh/bT;->c:Lh/dh;

    new-instance v0, Lh/cs;

    iget-object v1, p0, Lh/bT;->g:Lh/eY;

    iget-object v3, p0, Lh/bT;->b:Lh/dM;

    iget-object v4, p0, Lh/bT;->c:Lh/dh;

    new-instance v5, Lh/aq;

    invoke-direct {v5, p0}, Lh/aq;-><init>(Lh/bT;)V

    invoke-direct/range {v0 .. v5}, Lh/cs;-><init>(Lh/eY;Lh/k;Lh/dM;Lh/dh;Lh/p;)V

    iget-object v1, p0, Lh/bT;->b:Lh/dM;

    invoke-virtual {v0}, Lh/cs;->a()Lh/cN;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh/dM;->a(Lh/cN;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lx/z;

    iget-object v3, p0, Lh/bT;->b:Lh/dM;

    invoke-direct {v2, v3}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/bT;->j:Lx/J;

    iget-object v1, p0, Lh/bT;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    iget-object v1, p0, Lh/bT;->a:Lh/cF;

    iget-object v1, v1, Lh/cF;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1}, Lh/cs;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

.method public a(Lh/cF;)V
    .locals 0

    iput-object p1, p0, Lh/bT;->a:Lh/cF;

    invoke-virtual {p0}, Lh/bT;->u()V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/bT;->b:Lh/dM;

    invoke-virtual {v0, v1}, Lh/dM;->a(Lh/cN;)V

    iput-object v1, p0, Lh/bT;->b:Lh/dM;

    iput-object v1, p0, Lh/bT;->c:Lh/dh;

    iget-object v0, p0, Lh/bT;->a:Lh/cF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/bT;->a:Lh/cF;

    iget-object v0, v0, Lh/cF;->b:Lh/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bT;->a:Lh/cF;

    iget-object v0, v0, Lh/cF;->b:Lh/fn;

    invoke-interface {v0}, Lh/fn;->a()V

    :cond_0
    iget-object v0, p0, Lh/bT;->a:Lh/cF;

    iput-object v1, v0, Lh/cF;->b:Lh/fn;

    iput-object v1, p0, Lh/bT;->a:Lh/cF;

    :cond_1
    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lh/bT;->v()V

    return-void
.end method
