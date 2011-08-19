.class public Lcom/google/googlenav/bB;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)Lcom/google/googlenav/bF;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/google/googlenav/bF;

    const-string v1, "LatitudePublicUpdates"

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/bF;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/h;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->u(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/bF;->d(J)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->i(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->h(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/by;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/bF;->c(J)V

    invoke-virtual {p1}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->s(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->u(Ljava/lang/String;)V

    :cond_2
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->a(B)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v5}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->a(Ljava/util/Vector;)V

    :cond_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/bG;)Lcom/google/googlenav/bs;
    .locals 4

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->n()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The passed in activity has no location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/bB;->d(Law/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->e(Law/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for home Check-in without a reverse geocode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " near "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for a place with no display name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/bB;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x0

    cmp-long v0, p0, v5

    if-gez v0, :cond_3

    move-wide v0, v5

    :goto_0
    if-nez p2, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->i()Lac/v;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-interface {v4, v0, v1, v2, v3}, Lac/v;->a(JJ)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    const/16 v0, 0x11c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_2

    const/16 v0, 0x13a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const/16 v2, 0x143

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-wide v0, p0

    goto :goto_0
.end method

.method public static a(Law/e;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x11

    const/4 v4, 0x2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v5}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {v2, v4}, Law/e;->h(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Law/e;->d(I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v4}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Vector;I)Ljava/util/List;
    .locals 4

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/by;

    invoke-virtual {v0}, Lcom/google/googlenav/by;->a()LaD/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/google/googlenav/c;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Law/e;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/googlenav/bB;->d(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/bB;->c(Law/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Law/e;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v2}, Law/e;->i(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-static {p0, v2, v1}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Law/e;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Law/e;->i(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Law/e;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Law/e;)Lcom/google/googlenav/bt;
    .locals 7

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {p0, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/bt;

    invoke-virtual {p0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2}, Law/b;->e(Law/e;I)I

    move-result v2

    invoke-static {p0, v3}, Law/b;->e(Law/e;I)I

    move-result v3

    invoke-virtual {p0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bt;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/bt;

    invoke-virtual {p0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2}, Law/b;->e(Law/e;I)I

    move-result v2

    invoke-static {p0, v3}, Law/b;->e(Law/e;I)I

    move-result v3

    invoke-static {p0, v6}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bt;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Law/e;)Lcom/google/googlenav/by;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->e(I)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/googlenav/by;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/google/googlenav/by;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/googlenav/by;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/google/googlenav/by;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static h(Law/e;)Lcom/google/googlenav/bo;
    .locals 7

    new-instance v0, Lcom/google/googlenav/bo;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Law/e;->e(I)J

    move-result-wide v3

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Law/e;->e(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/bo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static i(Law/e;)Lf/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/ui/D;->a(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Law/e;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public static k(Law/e;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->i(I)I

    move-result v0

    return v0
.end method
