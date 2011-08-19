.class public Li/am;
.super Li/bq;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/bq;-><init>(Li/x;)V

    return-void
.end method

.method private a(Lo/U;Ljava/util/Vector;)V
    .locals 4

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/C;->b(Lo/U;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x142

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d()Li/C;
    .locals 0

    iget-object p0, p0, Li/am;->a:Li/x;

    check-cast p0, Li/C;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)Lx/J;
    .locals 1

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->N()Lo/U;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/am;->a(Lo/U;)Lx/J;

    move-result-object v0

    return-object v0
.end method

.method public a(Lo/U;)Lx/J;
    .locals 6

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->J()Lc/s;

    move-result-object v1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lc/s;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v4

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Lo/aH;->d()Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lc/s;->a(J)V

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lo/U;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v2

    invoke-virtual {v0}, Li/C;->bq()Lo/bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/bt;->a(Lo/U;)Lx/B;

    move-result-object v0

    iget-object v1, p0, Li/am;->a:Li/x;

    invoke-virtual {v2, v0, v1}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Li/C;->N()Lo/U;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lc/s;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/s;->a(J)V

    :cond_2
    move-object v1, p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v2

    invoke-virtual {v0}, Li/C;->bq()Lo/bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/bt;->b(Lo/U;)Lx/B;

    move-result-object v0

    iget-object v3, p0, Li/am;->a:Li/x;

    invoke-virtual {v2, v0, v1, v3}, Lx/k;->a(Lx/B;Lo/U;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()Lx/z;
    .locals 2

    new-instance v0, Lx/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx/p;-><init>(I)V

    return-object v0
.end method

.method protected c(Lcom/google/googlenav/c;)Lx/J;
    .locals 8

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/16 v0, 0x191

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x134

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x189

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x135

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x18c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x136

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/16 v2, 0x18b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput-boolean v7, v0, Lx/B;->x:Z

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v2

    invoke-virtual {v2}, Li/C;->N()Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->m()Z

    move-result v2

    if-nez v2, :cond_0

    iput v1, v0, Lx/B;->z:I

    :goto_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Li/am;->a:Li/x;

    check-cast v1, Li/C;

    invoke-virtual {v1}, Li/C;->N()Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v7, v0, Lx/B;->z:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lx/B;->z:I

    goto :goto_0
.end method

.method protected d(Lcom/google/googlenav/c;)Lx/J;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->N()Lo/U;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0, v0, v4}, Li/am;->a(Lo/U;Ljava/util/Vector;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0xbf

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-direct {p0}, Li/am;->d()Li/C;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method
