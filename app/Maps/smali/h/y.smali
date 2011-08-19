.class public Lh/y;
.super Lh/eR;

# interfaces
.implements Lax/f;
.implements Lh/cD;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lh/f;

.field protected c:I

.field protected d:Lh/eR;

.field private e:Z

.field private f:Lh/en;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/y;->d:Lh/eR;

    new-instance v0, Lh/en;

    invoke-direct {v0, p1, p0}, Lh/en;-><init>(Lh/eY;Lh/y;)V

    iput-object v0, p0, Lh/y;->f:Lh/en;

    return-void
.end method

.method protected static a(Ljava/lang/String;ILjava/util/Vector;I)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget v1, p0, Lh/y;->c:I

    invoke-virtual {p0}, Lh/y;->v()V

    iput-object v0, p0, Lh/y;->b:Lh/f;

    iput v1, p0, Lh/y;->c:I

    return-void
.end method

.method private o()V
    .locals 8

    invoke-direct {p0}, Lh/y;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/y;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/y;->g:Lh/eY;

    const/16 v1, 0x345

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x341

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xed

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lh/r;

    invoke-direct {v7, p0}, Lh/r;-><init>(Lh/y;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-static {v1, v2, v2, v3}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/f;->h:Ljava/lang/String;

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->h:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->h:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->h:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->j:Lf/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/y;->b:Lh/f;

    const-string v1, ""

    iput-object v1, v0, Lh/f;->h:Ljava/lang/String;

    :cond_0
    new-instance v0, Lh/u;

    invoke-direct {v0, p0}, Lh/u;-><init>(Lh/y;)V

    invoke-virtual {p0, v0}, Lh/y;->a(LaH/b;)LaH/a;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->i:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lh/y;->f:Lh/en;

    invoke-virtual {v1, v0}, Lh/en;->a(LaH/a;)V

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/y;->a(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lh/y;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x34e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/y;->g()S

    move-result v0

    const-string v1, "nt"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/y;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lh/y;->a(Lak/d;)V

    goto :goto_0
.end method

.method private r()Lcom/google/googlenav/ui/bx;
    .locals 4

    const/16 v0, 0x349

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->k:Lcom/google/googlenav/ui/az;

    if-nez v1, :cond_0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    new-instance v2, Lcom/google/googlenav/ui/az;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v2, v1, Lh/f;->k:Lcom/google/googlenav/ui/az;

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x5ef

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->k:Lcom/google/googlenav/ui/az;

    new-instance v2, Lcom/google/googlenav/ui/aB;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aB;-><init>()V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/google/googlenav/ui/bx;
    .locals 4

    const/16 v0, 0x356

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->i:Lcom/google/googlenav/ui/az;

    if-nez v1, :cond_0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    new-instance v2, Lcom/google/googlenav/ui/az;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/az;-><init>(Z)V

    iput-object v2, v1, Lh/f;->i:Lcom/google/googlenav/ui/az;

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x5e4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->i:Lcom/google/googlenav/ui/az;

    new-instance v2, Lcom/google/googlenav/ui/aB;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aB;-><init>()V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lh/y;->j:Lx/J;

    iget v1, p0, Lh/y;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iput-object v3, p0, Lh/y;->j:Lx/J;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lh/y;->h()Lx/B;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/y;->j:Lx/J;

    iget-object v1, p0, Lh/y;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lh/y;->j:Lx/J;

    goto :goto_0
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E_()V
    .locals 0

    invoke-virtual {p0}, Lh/y;->u()V

    return-void
.end method

.method public T_()V
    .locals 0

    invoke-direct {p0}, Lh/y;->n()V

    invoke-virtual {p0}, Lh/y;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-boolean v0, p0, Lh/y;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh/y;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/y;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/y;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    :cond_1
    iget v0, p0, Lh/y;->k:I

    goto :goto_0
.end method

.method public a(Lax/c;)I
    .locals 2

    iget-boolean v0, p0, Lh/y;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh/y;->k:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lh/y;->d()V

    iget v0, p0, Lh/y;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/y;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/y;->k:I

    goto :goto_0
.end method

.method protected a(LaH/b;)LaH/a;
    .locals 12

    new-instance v0, LaH/a;

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget v1, v1, Lh/f;->f:I

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->h:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lh/y;->b:Lh/f;

    iget-object v4, v4, Lh/f;->a:Lf/h;

    iget-object v5, p0, Lh/y;->b:Lh/f;

    iget-object v5, v5, Lh/f;->i:Lcom/google/googlenav/ui/az;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lh/y;->b:Lh/f;

    iget-object v7, v7, Lh/f;->c:Lf/C;

    iget-object v8, p0, Lh/y;->b:Lh/f;

    iget v8, v8, Lh/f;->d:I

    iget-object v9, p0, Lh/y;->b:Lh/f;

    iget v9, v9, Lh/f;->e:I

    iget-object v10, p0, Lh/y;->b:Lh/f;

    iget-object v10, v10, Lh/f;->b:Ljava/lang/String;

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, LaH/a;-><init>(ILjava/lang/String;[BLf/h;ZILf/C;IILjava/lang/String;LaH/b;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/y;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/y;->e:Z

    invoke-direct {p0}, Lh/y;->t()V

    return-void
.end method

.method protected a(I)V
    .locals 4

    invoke-virtual {p0}, Lh/y;->g()S

    move-result v0

    const-string v1, "m"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lh/y;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iput p1, p0, Lh/y;->c:I

    invoke-direct {p0}, Lh/y;->t()V

    return-void
.end method

.method protected a(Lak/d;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lh/y;->k:I

    invoke-virtual {p0}, Lh/y;->v()V

    iget-object v0, p0, Lh/y;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x3be

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Law/e;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x359

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/y;->g:Lh/eY;

    new-instance v2, Lh/di;

    invoke-direct {v2}, Lh/di;-><init>()V

    const/16 v3, 0x342

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/di;->a(Ljava/lang/String;)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v5}, Lh/di;->a(I)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v4}, Lh/di;->a(Z)Lh/di;

    move-result-object v2

    invoke-virtual {v2, p0}, Lh/di;->a(Lh/cD;)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v4}, Lh/di;->c(I)Lh/di;

    move-result-object v2

    invoke-virtual {v2, v0}, Lh/di;->c(Ljava/lang/String;)Lh/di;

    move-result-object v0

    const/16 v2, 0x351

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh/di;->d(Ljava/lang/String;)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v4}, Lh/di;->a(B)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v5}, Lh/di;->b(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, v4}, Lh/di;->c(Z)Lh/di;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/di;->a(Law/e;)Lh/di;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/eY;->a(Lh/di;)V

    return-void
