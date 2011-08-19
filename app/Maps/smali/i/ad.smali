.class public Li/ad;
.super Li/aJ;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/aJ;-><init>(Li/x;)V

    return-void
.end method

.method private b()Lcom/google/googlenav/ui/bx;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object p0, p0, Li/ad;->a:Li/x;

    check-cast p0, Li/M;

    invoke-virtual {p0}, Li/M;->af_()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Li/M;->P()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x228

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0}, Li/M;->bL()Lcom/google/googlenav/c;

    move-result-object v3

    invoke-virtual {p0}, Li/M;->S()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/googlenav/ui/av;->o:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Li/M;->bo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li/M;->bq()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x21d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0}, Li/M;->V()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li/M;->U()Lk/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    :cond_4
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    aget-object v1, v0, v6

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    array-length v2, v0

    if-le v2, v5, :cond_8

    aget-object v0, v0, v5

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x43f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Li/M;->ag_()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v6

    sget-object v4, Lcom/google/googlenav/ui/av;->o:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v5

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lcom/google/googlenav/ui/av;->j:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lx/S;
    .locals 4

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-direct {p0}, Li/ad;->b()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    iget-object v2, p0, Li/ad;->a:Li/x;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    return-object v0
.end method
