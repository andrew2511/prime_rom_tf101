.class public Li/aK;
.super Li/aJ;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/aJ;-><init>(Li/x;)V

    return-void
.end method

.method private a(Lo/U;)Ljava/util/Vector;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lo/U;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/U;->E()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Li/aK;->a:Li/x;

    check-cast v0, Li/C;

    invoke-virtual {v0}, Li/C;->S()J

    move-result-wide v4

    invoke-static {p1, v4, v5, v7}, Lo/bt;->a(Lo/U;JZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v3, Lcom/google/googlenav/ui/av;->o:Lcom/google/googlenav/ui/av;

    if-nez v0, :cond_5

    move v4, v7

    :goto_0
    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v6, v6}, Lo/U;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lo/U;->G()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v2, Lcom/google/googlenav/ui/aV;->bt:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v2, Lcom/google/googlenav/ui/av;->p:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lo/U;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    move v4, v6

    goto :goto_0

    :cond_6
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    iget-object p0, p0, Li/aK;->a:Li/x;

    check-cast p0, Li/C;

    invoke-virtual {p0}, Li/C;->L()Lo/g;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/g;->b(Ljava/lang/Long;)Lo/aI;

    move-result-object v2

    invoke-virtual {v2}, Lo/aI;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/g;->a(J)V

    invoke-static {v2, v3}, Lo/A;->c(J)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x16a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/av;->F:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b()Lcom/google/googlenav/ui/bx;
    .locals 2

    iget-object v0, p0, Li/aK;->a:Li/x;

    check-cast v0, Li/C;

    invoke-virtual {v0}, Li/C;->N()Lo/U;

    move-result-object v0

    invoke-direct {p0, v0}, Li/aK;->a(Lo/U;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lx/S;
    .locals 4

    invoke-direct {p0}, Li/aK;->b()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v1

    iget-object v2, p0, Li/aK;->a:Li/x;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    return-object v0
.end method
