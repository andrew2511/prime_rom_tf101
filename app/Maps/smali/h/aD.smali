.class public Lh/aD;
.super Lh/eR;


# instance fields
.field private a:Lh/bM;

.field private b:Ljava/util/Vector;

.field private c:I

.field private d:Ljava/util/Vector;

.field private e:Lac/s;


# direct methods
.method protected constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/Vector;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private h()V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x2

    iget-object v1, p0, Lh/aD;->b:Ljava/util/Vector;

    iget v3, p0, Lh/aD;->c:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lo/U;

    move-object v4, v0

    const/16 v1, 0x147

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lo/U;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lh/aD;->c:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lh/aD;->b:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x14a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x145

    invoke-direct {p0, v1, v7, v5}, Lh/aD;->a(Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x146

    invoke-direct {p0, v1, v7, v5}, Lh/aD;->a(Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v1, 0x14c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x1f6

    invoke-direct {p0, v1, v7, v5}, Lh/aD;->a(Ljava/lang/String;ILjava/util/Vector;)V

    iget-object v1, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v4}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lac/s;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x148

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x13d

    invoke-direct {p0, v1, v7, v5}, Lh/aD;->a(Ljava/lang/String;ILjava/util/Vector;)V

    :cond_0
    new-instance v1, Lx/B;

    invoke-virtual {p0, v4}, Lh/aD;->a(Lo/U;)Lx/G;

    move-result-object v4

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/aD;->j:Lx/J;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lh/aD;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/aD;->a(Lx/J;)V

    invoke-super {p0}, Lh/eR;->b()V

    invoke-direct {p0}, Lh/aD;->h()V

    iget-object v0, p0, Lh/aD;->j:Lx/J;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private m()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lac/s;

    invoke-direct {v2}, Lac/s;-><init>()V

    new-instance v5, Lac/s;

    invoke-direct {v5}, Lac/s;-><init>()V

    new-instance v6, Lac/s;

    invoke-direct {v6}, Lac/s;-><init>()V

    new-instance v7, Lac/s;

    invoke-direct {v7}, Lac/s;-><init>()V

    iget-object v0, p0, Lh/aD;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v4, v14

    move v8, v14

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v0, p0, Lh/aD;->d:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/F;

    iget-object v9, v0, Lh/F;->a:Lo/U;

    invoke-virtual {v9}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget v12, v0, Lh/F;->b:I

    packed-switch v12, :pswitch_data_0

    move v0, v8

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v8, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, v9, v10}, Lac/s;->a(J)V

    iget-object v0, v0, Lh/F;->a:Lo/U;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v0, v9, v10}, Lac/s;->d(J)Z

    move v0, v13

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5, v9, v10}, Lac/s;->a(J)V

    iget-object v0, v0, Lh/F;->a:Lo/U;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v0, v9, v10}, Lac/s;->d(J)Z

    move v0, v13

    goto :goto_1

    :pswitch_2
    invoke-virtual {v6, v9, v10}, Lac/s;->a(J)V

    iget-object v0, v0, Lh/F;->a:Lo/U;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v0, v9, v10}, Lac/s;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v0, v9, v10}, Lac/s;->a(J)V

    move v0, v13

    goto :goto_1

    :pswitch_3
    invoke-virtual {v7, v9, v10}, Lac/s;->a(J)V

    iget-object v0, v0, Lh/F;->a:Lo/U;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    move v0, v13

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    iget-object v10, p0, Lh/aD;->a:Lh/bM;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v12

    new-instance v0, Lh/Q;

    move-object v1, p0

    move-object v4, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v11}, Lh/Q;-><init>(Lh/aD;Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;Lh/bM;Ljava/util/Vector;)V

    invoke-virtual {v12, v0}, Lak/h;->c(Lak/d;)V

    :goto_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lh/aD;->b:Ljava/util/Vector;

    iput v14, p0, Lh/aD;->c:I

    iput-object v3, p0, Lh/aD;->a:Lh/bM;

    return-void

    :cond_2
    iget-object v0, p0, Lh/aD;->a:Lh/bM;

    invoke-interface {v0}, Lh/bM;->a()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private n()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lh/aD;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lh/aD;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lh/aD;->c:I

    invoke-direct {p0}, Lh/aD;->j()V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/aD;->g:Lh/eY;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lh/eY;->a(ILax/c;)V

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public T_()V
    .locals 3

    iget-object v0, p0, Lh/aD;->d:Ljava/util/Vector;

    iget-object v1, p0, Lh/aD;->a:Lh/bM;

    iget v2, p0, Lh/aD;->c:I

    invoke-virtual {p0}, Lh/aD;->v()V

    iput-object v0, p0, Lh/aD;->d:Ljava/util/Vector;

    iput-object v1, p0, Lh/aD;->a:Lh/bM;

    iput v2, p0, Lh/aD;->c:I

    invoke-virtual {p0}, Lh/aD;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/aD;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lax/c;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lh/aD;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lh/aD;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a(Lo/U;)Lx/G;
    .locals 3

    const/16 v0, 0x14d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lx/G;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1
.end method

.method protected a()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lac/s;->a([B)Lac/s;

    move-result-object v0

    iput-object v0, p0, Lh/aD;->e:Lac/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lh/aD;->h()V

    iget-object v0, p0, Lh/aD;->j:Lx/J;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    iput-object v0, p0, Lh/aD;->e:Lac/s;

    goto :goto_0

    :cond_0
    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    iput-object v0, p0, Lh/aD;->e:Lac/s;

    goto :goto_0
.end method

.method protected a(I)V
    .locals 3

    iget v0, p0, Lh/aD;->c:I

    if-ltz v0, :cond_1

    iget v0, p0, Lh/aD;->c:I

    iget-object v1, p0, Lh/aD;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lh/aD;->b:Ljava/util/Vector;

    iget v1, p0, Lh/aD;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    iget-object v1, p0, Lh/aD;->d:Ljava/util/Vector;

    new-instance v2, Lh/F;

    invoke-direct {v2, v0, p1}, Lh/F;-><init>(Lo/U;I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lh/aD;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh/aD;->c:I

    iget v0, p0, Lh/aD;->c:I

    iget-object v1, p0, Lh/aD;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lh/aD;->m()V

    iget-object v0, p0, Lh/aD;->g:Lh/eY;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lh/aD;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh/aD;->v()V

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;Lh/bM;)V
    .locals 1

    iput-object p1, p0, Lh/aD;->b:Ljava/util/Vector;

    iput-object p2, p0, Lh/aD;->a:Lh/bM;

    const/4 v0, 0x0

    iput v0, p0, Lh/aD;->c:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lh/aD;->d:Ljava/util/Vector;

    invoke-virtual {p0}, Lh/aD;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lh/aD;->a(I)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v1}, Lh/aD;->a(I)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lh/aD;->a(I)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lh/aD;->a(I)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_4
        0x145 -> :sswitch_1
        0x146 -> :sswitch_2
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_3
    .end sparse-switch
.end method

.method protected b()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lh/eR;->b()V

    iput-object v3, p0, Lh/aD;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lh/aD;->c:I

    :try_start_0
    iget-object v0, p0, Lh/aD;->e:Lac/s;

    invoke-virtual {v0}, Lac/s;->c()[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lh/aD;->e:Lac/s;

    iput-object v3, p0, Lh/aD;->a:Lh/bM;

    iput-object v3, p0, Lh/aD;->b:Ljava/util/Vector;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lh/aD;->n()I

    return-void
.end method
