.class public Lh/eV;
.super Lh/eR;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lo/o;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lh/ef;

.field private f:Z

.field private final l:LaD/r;


# direct methods
.method protected constructor <init>(Lh/eY;LaD/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/eV;->l:LaD/r;

    return-void
.end method

.method private a(Ljava/util/Vector;)Lx/n;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lh/eV;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v1, p0, Lh/eV;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    new-instance v1, Lx/n;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v3, p0, Lh/eV;->c:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5, v5}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V
    .locals 1

    iput-object p1, p0, Lh/eV;->a:Ljava/lang/String;

    iput-object p2, p0, Lh/eV;->b:Lo/o;

    iput-boolean p5, p0, Lh/eV;->f:Z

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lh/eV;->c:Ljava/lang/String;

    if-eqz p4, :cond_1

    move-object v0, p4

    :goto_1
    iput-object v0, p0, Lh/eV;->d:Ljava/lang/String;

    iput-object p6, p0, Lh/eV;->e:Lh/ef;

    return-void

    :cond_0
    const/16 v0, 0x2a0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public T_()V
    .locals 7

    iget-object v1, p0, Lh/eV;->a:Ljava/lang/String;

    iget-object v2, p0, Lh/eV;->b:Lo/o;

    iget-boolean v5, p0, Lh/eV;->f:Z

    iget-object v3, p0, Lh/eV;->c:Ljava/lang/String;

    iget-object v4, p0, Lh/eV;->d:Ljava/lang/String;

    iget-object v6, p0, Lh/eV;->e:Lh/ef;

    invoke-virtual {p0}, Lh/eV;->v()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lh/eV;->a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V

    invoke-virtual {p0}, Lh/eV;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/eV;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/eV;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/eV;->d()V

    iget v0, p0, Lh/eV;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eV;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/eV;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/eV;->k:I

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/eV;->h()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eV;->j:Lx/J;

    iget-object v0, p0, Lh/eV;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/o;ZLjava/lang/String;Ljava/lang/String;Lh/ef;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lh/eV;->a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V

    invoke-virtual {p0}, Lh/eV;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    iput v0, p0, Lh/eV;->k:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    invoke-interface {v0}, Lh/ef;->a()V

    :cond_0
    iput v1, p0, Lh/eV;->k:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    invoke-interface {v0}, Lh/ef;->b()V

    :cond_1
    iput v1, p0, Lh/eV;->k:I

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lh/eV;->a:Ljava/lang/String;

    iput-object v1, p0, Lh/eV;->b:Lo/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/eV;->f:Z

    iput-object v1, p0, Lh/eV;->c:Ljava/lang/String;

    iput-object v1, p0, Lh/eV;->d:Ljava/lang/String;

    iput-object v1, p0, Lh/eV;->e:Lh/ef;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lh/eV;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eV;->e:Lh/ef;

    invoke-interface {v0}, Lh/ef;->c()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lh/eV;->k:I

    :cond_1
    return-void
.end method

.method protected h()Lx/B;
    .locals 13

    const/4 v6, -0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lc/p;

    iget-object v1, p0, Lh/eV;->l:LaD/r;

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    const/4 v1, 0x4

    iget-object v3, p0, Lh/eV;->b:Lo/o;

    new-instance v4, Lcom/google/googlenav/ui/ax;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-static {v6, v1, v3, v0, v4}, Lo/bt;->a(IILo/o;Lc/p;Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v3, Lx/G;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v1, p0, Lh/eV;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    invoke-direct {p0, v5}, Lh/eV;->a(Ljava/util/Vector;)Lx/n;

    move-result-object v9

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v0
.end method
