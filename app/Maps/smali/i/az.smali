.class public Li/az;
.super Li/H;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    return-void
.end method

.method private a(Ljava/util/Vector;Lcom/google/googlenav/z;)V
    .locals 3

    const/4 v2, -0x1

    const/16 v0, 0x3e5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Li/az;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Vector;Lcom/google/googlenav/c;ILjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-static {p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x33d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->at:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    goto :goto_1
.end method

.method private c()Lx/B;
    .locals 12

    const/16 v11, 0x65

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Li/az;->a:Li/x;

    move-object v0, v1

    check-cast v0, Li/aY;

    move-object v8, v0

    invoke-virtual {v8}, Li/aY;->I()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v8}, Li/aY;->O()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lx/G;

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    move-object v4, v2

    :goto_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v8}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v8}, Li/aY;->B()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/google/googlenav/z;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Li/aY;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->D()[Lcom/google/googlenav/c;

    move-result-object v1

    move v2, v9

    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_4

    aget-object v7, v1, v2

    invoke-direct {p0, v5, v7, v2, v3}, Li/az;->a(Ljava/util/Vector;Lcom/google/googlenav/c;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0xd0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v7, v9

    :goto_3
    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ge v7, v1, :cond_3

    invoke-virtual {v2, v7}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/c;

    invoke-direct {p0, v5, v1, v7, v3}, Li/az;->a(Ljava/util/Vector;Lcom/google/googlenav/c;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v10

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v9, v1

    goto :goto_3

    :cond_3
    if-nez v9, :cond_4

    invoke-direct {p0, v5, v2}, Li/az;->a(Ljava/util/Vector;Lcom/google/googlenav/z;)V

    :cond_4
    :goto_5
    new-instance v1, Lx/B;

    const/4 v2, 0x2

    const/16 v3, 0xce

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-virtual {v8}, Li/aY;->I()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Li/aY;->O()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    :goto_6
    iput v2, v1, Lx/B;->t:I

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v5, v2}, Li/az;->a(Ljava/util/Vector;Lcom/google/googlenav/z;)V

    :cond_7
    invoke-virtual {v2}, Lcom/google/googlenav/z;->B()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v7}, Li/az;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-ne v1, v10, :cond_8

    const/16 v1, 0x3e6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v11, v7}, Li/az;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v1

    if-le v1, v10, :cond_4

    const/16 v1, 0x3e4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/googlenav/z;->c_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v11, v7}, Li/az;->a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x4

    goto :goto_6

    :cond_a
    move v1, v9

    goto/16 :goto_4

    :cond_b
    move-object v4, v6

    goto/16 :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;II)Lcom/google/googlenav/ui/bx;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public al_()Lx/J;
    .locals 3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Li/az;->c()Lx/B;

    move-result-object v1

    iget-object v2, p0, Li/az;->a:Li/x;

    invoke-virtual {v0, v1, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method
