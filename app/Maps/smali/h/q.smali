.class public Lh/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lu/v;Lcom/google/googlenav/ui/aV;I)Lcom/google/googlenav/ui/bx;
    .locals 5

    invoke-virtual {p0}, Lu/v;->as()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {p0, p2}, Lh/q;->a(Lu/v;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lh/q;->a(Lu/v;Lcom/google/googlenav/ui/aV;IZ)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->E:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lu/v;->e(I)V

    invoke-virtual {p0}, Lu/v;->aj()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v3, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0}, Lu/v;->e(I)V

    new-instance v0, Lcom/google/googlenav/ui/bt;

    const/16 v3, 0xd9

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/googlenav/ui/bt;-><init>(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;II)V

    return-object v0

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private static a(Lu/v;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lu/v;->e(I)V

    invoke-virtual {p0}, Lu/v;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v1

    invoke-virtual {v1}, Lu/k;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->D:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Lu/v;Lcom/google/googlenav/ui/aV;IZ)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lu/v;->e(I)V

    invoke-static {p0}, Lh/q;->a(Lu/v;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/e;

    invoke-static {p0}, Lh/q;->b(Lu/e;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, p3}, Lh/q;->a(Ljava/lang/StringBuilder;Z)V

    :cond_0
    invoke-static {v0, p1, p0, p3}, Lh/q;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/aV;Lu/e;Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/e;

    invoke-virtual {p0}, Lu/e;->y()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lu/e;->t()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {v0, p1, p0, p3}, Lh/q;->a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/aV;Lu/e;Z)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lu/v;)Ljava/util/Vector;
    .locals 8

    const/4 v7, 0x2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lu/v;->aa()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Lu/v;->l(I)Lu/e;

    move-result-object v4

    invoke-virtual {v4}, Lu/e;->y()I

    move-result v0

    if-ne v0, v7, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {v0}, Lu/e;->q()I

    move-result v5

    invoke-virtual {v4}, Lu/e;->q()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lu/e;->a(I)V

    invoke-virtual {v0}, Lu/e;->s()I

    move-result v5

    invoke-virtual {v4}, Lu/e;->s()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lu/e;->b(I)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/e;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lh/q;->a(Lu/e;)Lu/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private static a(Lu/e;)Lu/e;
    .locals 3

    new-instance v0, Lu/e;

    invoke-direct {v0}, Lu/e;-><init>()V

    invoke-virtual {p0}, Lu/e;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/e;->d(I)V

    invoke-virtual {p0}, Lu/e;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/e;->a(J)V

    invoke-virtual {p0}, Lu/e;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/e;->a(I)V

    invoke-virtual {p0}, Lu/e;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/e;->b(I)V

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/googlenav/ui/aV;Lu/e;Z)V
    .locals 3

    invoke-virtual {p2}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    sget-char v0, Lcom/google/googlenav/ui/aV;->bB:C

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Lu/e;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->bA:C

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v0

    invoke-virtual {p2}, Lu/e;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-char v0, Lcom/google/googlenav/ui/aV;->k:C

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    sget-char v0, Lcom/google/googlenav/ui/aV;->j:C

    goto :goto_0
.end method

.method private static b(Lu/e;)Z
    .locals 4

    invoke-virtual {p0}, Lu/e;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu/e;->s()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lu/e;->q()I

    move-result v0

    const/16 v1, 0x29a

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
