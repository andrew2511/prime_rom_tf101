.class public Lh/er;
.super Lh/eR;


# instance fields
.field private a:Lu/v;

.field private b:Z


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, LR/a;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lh/er;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lh/er;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public T_()V
    .locals 1

    iget-object v0, p0, Lh/er;->a:Lu/v;

    invoke-virtual {p0}, Lh/er;->v()V

    invoke-virtual {p0, v0}, Lh/er;->a(Lu/v;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/er;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/er;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/er;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/er;->b:Z

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {p0}, Lh/er;->h()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/er;->j:Lx/J;

    iget-object v0, p0, Lh/er;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Lu/v;)V
    .locals 0

    iput-object p1, p0, Lh/er;->a:Lu/v;

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lh/er;->a:Lu/v;

    invoke-virtual {v0, p2}, Lu/v;->k(I)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh/er;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lh/er;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "loadAlertUrl"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/er;->a:Lu/v;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh/er;->b:Z

    return v0
.end method

.method protected h()Lx/B;
    .locals 13

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lh/er;->a:Lu/v;

    invoke-virtual {v2}, Lu/v;->Y()Lu/k;

    move-result-object v2

    const/4 v3, 0x0

    move v12, v3

    move v3, v0

    move v0, v12

    :goto_0
    invoke-virtual {v2}, Lu/k;->d()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-virtual {v2, v0}, Lu/k;->a(I)Lu/f;

    move-result-object v5

    invoke-virtual {v5}, Lu/f;->g()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lu/f;->e()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lu/f;->c()Lu/e;

    move-result-object v6

    invoke-virtual {v6}, Lu/e;->d()Law/e;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Law/e;->h(I)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iget-object v7, p0, Lh/er;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v7

    invoke-virtual {v5}, Lu/f;->c()Lu/e;

    move-result-object v8

    invoke-virtual {v8}, Lu/e;->t()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v7

    invoke-static {v7}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lu/f;->c()Lu/e;

    move-result-object v5

    invoke-virtual {v5}, Lu/e;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v8, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/googlenav/ui/aQ;->e(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Law/e;->i(I)I

    move-result v7

    if-ge v5, v7, :cond_0

    const/16 v7, 0x11

    invoke-virtual {v6, v7, v5}, Law/e;->c(II)I

    move-result v7

    iget-object v8, p0, Lh/er;->a:Lu/v;

    invoke-virtual {v8, v7}, Lu/v;->k(I)Law/e;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Law/e;->h(I)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Law/e;->h(I)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    new-instance v9, Ljava/util/Vector;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Law/e;->h(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Law/e;->h(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    new-instance v10, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v10}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v10, v9}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/googlenav/ui/aQ;->e(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Law/e;->h(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lh/er;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LR/a;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v9}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/googlenav/ui/aQ;->e(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    sget-char v8, Lcom/google/googlenav/ui/aV;->W:C

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lh/er;->i:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/er;->G_()I

    move-result v1

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0
.end method