.end method

.method public a(Lf/C;IILh/eR;)V
    .locals 1

    new-instance v0, Lh/f;

    invoke-direct {v0, p0}, Lh/f;-><init>(Lh/y;)V

    iput-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iput-object p1, v0, Lh/f;->c:Lf/C;

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iput p2, v0, Lh/f;->d:I

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iput p3, v0, Lh/f;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lh/y;->c:I

    iput-object p4, p0, Lh/y;->d:Lh/eR;

    invoke-virtual {p0}, Lh/y;->u()V

    return-void
.end method

.method protected a(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iput p2, v0, Lh/f;->f:I

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iput-object p1, v0, Lh/f;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lh/y;->g()S

    move-result v0

    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p3}, Lh/y;->a(I)V

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 2

    iget-object v0, p0, Lh/y;->b:Lh/f;

    invoke-virtual {p1}, Lu/h;->f()Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/f;->j:Lf/h;

    invoke-virtual {p0}, Lh/y;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lh/eR;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x362

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v1}, Lh/y;->a(Ljava/lang/String;II)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v7}, Lh/y;->a(I)V

    move v0, v7

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v1}, Lh/y;->a(I)V

    move v0, v7

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lh/y;->c:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh/y;->o()V

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lh/y;->q()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lh/y;->v()V

    move v0, v7

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lh/y;->b:Lh/f;

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lh/f;->h:Ljava/lang/String;

    move v0, v7

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lh/y;->n()V

    invoke-virtual {p0}, Lh/y;->g()S

    move-result v0

    const-string v1, "p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/y;->a(Law/e;)V

    invoke-static {v0}, LaC/a;->a(Law/e;)V

    move v0, v7

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->k:Lcom/google/googlenav/ui/az;

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->k:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-direct {p0}, Lh/y;->t()V

    move v0, v7

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_2

    :sswitch_8
    iget-object v0, p0, Lh/y;->g:Lh/eY;

    const/16 v1, 0x34d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    move v0, v7

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->i:Lcom/google/googlenav/ui/az;

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->i:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    invoke-direct {p0}, Lh/y;->t()V

    move v0, v7

    goto/16 :goto_0

    :cond_2
    move v1, v4

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x5dd -> :sswitch_1
        0x5e1 -> :sswitch_0
        0x5e3 -> :sswitch_5
        0x5e4 -> :sswitch_9
        0x5e5 -> :sswitch_2
        0x5ee -> :sswitch_6
        0x5ef -> :sswitch_7
        0x5f0 -> :sswitch_8
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/y;->b:Lh/f;

    const/4 v0, 0x1

    iput v0, p0, Lh/y;->k:I

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lh/y;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lh/y;->d:Lh/eR;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/y;->d:Lh/eR;

    invoke-virtual {v0}, Lh/eR;->u()V

    :cond_0
    invoke-super {p0}, Lh/eR;->d()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lh/y;->g()S

    move-result v0

    const-string v1, "c"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iput v2, p0, Lh/y;->k:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lh/y;->a(I)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/y;->a(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected g()S
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method protected h()Lx/B;
    .locals 1

    iget v0, p0, Lh/y;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lh/y;->l()Lx/B;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lh/y;->l()Lx/B;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lh/y;->i()Lx/B;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lh/y;->j()Lx/B;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected i()Lx/B;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Lx/B;
    .locals 9

    const/16 v5, 0x5e3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->h:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x345

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aQ;->h(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->k(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v3, Lx/G;

    invoke-direct {v3, v1, v0}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x5ee

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x350

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->j:Lf/h;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->j:Lf/h;

    invoke-virtual {v2}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v5, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    new-array v5, v8, [Lcom/google/googlenav/ui/aI;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/y;->r()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x352

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->Z:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    const/16 v1, 0x353

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aa:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-array v5, v8, [Lcom/google/googlenav/ui/aI;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xc0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;Ljava/lang/String;)Lx/n;

    move-result-object v5

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/y;->k()I

    move-result v1

    iget-object v2, p0, Lh/y;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x34f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method protected k()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method protected l()Lx/B;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x5dd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x365

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->g:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    aput-object v1, v2, v5

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->g:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lh/y;->a(Ljava/util/Vector;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x5e5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->h:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lh/y;->b:Lh/f;

    iget-object v1, v1, Lh/f;->j:Lf/h;

    if-nez v1, :cond_2

    const/16 v1, 0x344

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :goto_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lh/y;->s()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->i:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-array v1, v7, [Lcom/google/googlenav/ui/aI;

    const/16 v2, 0x34b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Z:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x355

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;Ljava/lang/String;)Lx/n;

    move-result-object v5

    new-instance v3, Lx/G;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x354

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/y;->G_()I

    move-result v1

    iget-object v2, p0, Lh/y;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    const/16 v2, 0x343

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->h:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->j:Lf/h;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lh/y;->b:Lh/f;

    iget-object v2, v2, Lh/f;->j:Lf/h;

    invoke-virtual {v2}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    goto/16 :goto_1
.end method

.method public m()Lcom/google/googlenav/login/h;
    .locals 1

    iget-object v0, p0, Lh/y;->f:Lh/en;

    return-object v0
.end method
