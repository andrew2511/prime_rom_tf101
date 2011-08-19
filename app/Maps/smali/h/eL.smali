.class public Lh/eL;
.super Lh/eR;


# instance fields
.field protected a:Lcom/google/googlenav/bf;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 0

    invoke-virtual {p0}, Lh/eL;->v()V

    invoke-virtual {p0}, Lh/eL;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/eL;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eL;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lh/eL;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lh/eL;->a(IILjava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lh/eL;->j()V

    goto :goto_0
.end method

.method protected a(ILh/cK;)V
    .locals 7

    new-instance v2, Lh/aV;

    iget-object v0, p0, Lh/eL;->a:Lcom/google/googlenav/bf;

    check-cast v0, Lcom/google/googlenav/c;

    invoke-direct {v2, p0, v0, p1, p2}, Lh/aV;-><init>(Lh/eL;Lcom/google/googlenav/c;ILh/cK;)V

    iget-object v0, p0, Lh/eL;->g:Lh/eY;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p0}, Lh/eL;->v()V

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)V
    .locals 2

    iput-object p1, p0, Lh/eL;->a:Lcom/google/googlenav/bf;

    instance-of v0, p1, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only support sending placemarks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lh/eL;->v()V

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lh/eL;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/eL;->a(Lcom/google/googlenav/g;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh/eL;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/eL;->b(Lcom/google/googlenav/g;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x640
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/google/googlenav/g;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/eL;->a:Lcom/google/googlenav/bf;

    instance-of v0, v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lh/db;

    invoke-direct {v0, p0, p1}, Lh/db;-><init>(Lh/eL;Lcom/google/googlenav/g;)V

    invoke-virtual {p0, v1, v0}, Lh/eL;->a(ILh/cK;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method protected b(Lcom/google/googlenav/g;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lh/eL;->a:Lcom/google/googlenav/bf;

    instance-of v0, v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lh/da;

    invoke-direct {v0, p0, p1}, Lh/da;-><init>(Lh/eL;Lcom/google/googlenav/g;)V

    invoke-virtual {p0, v1, v0}, Lh/eL;->a(ILh/cK;)V

    move v0, v1

    goto :goto_0
.end method

.method protected h()Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3d3

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x641

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->af()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x3d2

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x640

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method protected j()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v7

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x3d4

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lh/eL;->h()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-virtual {v7, v0, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eL;->j:Lx/J;

    iget-object v0, p0, Lh/eL;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
