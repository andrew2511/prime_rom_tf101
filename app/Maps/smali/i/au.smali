.class public Li/au;
.super Li/H;


# instance fields
.field private final c:Lcom/google/googlenav/ui/aT;

.field private d:Lx/B;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    invoke-virtual {p1}, Li/x;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    iput-object v0, p0, Li/au;->c:Lcom/google/googlenav/ui/aT;

    return-void
.end method

.method private a(I)Lcom/google/googlenav/c;
    .locals 1

    invoke-direct {p0}, Li/au;->c()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    return-object p0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/googlenav/ui/bx;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->bu:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2c6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lx/G;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bE:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lx/G;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1
.end method

.method private a(Lcom/google/googlenav/z;)Lx/n;
    .locals 12

    const/16 v11, 0x2c

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move v1, v7

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget-object v3, v0, v1

    const-string v4, " loc:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x3b5

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v3, 0x2d0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v10, -0x1

    :goto_1
    move v3, v7

    move v4, v7

    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    sub-int v5, v1, v8

    if-lt v4, v5, :cond_0

    array-length v5, v0

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    const-string v6, " loc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v3, v6}, Li/au;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x3b6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2c7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v2, v10}, Ljava/util/Vector;->setSize(I)V

    new-instance v3, Lx/n;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bx;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/bx;

    invoke-direct {v3, p0, v0, v1, v2}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v3

    :cond_5
    move v1, v10

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lx/G;Lx/D;Ljava/util/Vector;Lx/n;IZ)V
    .locals 15

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v2

    invoke-virtual {v2}, Li/aw;->bE()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/aI;

    const/4 v3, 0x0

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v4

    invoke-virtual {v4}, Li/aw;->bD()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v2

    :goto_0
    iget-object v2, p0, Li/au;->d:Lx/B;

    if-eqz v2, :cond_2

    iget-object v2, p0, Li/au;->d:Lx/B;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Li/au;->d:Lx/B;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lx/B;->a(Lx/G;)V

    :cond_0
    iget-object v2, p0, Li/au;->d:Lx/B;

    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lx/B;->a(Lx/D;)V

    iget-object v2, p0, Li/au;->d:Lx/B;

    invoke-virtual {v2, v6}, Lx/B;->a([Lcom/google/googlenav/ui/aI;)V

    iget-object v2, p0, Li/au;->d:Lx/B;

    move-object v0, v2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    :goto_1
    iget-object v2, p0, Li/au;->d:Lx/B;

    move/from16 v0, p6

    move-object v1, v2

    iput v0, v1, Lx/B;->p:I

    return-void

    :cond_1
    const/4 v2, 0x0

    move-object v6, v2

    goto :goto_0

    :cond_2
    if-eqz p7, :cond_3

    const/16 v2, 0x13

    move v3, v2

    :goto_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Lax/e;

    move-object v13, v2

    :goto_3
    new-instance v2, Lx/B;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v14}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    iput-object v2, p0, Li/au;->d:Lx/B;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Lax/e;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/googlenav/ui/w;->r:Lax/e;

    aput-object v5, v2, v4

    move-object v13, v2

    goto :goto_3
.end method

