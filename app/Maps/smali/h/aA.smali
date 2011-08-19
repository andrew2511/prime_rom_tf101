.class public Lh/aA;
.super Lh/eR;


# instance fields
.field private a:Lh/eU;

.field private b:Lh/fJ;

.field private c:Lh/dn;

.field private final d:Lh/eI;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;Lh/eI;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/aA;->a:Lh/eU;

    iput-object p3, p0, Lh/aA;->d:Lh/eI;

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/aA;->a:Lh/eU;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/aA;->a:Lh/eU;

    invoke-virtual {p0}, Lh/aA;->v()V

    iput-object v0, p0, Lh/aA;->a:Lh/eU;

    invoke-virtual {p0}, Lh/aA;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/aA;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aA;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_0
    iget v0, p0, Lh/aA;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/aA;->d()V

    iget v0, p0, Lh/aA;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/aA;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/aA;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    :cond_1
    iget v0, p0, Lh/aA;->k:I

    goto :goto_0
.end method

.method public a()V
    .locals 6

    new-instance v0, Lh/dn;

    iget-object v1, p0, Lh/aA;->g:Lh/eY;

    iget-object v2, p0, Lh/aA;->a:Lh/eU;

    iget-object v2, v2, Lh/eU;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v2

    iget-object v3, p0, Lh/aA;->a:Lh/eU;

    iget-object v3, v3, Lh/eU;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aN()Li/br;

    move-result-object v3

    iget-object v4, p0, Lh/aA;->d:Lh/eI;

    new-instance v5, Lh/P;

    invoke-direct {v5, p0}, Lh/P;-><init>(Lh/aA;)V

    invoke-direct/range {v0 .. v5}, Lh/dn;-><init>(Lh/eY;Lcom/google/googlenav/ui/bu;Li/br;Lh/eI;Lh/dV;)V

    iput-object v0, p0, Lh/aA;->c:Lh/dn;

    new-instance v0, Lh/fJ;

    iget-object v1, p0, Lh/aA;->a:Lh/eU;

    iget-boolean v1, v1, Lh/eU;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lh/fJ;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lh/aA;->b:Lh/fJ;

    iget-object v0, p0, Lh/aA;->b:Lh/fJ;

    iget-object v1, p0, Lh/aA;->c:Lh/dn;

    invoke-virtual {v1}, Lh/dn;->a()Lh/R;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/fJ;->a(Lh/R;)V

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    iget-object v1, p0, Lh/aA;->b:Lh/fJ;

    invoke-virtual {v0, v1}, Lh/dn;->a(Lh/fJ;)V

    new-instance v0, Lx/z;

    iget-object v1, p0, Lh/aA;->b:Lh/fJ;

    invoke-direct {v0, v1}, Lx/z;-><init>(LI/n;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/aA;->j:Lx/J;

    iget-object v0, p0, Lh/aA;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    iget-object v1, p0, Lh/aA;->a:Lh/eU;

    iget-object v1, v1, Lh/eU;->b:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1}, Lh/dn;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZLh/ae;)V
    .locals 2

    new-instance v0, Lh/eU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/eU;-><init>(Lh/P;)V

    iput-object p1, v0, Lh/eU;->a:Lcom/google/googlenav/ui/aT;

    iput-object p2, v0, Lh/eU;->b:Lcom/google/googlenav/h;

    iput-boolean p3, v0, Lh/eU;->c:Z

    iput-object p4, v0, Lh/eU;->d:Lh/ae;

    iput-object v0, p0, Lh/aA;->a:Lh/eU;

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    invoke-virtual {v0, v1}, Lh/dn;->a(Lh/fJ;)V

    iput-object v1, p0, Lh/aA;->c:Lh/dn;

    :cond_0
    iget-object v0, p0, Lh/aA;->b:Lh/fJ;

    invoke-virtual {v0, v1}, Lh/fJ;->a(Lh/R;)V

    iput-object v1, p0, Lh/aA;->b:Lh/fJ;

    iget-object v0, p0, Lh/aA;->a:Lh/eU;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/aA;->a:Lh/eU;

    iget-object v0, v0, Lh/eU;->d:Lh/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/aA;->a:Lh/eU;

    iget-object v0, v0, Lh/eU;->d:Lh/ae;

    invoke-interface {v0}, Lh/ae;->a()V

    :cond_1
    iget-object v0, p0, Lh/aA;->a:Lh/eU;

    iput-object v1, v0, Lh/eU;->d:Lh/ae;

    iput-object v1, p0, Lh/aA;->a:Lh/eU;

    :cond_2
    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aA;->c:Lh/dn;

    invoke-virtual {v0}, Lh/dn;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lh/aA;->v()V

    const-string v0, "cy"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
