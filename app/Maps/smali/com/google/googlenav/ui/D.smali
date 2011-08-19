.class public Lcom/google/googlenav/ui/D;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;)Law/e;
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lf/h;[Ljava/lang/String;)Law/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static a(Lf/h;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lf/h;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lf/h;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public static a(Lf/h;[Ljava/lang/String;)Law/e;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, LaG/b;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/D;->a(Lf/h;)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/D;->a(Law/e;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Law/e;B)Lcom/google/googlenav/c;
    .locals 7

    const/4 v5, 0x4

    new-instance v0, Lcom/google/googlenav/c;

    invoke-static {p0}, Lcom/google/googlenav/ui/D;->a(Law/e;)Lf/h;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v5, v3}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v5, v4}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    const/16 v1, 0xb

    invoke-static {p0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->n(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {p0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Law/e;)Lf/h;
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    new-instance v2, Lf/h;

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v0, 0xa

    invoke-direct {v2, v1, v0}, Lf/h;-><init>(II)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2ce

    if-nez p1, :cond_0

    const/16 v0, 0x22e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2cd

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_1

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method

.method public static a(Law/e;Ljava/util/Vector;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x6e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v2, v1, p0}, Lcom/google/googlenav/af;->a(IILaw/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Law/e;[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    aget-object v0, p1, v2

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p1, v2

    invoke-virtual {p0, v3, v2, v0}, Law/e;->a(IILjava/lang/String;)V

    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_0

    aget-object v0, p1, v1

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {p0, v3, v1, v0}, Law/e;->a(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/Vector;ILjava/lang/String;I)V
    .locals 3

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v0, p3, p4}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v6}, Ljava/util/Vector;-><init>(I)V

    const/4 v4, 0x3

    invoke-static {v0, v4}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v0, v6}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    sget-object v5, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(Law/e;Ljava/util/Vector;)V

    new-instance v4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Lf/h;Lf/h;)Z
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Law/e;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x4

    if-nez p0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v2, v1}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method