.method private a(Ljava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->e(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2c5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->i(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v1

    invoke-virtual {v1}, Li/aw;->bC()Lx/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/x;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(IZ)Lcom/google/googlenav/ui/bx;
    .locals 12

    invoke-direct {p0, p1}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/googlenav/ui/av;->bm:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/av;->bq:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v0}, Li/P;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v1}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1, v2}, Li/P;->f(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    :cond_5
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bd()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bx()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x444

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/google/googlenav/c;->be()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x2d4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->r()Lcom/google/googlenav/H;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/googlenav/H;->f()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v5

    invoke-virtual {v5}, Li/aw;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0}, Lcom/google/googlenav/H;->c()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v6, v7, v8}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-static {v6, v5}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v5

    :goto_3
    const/4 v6, 0x0

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Li/aw;->i(I)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0}, Lcom/google/googlenav/H;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0}, Lcom/google/googlenav/H;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/googlenav/H;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/H;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Lx/q;

    const/16 v8, 0x2d1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9, v6}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v6, v7

    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/H;->a()[Lcom/google/googlenav/U;

    move-result-object v0

    const/4 v7, 0x0

    :goto_4
    array-length v8, v0

    if-ge v7, v8, :cond_f

    aget-object v8, v0, v7

    iget-object v8, v8, Lcom/google/googlenav/U;->b:Ljava/lang/String;

    sget-object v9, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v10, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v8, v9, v10}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/googlenav/U;->d:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_9

    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/googlenav/U;->d:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    :cond_9
    aget-object v8, v0, v7

    iget-object v8, v8, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/googlenav/ui/av;->bu:Lcom/google/googlenav/ui/av;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_5
    aget-object v8, v0, v7

    iget-object v8, v8, Lcom/google/googlenav/U;->c:Ljava/lang/String;

    sget-object v9, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v10, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v8, v9, v10}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    array-length v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_a

    const-string v8, " "

    sget-object v9, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Lcom/google/googlenav/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bx()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1e3

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bz()Z

    move-result v0

    invoke-static {v1, v4, v0}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aR()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aU()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->y()Lk/l;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v5

    goto/16 :goto_3

    :cond_e
    aget-object v8, v0, v7

    iget-object v8, v8, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v10, Lcom/google/googlenav/ui/av;->bt:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v8, v9, v10}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    goto :goto_5

    :cond_f
    move-object v0, v5

    :goto_6
    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v4, 0x2bc

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v4

    invoke-virtual {v4}, Li/aw;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->c(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->b(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v2

    invoke-virtual {v2}, Li/aw;->bG()Lcom/google/googlenav/ui/aG;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Li/P;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aQ;Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    iget-object v3, p0, Li/au;->c:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v3

    invoke-static {v2, v3, v0}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->T()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, -0x1

    :goto_7
    iget-object v3, p0, Li/au;->a:Li/x;

    invoke-virtual {v3}, Li/x;->bm()LN/j;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->F()B

    move-result v1

    invoke-virtual {v3, v4, v1, v2}, LN/j;->a(ZBI)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/au;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->o()Lk/j;

    move-result-object v2

    new-instance v3, Lx/q;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1}, Lx/q;-><init>(II)V

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;Lx/Q;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_10
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v1}, Lcom/google/googlenav/c;->B()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aq;

    sget-object v7, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    sget-object v8, Lcom/google/googlenav/ui/av;->bs:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2, v7, v8}, Li/P;->a(Lcom/google/googlenav/aq;Ljava/util/Vector;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v5

    goto/16 :goto_6

    :cond_13
    move v2, p1

    goto :goto_7

    :cond_14
    move-object v0, v5

    goto/16 :goto_6
.end method

.method private b(Lcom/google/googlenav/z;)Lx/n;
    .locals 11

    const/16 v10, 0x2d

    const/4 v9, 0x4

    const/4 v8, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ay()[Lcom/google/googlenav/aN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    if-eqz v0, :cond_3

    move v3, v8

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/google/googlenav/aN;->a()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aN;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->d()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->f()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v6, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v6}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v7, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/googlenav/aN;->g()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v4

    if-eqz p0, :cond_2

    move v5, v10

    :goto_2
    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x2c

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aN;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v2, v9}, Ljava/util/Vector;->setSize(I)V

    new-instance v3, Lx/n;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bx;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/bx;

    invoke-direct {v3, p0, v0, v1, v2}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v3
.end method

.method private c(IZ)Lcom/google/googlenav/ui/bx;
    .locals 10

    const/16 v9, 0x17

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Li/au;->a(IZ)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Li/aw;->c(Lcom/google/googlenav/c;Z)Lk/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    move v3, v6

    move v4, v6

    :goto_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    :goto_2
    if-eqz p2, :cond_b

    iget-object v6, p0, Li/au;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aV;->ae()Lk/l;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v6

    :goto_3
    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v7, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v3, 0x2bc

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    invoke-static {v1, v2, v9}, LQ/h;->a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v2

    invoke-interface {v2}, Lf/N;->ap_()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    invoke-virtual {v0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v2

    invoke-interface {v2}, Lf/N;->ap_()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move-object v2, v7

    move v3, v8

    move v4, v9

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/googlenav/c;->aY()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    move v3, v8

    move v4, v9

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/google/googlenav/c;->T()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    :goto_4
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v3

    invoke-virtual {v3}, Li/aw;->bm()LN/j;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/c;->F()B

    move-result v4

    invoke-virtual {v3, v6, v4, v2}, LN/j;->a(ZBI)C

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Li/au;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->o()Lk/j;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    move v3, v8

    move v4, v9

    goto/16 :goto_1

    :cond_6
    move v2, p1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    sub-int v5, p1, v6

    invoke-direct {p0, v5}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/c;->O()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_8
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v5

    invoke-virtual {v5}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/z;->c_()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge p1, v5, :cond_9

    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/c;->O()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_5
    if-eqz v5, :cond_a

    const/16 v5, 0x3e8

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    sget-object v6, Lcom/google/googlenav/ui/av;->ad:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    goto/16 :goto_2

    :cond_9
    move v5, v8

    goto :goto_5

    :cond_a
    const/16 v5, 0x3e7

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_b
    move-object v6, v7

    goto/16 :goto_3

    :cond_c
    move-object v5, v7

    goto/16 :goto_2

    :cond_d
    move-object v2, v7

    move v3, v8

    move v4, v9

    goto/16 :goto_1
.end method

.method private c()Lcom/google/googlenav/z;
    .locals 1

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/google/googlenav/z;)Lx/G;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v1

    invoke-virtual {v1, p1}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1de

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0x367

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ad()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ad()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ae()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lx/G;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1
.end method

