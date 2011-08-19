.class public Li/L;
.super Li/aJ;


# instance fields
.field private final b:Lcom/google/googlenav/ui/aV;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, Li/aJ;-><init>(Li/x;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, Li/L;->b:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method private a(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 6

    iget-object v0, p0, Li/L;->a:Li/x;

    check-cast v0, Li/bl;

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x3e7

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->ae:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v0}, Li/bl;->by()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Li/bl;->bz()Z

    move-result v3

    invoke-static {p1, v3, v1}, Li/L;->a(Lcom/google/googlenav/c;ZLjava/util/Vector;)V

    :cond_1
    invoke-virtual {v0}, Li/bl;->bx()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->Z()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1e3

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->bd()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x444

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/c;->bc()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x1d5

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/c;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Li/bl;->bB()Z

    move-result v3

    invoke-static {p1, v3}, Li/P;->b(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x2d4

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->bl:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0, v0, p1, v1}, Li/L;->a(Li/bl;Lcom/google/googlenav/c;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    new-instance v4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v0}, Li/bl;->by()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/c;->be()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/googlenav/ui/bx;->g:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    :cond_7
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/c;->Q()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3e9

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->ae:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v4

    invoke-static {v3, v4}, Li/L;->a(Ljava/lang/String;Lcom/google/googlenav/aB;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->o:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x12

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/D;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x276

    const/16 v7, 0x275

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/D;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/D;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/googlenav/D;->d(Z)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, ""

    invoke-static {v3, v4, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->bC:C

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    const/16 v0, 0x3a1

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/googlenav/D;->c(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static a(Ljava/lang/String;Lcom/google/googlenav/aB;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->h()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/aV;->bD:C

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static a(Lcom/google/googlenav/c;ZLjava/util/Vector;)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/googlenav/ui/av;->q:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/googlenav/ui/av;->bf:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ay;->b(J)Lcom/google/googlenav/aX;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/googlenav/aX;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/googlenav/aX;->b()Lcom/google/googlenav/ui/av;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, " "

    sget-object v3, Lcom/google/googlenav/ui/av;->q:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/av;)V

    return-void
.end method


# virtual methods
.method public a()Lx/S;
    .locals 4

    iget-object v0, p0, Li/L;->a:Li/x;

    invoke-virtual {v0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->F()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Li/L;->a(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v1

    iget-object v2, p0, Li/L;->a:Li/x;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    goto :goto_0
.end method

.method a(Li/bl;Lcom/google/googlenav/c;Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/aB;->a(Z)Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/D;->c(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li/L;->a(Ljava/lang/String;Lcom/google/googlenav/D;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
