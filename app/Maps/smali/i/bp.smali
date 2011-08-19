.class public Li/bp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lu/d;Ljava/util/Vector;Ljava/util/Vector;IZ)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p3}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {p0, v0}, Lu/d;->a(Lu/f;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v4, 0x1

    if-eqz p4, :cond_2

    sget-object v3, Lcom/google/googlenav/ui/av;->k:Lcom/google/googlenav/ui/av;

    :goto_0
    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    :goto_1
    invoke-static {p0, v0, v4}, Li/bp;->a(Lu/v;Lu/f;Z)Li/ag;

    move-result-object v0

    invoke-virtual {v0}, Li/ag;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Li/ag;->a:Ljava/lang/String;

    invoke-static {p4}, Li/bp;->a(Z)Lcom/google/googlenav/ui/av;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_0
    invoke-virtual {v0}, Li/ag;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Li/ag;->c:Ljava/lang/String;

    invoke-static {p4}, Li/bp;->b(Z)Lcom/google/googlenav/ui/av;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_1
    return v1

    :cond_2
    sget-object v3, Lcom/google/googlenav/ui/av;->G:Lcom/google/googlenav/ui/av;

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method public static a(Z)Lcom/google/googlenav/ui/av;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->l:Lcom/google/googlenav/ui/av;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->H:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method

.method public static a(Lu/d;)Lcom/google/googlenav/ui/g;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/g;

    invoke-direct {v1, v0, p0}, Lcom/google/googlenav/ui/g;-><init>(Lcom/google/googlenav/ui/bx;Lu/d;)V

    return-object v1
.end method

.method private static a(Lu/v;IZ)Li/ag;
    .locals 4

    new-instance v1, Li/ag;

    invoke-direct {v1}, Li/ag;-><init>()V

    invoke-virtual {p0, p1}, Lu/v;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->c()Lu/e;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lu/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->a:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lu/e;->B()[Lu/c;

    move-result-object v0

    iput-object v0, v1, Li/ag;->b:[Lu/c;

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lu/e;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lu/e;->q()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lu/v;->ao()I

    move-result v0

    invoke-virtual {v2}, Lu/e;->q()I

    move-result v3

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private static a(Lu/v;Lu/f;)Li/ag;
    .locals 5

    const/16 v4, 0xa

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lu/f;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd2

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lu/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Li/bp;->b(Lu/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x401

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    new-instance v0, Li/ag;

    invoke-direct {v0}, Li/ag;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/ag;->a:Ljava/lang/String;

    return-object v0

    :cond_2
    const/16 v3, 0x402

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lu/f;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Li/bp;->a(Lu/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x3fc

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v2, 0x3fb

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/e;->q()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/e;->q()I

    move-result v0

    check-cast p0, Lu/d;

    invoke-virtual {p0}, Lu/d;->ao()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Lu/v;Lu/f;Z)Li/ag;
    .locals 3

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v0

    new-instance v1, Li/ag;

    invoke-direct {v1}, Li/ag;-><init>()V

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lu/f;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lu/f;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Lu/o;

    const/16 v2, 0x456

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lu/o;->u()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lu/o;->u()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->c:Ljava/lang/String;

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lu/o;->t()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lu/o;->t()I

    move-result v0

    check-cast p0, Lu/d;

    invoke-virtual {p0}, Lu/d;->ao()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Li/ag;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p0}, Li/bp;->a(Lu/v;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lu/f;->e()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lu/f;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p0, p1}, Li/bp;->a(Lu/v;Lu/f;)Li/ag;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Lu/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lu/f;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Li/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/ag;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, p1, v0}, Li/bp;->b(Lu/v;Lu/f;Z)Li/ag;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lu/e;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->s()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Lu/v;IIZZ)Ljava/util/Vector;
    .locals 11

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v6

    invoke-virtual {p0}, Lu/v;->o()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, p0

    check-cast v0, Lu/d;

    move-object v1, v0

    invoke-virtual {v1, p2, v5, p3}, Lu/d;->a(ILcom/google/googlenav/ui/bB;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, p2, p3}, Li/bp;->a(Lu/d;Ljava/util/Vector;Ljava/util/Vector;IZ)I

    move-result v1

    :goto_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p3, :cond_0

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz p3, :cond_a

    new-instance v4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    :goto_1
    if-eqz p3, :cond_c

    const/4 v4, 0x5

    :goto_2
    new-instance v8, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v8}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v8, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    if-eqz p4, :cond_d

    const/16 v2, 0x5ec

    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    if-nez p4, :cond_1

    const/16 p4, 0xe7

    invoke-virtual {v1, p4}, Lcom/google/googlenav/ui/aQ;->g(I)Lcom/google/googlenav/ui/aQ;

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-static {v5, v6}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object p1

    if-eqz p3, :cond_e

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/aQ;->c(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {v7, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    return-object v7

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p0, p2, v5}, Lu/v;->a(ILcom/google/googlenav/ui/bB;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {p0, p2, p3}, Li/bp;->a(Lu/v;IZ)Li/ag;

    move-result-object v5

    invoke-virtual {v5}, Li/ag;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v5, Li/ag;->a:Ljava/lang/String;

    invoke-static {p3}, Li/bp;->a(Z)Lcom/google/googlenav/ui/av;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_6
    invoke-virtual {v5}, Li/ag;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v5, Li/ag;->b:[Lu/c;

    array-length v8, v8

    if-ge v7, v8, :cond_8

    iget-object v8, v5, Li/ag;->b:[Lu/c;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lu/c;->c()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lu/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3}, Li/bp;->c(Z)Lcom/google/googlenav/ui/av;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Li/ag;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, v5, Li/ag;->c:Ljava/lang/String;

    invoke-static {p3}, Li/bp;->b(Z)Lcom/google/googlenav/ui/av;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    :cond_9
    const/4 v5, 0x0

    move v10, v5

    move-object v5, v1

    move v1, v10

    goto/16 :goto_0

    :cond_a
    invoke-static {v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_b
    move-object v3, v4

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x9

    goto/16 :goto_2

    :cond_d
    const/16 v2, 0xc8

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0, p2}, Lu/v;->c(I)Lcom/google/googlenav/bf;

    move-result-object p1

    check-cast p1, Lu/f;

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object p1

    new-instance p2, Lcom/google/googlenav/ui/au;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p3

    invoke-virtual {p0}, Lu/v;->m()I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_f

    const/4 p0, 0x1

    :goto_6
    invoke-direct {p2, p3, p1, p0}, Lcom/google/googlenav/ui/au;-><init>(Lcom/google/googlenav/ui/bx;Lu/e;Z)V

    invoke-virtual {v7, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Lu/v;)Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Z)Lcom/google/googlenav/ui/av;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->m:Lcom/google/googlenav/ui/av;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->I:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method

.method private static b(Lu/v;Lu/f;Z)Li/ag;
    .locals 6

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lu/f;->e()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lu/f;->g()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lu/f;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Lu/f;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lu/f;->r()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x405

    :goto_0
    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lu/f;->r()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x404

    :goto_1
    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lu/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\n"

    const/16 v4, 0xd2

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lu/e;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Li/bp;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lu/f;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lu/f;->m()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lu/e;->r()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_3
    invoke-virtual {v0}, Lu/e;->q()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v0}, Lu/e;->q()I

    move-result v0

    check-cast p0, Lu/d;

    invoke-virtual {p0}, Lu/d;->ao()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    new-instance v0, Li/ag;

    invoke-direct {v0}, Li/ag;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/ag;->a:Ljava/lang/String;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/ag;->c:Ljava/lang/String;

    :cond_6
    return-object v0

    :cond_7
    const/16 v3, 0x407

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x406

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    invoke-static {v0}, Li/bp;->c(Lu/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\n"

    invoke-static {v2, v3, v0}, Li/bp;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x403

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Li/bp;->d(Lu/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lu/e;->q()I

    move-result v3

    if-lez v3, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lu/e;->q()I

    move-result v0

    check-cast p0, Lu/d;

    invoke-virtual {p0}, Lu/d;->ao()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Lu/e;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lu/e;->s()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lu/e;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->o()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c(Z)Lcom/google/googlenav/ui/av;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/av;->n:Lcom/google/googlenav/ui/av;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/av;->J:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method

.method private static c(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3ff

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu/e;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x400

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->o()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3fe

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu/e;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3fd

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->s()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