.method private d()Li/aw;
    .locals 0

    iget-object p0, p0, Li/au;->a:Li/x;

    check-cast p0, Li/aw;

    return-object p0
.end method

.method private e()Lx/B;
    .locals 13

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct {p0}, Li/au;->c()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_1

    move v7, v6

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Li/au;->c(Lcom/google/googlenav/z;)Lx/G;

    move-result-object v1

    move-object v5, v9

    move-object v2, v1

    move-object v1, v9

    :goto_1
    invoke-virtual {v0}, Lcom/google/googlenav/z;->ah()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lx/D;

    invoke-direct {p0, v0}, Li/au;->a(Lcom/google/googlenav/z;)Lx/n;

    move-result-object v4

    invoke-direct {p0, v0}, Li/au;->b(Lcom/google/googlenav/z;)Lx/n;

    move-result-object v8

    invoke-direct {v3, v9, v4, v8}, Lx/D;-><init>(Lcom/google/googlenav/ui/bx;Lx/n;Lx/n;)V

    :goto_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v8, v12

    :goto_3
    invoke-virtual {v0}, Lcom/google/googlenav/z;->c_()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-direct {p0, v8}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v11, p0, Li/au;->c:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v11}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v11

    invoke-interface {v11}, Lv/t;->i()Lv/j;

    move-result-object v11

    invoke-interface {v11, v10}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lv/d;->g()Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v6

    :goto_4
    invoke-virtual {v0}, Lcom/google/googlenav/z;->am()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Lcom/google/googlenav/c;->O()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-direct {p0, v8, v10}, Li/au;->b(IZ)Lcom/google/googlenav/ui/bx;

    move-result-object v10

    :goto_5
    if-eqz v10, :cond_0

    sget-object v11, LD/c;->a:LD/c;

    invoke-virtual {v11}, LD/c;->d()Z

    move-result v11

    if-eqz v11, :cond_6

    if-ne v8, v6, :cond_6

    invoke-virtual {v9}, Lcom/google/googlenav/c;->O()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4, v10, v12}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    move v7, v12

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-direct {p0}, Li/au;->f()Lx/n;

    move-result-object v1

    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v2

    invoke-virtual {v2}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Li/au;->a(Ljava/lang/String;)Lx/G;

    move-result-object v2

    move-object v5, v1

    move-object v1, v9

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v9

    move-object v2, v9

    goto/16 :goto_1

    :cond_4
    move v10, v12

    goto :goto_4

    :cond_5
    invoke-direct {p0, v8, v10}, Li/au;->c(IZ)Lcom/google/googlenav/ui/bx;

    move-result-object v10

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-direct {p0, v4}, Li/au;->a(Ljava/util/Vector;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Li/au;->a(Ljava/lang/String;Lx/G;Lx/D;Ljava/util/Vector;Lx/n;IZ)V

    iget-object v0, p0, Li/au;->d:Lx/B;

    return-object v0

    :cond_8
    move v10, v12

    goto :goto_4

    :cond_9
    move-object v3, v9

    goto/16 :goto_2
.end method

.method private f()Lx/n;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lx/n;

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x2ef

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v4}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v0
.end method


# virtual methods
.method public a(IZ)Ljava/util/Vector;
    .locals 10

    const/4 v9, 0x1

    invoke-direct {p0, p1}, Li/au;->a(I)Lcom/google/googlenav/c;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/googlenav/c;->O()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/googlenav/ui/av;->B:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v1

    invoke-virtual {v1}, Li/aw;->bx()Z

    move-result v4

    invoke-virtual {v2}, Lcom/google/googlenav/c;->Z()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Li/au;->c()Lcom/google/googlenav/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/z;->al()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    const/16 v1, 0x1e3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_3
    invoke-virtual {v2}, Lcom/google/googlenav/c;->bd()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    const/16 v1, 0x444

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/googlenav/c;->be()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x2d4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_4
    return-object v3

    :cond_5
    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aB()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aC()LaO/d;

    move-result-object v1

    invoke-virtual {v1}, LaO/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, LaO/d;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2f0

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v5, v7, v9

    invoke-static {v6, v7}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->bU:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v2}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v2}, Lcom/google/googlenav/c;->V()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v2

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bL()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v2}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_c
    invoke-direct {p0}, Li/au;->d()Li/aw;

    move-result-object v1

    invoke-virtual {v1}, Li/aw;->bz()Z

    move-result v1

    invoke-static {v2, v3, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aR()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aU()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public al_()Lx/J;
    .locals 3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Li/au;->e()Lx/B;

    move-result-object v1

    iget-object v2, p0, Li/au;->a:Li/x;

    invoke-virtual {v0, v1, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/au;->d:Lx/B;

    return-void
.end method
