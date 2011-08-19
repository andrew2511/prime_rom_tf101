.class public Lh/cy;
.super Lh/y;


# instance fields
.field private e:Lu/v;

.field private f:Ljava/util/Vector;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/y;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v1, p0, Lh/cy;->c:I

    iget-object v2, p0, Lh/cy;->e:Lu/v;

    iget-boolean v3, p0, Lh/cy;->m:Z

    invoke-virtual {p0}, Lh/cy;->v()V

    iput-object v2, p0, Lh/cy;->e:Lu/v;

    iput-object v0, p0, Lh/cy;->b:Lh/f;

    iput v1, p0, Lh/cy;->c:I

    return-void
.end method

.method private o()Lx/B;
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Lx/G;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x347

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p0, Lh/cy;->f:Ljava/util/Vector;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/util/Vector;Ljava/lang/String;)Lx/n;

    move-result-object v5

    new-instance v0, Lx/B;

    const/4 v1, 0x0

    iget-object v4, p0, Lh/cy;->f:Ljava/util/Vector;

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 0

    invoke-direct {p0}, Lh/cy;->n()V

    invoke-virtual {p0}, Lh/cy;->u()V

    return-void
.end method

.method protected a(LaH/b;)LaH/a;
    .locals 15

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Lh/y;->a(LaH/b;)LaH/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lh/cy;->e:Lu/v;

    iget v1, p0, Lh/cy;->l:I

    invoke-virtual {v0, v1}, Lu/v;->l(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lh/cy;->e:Lu/v;

    iget v1, p0, Lh/cy;->l:I

    invoke-virtual {v0, v1}, Lu/v;->l(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :goto_1
    new-instance v0, LaH/a;

    iget-object v1, p0, Lh/cy;->b:Lh/f;

    iget v1, v1, Lh/f;->f:I

    iget-object v2, p0, Lh/cy;->b:Lh/f;

    iget-object v2, v2, Lh/f;->h:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lh/cy;->b:Lh/f;

    iget-object v4, v4, Lh/f;->a:Lf/h;

    iget-object v5, p0, Lh/cy;->b:Lh/f;

    iget-object v5, v5, Lh/f;->i:Lcom/google/googlenav/ui/az;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lh/cy;->b:Lh/f;

    iget-object v7, v7, Lh/f;->c:Lf/C;

    iget-object v8, p0, Lh/cy;->b:Lh/f;

    iget v8, v8, Lh/f;->d:I

    iget-object v9, p0, Lh/cy;->b:Lh/f;

    iget v9, v9, Lh/f;->e:I

    iget v10, p0, Lh/cy;->l:I

    iget-object v11, p0, Lh/cy;->e:Lu/v;

    invoke-virtual {v11}, Lu/v;->as()I

    move-result v11

    iget-object v13, p0, Lh/cy;->b:Lh/f;

    iget-object v13, v13, Lh/f;->b:Ljava/lang/String;

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, LaH/a;-><init>(ILjava/lang/String;[BLf/h;ZILf/C;IIIILjava/lang/String;Ljava/lang/String;LaH/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/cy;->e:Lu/v;

    iget v1, p0, Lh/cy;->l:I

    invoke-virtual {v0, v1}, Lu/v;->l(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_1
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/cy;->e:Lu/v;

    invoke-virtual {v0}, Lu/v;->c()I

    move-result v0

    iput v0, p0, Lh/cy;->l:I

    iget v0, p0, Lh/cy;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/cy;->m:Z

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget-object v1, p0, Lh/cy;->e:Lu/v;

    iget v2, p0, Lh/cy;->l:I

    invoke-virtual {v1, v2}, Lu/v;->i(I)Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/f;->a:Lf/h;

    :goto_0
    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget-object v1, p0, Lh/cy;->e:Lu/v;

    invoke-virtual {v1}, Lu/v;->ag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/f;->b:Ljava/lang/String;

    invoke-super {p0}, Lh/y;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lh/cy;->b:Lh/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lh/f;->a:Lf/h;

    goto :goto_0
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 6

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x5ed

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget v1, p0, Lh/cy;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x347

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :goto_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lh/cy;->e:Lu/v;

    iget v2, p0, Lh/cy;->l:I

    invoke-virtual {v1, v2}, Lu/v;->l(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->y()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lu/e;->f()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v3, 0x0

    const/16 v4, 0x348

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lu/e;->x()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public a(Lu/v;Lf/C;IILjava/util/Vector;)V
    .locals 1

    iput-object p1, p0, Lh/cy;->e:Lu/v;

    iput-object p5, p0, Lh/cy;->f:Ljava/util/Vector;

    const/16 v0, 0x346

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/cy;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-super {p0, p2, p3, p4, v0}, Lh/y;->a(Lf/C;IILh/eR;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 9

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v8, 0x1

    iget-boolean v0, p0, Lh/cy;->m:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lh/y;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lh/cy;->m:Z

    invoke-virtual {p0, v1}, Lh/cy;->a(I)V

    move v0, v8

    goto :goto_1

    :pswitch_2
    iput p2, p0, Lh/cy;->l:I

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget-object v1, p0, Lh/cy;->e:Lu/v;

    iget v2, p0, Lh/cy;->l:I

    invoke-virtual {v1, v2}, Lu/v;->i(I)Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/f;->a:Lf/h;

    invoke-virtual {p0, v3}, Lh/cy;->a(I)V

    move v0, v8

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x35b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2, v0}, Lh/cy;->a(Ljava/lang/String;II)V

    move v0, v8

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x35c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lh/cy;->a(Ljava/lang/String;II)V

    move v0, v8

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x35d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0}, Lh/cy;->a(Ljava/lang/String;II)V

    move v0, v8

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget-object v1, p0, Lh/cy;->b:Lh/f;

    iget-object v1, v1, Lh/f;->c:Lf/C;

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/f;->a:Lf/h;

    const/16 v0, 0x35f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, v3}, Lh/cy;->a(Ljava/lang/String;II)V

    move v0, v8

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lh/cy;->g:Lh/eY;

    iget-object v1, p0, Lh/cy;->b:Lh/f;

    iget-object v1, v1, Lh/f;->c:Lf/C;

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lh/cy;->b:Lh/f;

    iget-object v3, v3, Lh/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lh/cy;->b:Lh/f;

    iget-object v4, v4, Lh/f;->c:Lf/C;

    iget-object v5, p0, Lh/cy;->b:Lh/f;

    iget v5, v5, Lh/f;->d:I

    iget-object v6, p0, Lh/cy;->b:Lh/f;

    iget v6, v6, Lh/f;->e:I

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Lf/h;Ljava/lang/String;Ljava/lang/String;Lf/C;IILh/eR;)V

    invoke-direct {p0}, Lh/cy;->n()V

    move v0, v8

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget-object v1, p0, Lh/cy;->b:Lh/f;

    iget-object v1, v1, Lh/f;->c:Lf/C;

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/f;->a:Lf/h;

    const/16 v0, 0x361

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lh/cy;->a(Ljava/lang/String;II)V

    move v0, v8

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x5e1
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/cy;->e:Lu/v;

    const/4 v0, -0x1

    iput v0, p0, Lh/cy;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/cy;->m:Z

    invoke-super {p0}, Lh/y;->b()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lh/cy;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Lh/y;->d()V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lh/cy;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cy;->b:Lh/f;

    iget v0, v0, Lh/f;->f:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lh/cy;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lh/cy;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lh/cy;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected g()S
    .locals 1

    const/16 v0, 0x56

    return v0
.end method

.method protected h()Lx/B;
    .locals 2

    iget v0, p0, Lh/cy;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh/cy;->o()Lx/B;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lh/y;->h()Lx/B;

    move-result-object v0

    goto :goto_0
.end method

.method protected i()Lx/B;
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x6

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    const/16 v1, 0x35b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e7

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v4, v0}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x35c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e8

    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v1, v4, v3}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x35d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e9

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v4, v2}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x35f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5ea

    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v1, v4, v3}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x35e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5eb

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v4, v2}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x361

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e1

    invoke-static {v0, v1, v4, v3}, Lh/cy;->a(Ljava/lang/String;ILjava/util/Vector;I)V

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

    invoke-virtual {p0}, Lh/cy;->G_()I

    move-result v1

    iget-object v2, p0, Lh/cy;->a:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method
