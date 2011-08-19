.class public LB/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lu/d;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lu/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/j;->a:Lu/d;

    return-void
.end method

.method private a(LB/k;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, LB/k;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, LB/k;->a(I)LB/u;

    move-result-object v2

    invoke-virtual {v2}, LB/u;->z()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private a(Lu/e;I)V
    .locals 4

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    new-instance v1, LB/k;

    new-instance v2, LB/x;

    iget-object v3, p0, LB/j;->a:Lu/d;

    invoke-direct {v2, v3, p1, p2}, LB/x;-><init>(Lu/d;Lu/e;I)V

    invoke-direct {v1, v2}, LB/k;-><init>(LB/u;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lu/e;ILjava/util/List;)V
    .locals 4

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    new-instance v1, LB/k;

    new-instance v2, LB/f;

    iget-object v3, p0, LB/j;->a:Lu/d;

    invoke-direct {v2, v3, p1, p2, p3}, LB/f;-><init>(Lu/d;Lu/e;ILjava/util/List;)V

    invoke-direct {v1, v2}, LB/k;-><init>(LB/u;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lu/e;Lu/e;ILj/B;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v6, LB/k;

    new-instance v0, LB/v;

    iget-object v1, p0, LB/j;->a:Lu/d;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Lj/B;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LB/v;-><init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V

    invoke-direct {v6, v0}, LB/k;-><init>(LB/u;)V

    invoke-virtual {p2}, Lu/e;->I()[Lu/i;

    move-result-object v7

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_1

    aget-object v2, v7, v8

    add-int/lit8 v0, v8, 0x1

    array-length v1, v7

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v8, 0x1

    aget-object v0, v7, v0

    move-object v3, v0

    :goto_1
    new-instance v0, LB/t;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Lj/B;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LB/t;-><init>(Lu/e;Lu/i;Lu/i;ILjava/util/List;)V

    invoke-virtual {v6, v0}, LB/k;->a(LB/u;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lu/e;Lu/e;ILjava/util/List;)V
    .locals 8

    iget-object v6, p0, LB/j;->b:Ljava/util/List;

    new-instance v7, LB/k;

    new-instance v0, LB/q;

    iget-object v1, p0, LB/j;->a:Lu/d;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB/q;-><init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V

    invoke-direct {v7, v0}, LB/k;-><init>(LB/u;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    move v1, v6

    :goto_0
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-direct {p0, v0}, LB/j;->a(LB/k;)F

    move-result v2

    const/4 v0, 0x0

    move v3, v6

    move v4, v0

    :goto_1
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0}, LB/k;->a()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0, v3}, LB/k;->a(I)LB/u;

    move-result-object v0

    sub-float v5, v2, v4

    invoke-virtual {v0, v5}, LB/u;->b(F)V

    invoke-virtual {v0}, LB/u;->z()F

    move-result v0

    add-float/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(LB/k;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, LB/k;->a(I)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v1

    sget-object v2, LB/h;->b:LB/h;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, LB/u;->o()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->s()I

    move-result v0

    invoke-direct {p0, p1}, LB/j;->a(LB/k;)F

    move-result v1

    move v2, v3

    :goto_0
    invoke-virtual {p1}, LB/k;->a()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, LB/k;->a(I)LB/u;

    move-result-object v3

    invoke-virtual {v3}, LB/u;->x()Z

    move-result v4

    if-nez v4, :cond_0

    if-lez v0, :cond_0

    int-to-float v4, v0

    invoke-virtual {v3}, LB/u;->z()F

    move-result v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {p1, v2}, LB/k;->a(I)LB/u;

    move-result-object v4

    invoke-virtual {v4, v3}, LB/u;->a(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lu/e;I)V
    .locals 4

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    new-instance v1, LB/k;

    new-instance v2, LB/p;

    iget-object v3, p0, LB/j;->a:Lu/d;

    invoke-direct {v2, v3, p1, p2}, LB/p;-><init>(Lu/d;Lu/e;I)V

    invoke-direct {v1, v2}, LB/k;-><init>(LB/u;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lu/e;Lu/e;ILjava/util/List;)V
    .locals 8

    iget-object v6, p0, LB/j;->b:Ljava/util/List;

    new-instance v7, LB/k;

    new-instance v0, LB/i;

    iget-object v1, p0, LB/j;->a:Lu/d;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB/i;-><init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V

    invoke-direct {v7, v0}, LB/k;-><init>(LB/u;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(LB/k;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, LB/k;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, LB/k;->a(I)LB/u;

    move-result-object v2

    invoke-virtual {v2}, LB/u;->y()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, LB/j;->e()V

    invoke-direct {p0}, LB/j;->d()I

    move-result v1

    move v2, v8

    move v3, v8

    :goto_0
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-direct {p0, v0}, LB/j;->c(LB/k;)I

    move-result v4

    move v5, v8

    move v6, v3

    move v3, v8

    :goto_1
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0}, LB/k;->a()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0, v3}, LB/k;->a(I)LB/u;

    move-result-object v0

    sub-int v7, v4, v5

    invoke-virtual {v0, v7}, LB/u;->e(I)V

    sub-int v7, v1, v6

    invoke-virtual {v0, v7}, LB/u;->f(I)V

    invoke-virtual {v0}, LB/u;->y()I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-direct {p0, v0}, LB/j;->c(LB/k;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0}, LB/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-direct {p0, v0}, LB/j;->b(LB/k;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, LB/d;

    iget-object v1, p0, LB/j;->a:Lu/d;

    invoke-direct {v0, v1}, LB/d;-><init>(Lu/v;)V

    invoke-virtual {v0}, LB/d;->j()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, LB/d;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, LB/d;->b()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->a()Lu/e;

    move-result-object v2

    invoke-virtual {v0}, LB/d;->f()I

    move-result v3

    invoke-virtual {v0}, LB/d;->i()Lj/B;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj/B;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, LB/j;->a(Lu/e;Lu/e;ILjava/util/List;)V

    invoke-virtual {v0}, LB/d;->h()V

    :goto_0
    invoke-virtual {v0}, LB/d;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LB/d;->b()Lu/e;

    move-result-object v2

    invoke-virtual {v0}, LB/d;->f()I

    move-result v3

    invoke-virtual {v0}, LB/d;->i()Lj/B;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, LB/j;->a(Lu/e;Lu/e;ILj/B;)V

    invoke-virtual {v0}, LB/d;->h()V

    :cond_0
    :goto_1
    invoke-virtual {v0}, LB/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, LB/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LB/d;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->f()I

    move-result v2

    invoke-virtual {v0}, LB/d;->i()Lj/B;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj/B;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, LB/j;->a(Lu/e;ILjava/util/List;)V

    :goto_2
    invoke-virtual {v0}, LB/d;->h()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LB/d;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->b()Lu/e;

    move-result-object v2

    invoke-virtual {v0}, LB/d;->g()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, v7}, LB/j;->b(Lu/e;Lu/e;ILjava/util/List;)V

    invoke-virtual {v0}, LB/d;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->b()Lu/e;

    move-result-object v2

    invoke-virtual {v0}, LB/d;->f()I

    move-result v3

    invoke-virtual {v0}, LB/d;->i()Lj/B;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, LB/j;->a(Lu/e;Lu/e;ILj/B;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LB/d;->k()Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, LB/d;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->f()I

    move-result v0

    invoke-direct {p0, v1, v0}, LB/j;->a(Lu/e;I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {v0}, LB/d;->k()Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, LB/d;->c()Lu/e;

    move-result-object v1

    invoke-virtual {v0}, LB/d;->f()I

    move-result v0

    invoke-direct {p0, v1, v0}, LB/j;->b(Lu/e;I)V

    goto :goto_3

    :cond_5
    move-object v1, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public a()LB/c;
    .locals 2

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LB/j;->b:Ljava/util/List;

    invoke-direct {p0}, LB/j;->f()V

    invoke-direct {p0}, LB/j;->c()V

    invoke-direct {p0}, LB/j;->b()V

    new-instance v0, LB/c;

    iget-object v1, p0, LB/j;->b:Ljava/util/List;

    invoke-direct {v0, v1}, LB/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method
