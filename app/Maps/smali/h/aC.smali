.class public Lh/aC;
.super Lh/y;


# instance fields
.field private e:LH/f;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;LH/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/y;-><init>(Lh/eY;LaU/a;)V

    iput-object p3, p0, Lh/aC;->e:LH/f;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-super {p0}, Lh/y;->a()V

    return-void
.end method

.method protected a(Lak/d;)V
    .locals 5

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/aC;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    iget-object v1, p0, Lh/aC;->e:LH/f;

    iget-object v2, p0, Lh/aC;->b:Lh/f;

    iget-object v2, v2, Lh/f;->j:Lf/h;

    iget-object v3, p0, Lh/aC;->b:Lh/f;

    iget-object v3, v3, Lh/f;->k:Lcom/google/googlenav/ui/az;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v3

    iget-object v4, p0, Lh/aC;->b:Lh/f;

    iget-object v4, v4, Lh/f;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/bL;->a(LH/f;Lf/h;ZLjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lh/y;->a(Lak/d;)V

    return-void
.end method

.method public a(Lf/h;Ljava/lang/String;Lf/C;IILjava/lang/String;Lh/eR;)V
    .locals 1

    new-instance v0, Lh/f;

    invoke-direct {v0, p0}, Lh/f;-><init>(Lh/y;)V

    iput-object v0, p0, Lh/aC;->b:Lh/f;

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iput-object p3, v0, Lh/f;->c:Lf/C;

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iput p4, v0, Lh/f;->d:I

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iput p5, v0, Lh/f;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lh/aC;->c:I

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iput-object p1, v0, Lh/f;->a:Lf/h;

    iput-object p2, p0, Lh/aC;->a:Ljava/lang/String;

    iget-object v0, p0, Lh/aC;->b:Lh/f;

    iput-object p6, v0, Lh/f;->b:Ljava/lang/String;

    iput-object p7, p0, Lh/aC;->d:Lh/eR;

    invoke-virtual {p0}, Lh/aC;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lh/y;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x364

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lh/aC;->a(Ljava/lang/String;II)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x35a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lh/aC;->a(Ljava/lang/String;II)V

    move v0, v2

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x363

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v3}, Lh/aC;->a(Ljava/lang/String;II)V

    move v0, v2

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x360

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, v3}, Lh/aC;->a(Ljava/lang/String;II)V

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5de
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected i()Lx/B;
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    const/16 v1, 0x364

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5de

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v4, v0}, Lh/aC;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x35a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5df

    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v1, v4, v3}, Lh/aC;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x363

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e0

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v4, v2}, Lh/aC;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x360

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e2

    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v1, v4, v3}, Lh/aC;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x362

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e1

    invoke-static {v0, v1, v4, v2}, Lh/aC;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    new-instance v3, Lx/G;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x365

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v3, v0, v5}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/aC;->G_()I

    move-result v1

    iget-object v2, p0, Lh/aC;->a:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method
