.class LB/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lj/B;

.field private b:I

.field private c:I

.field private final d:Lu/v;

.field private e:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field private f:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field private g:I


# direct methods
.method public constructor <init>(Lu/v;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/B;->e()Lj/B;

    move-result-object v0

    iput-object v0, p0, LB/d;->a:Lj/B;

    iput v1, p0, LB/d;->b:I

    iput v1, p0, LB/d;->c:I

    iput-object p1, p0, LB/d;->d:Lu/v;

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iput-object v0, p0, LB/d;->f:Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-direct {p0}, LB/d;->o()V

    invoke-direct {p0}, LB/d;->m()V

    return-void
.end method

.method private static a(Lu/e;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lu/e;->l()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lu/e;->h()Lf/h;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lu/i;->d()Lf/h;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)Lu/e;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0}, Lu/v;->aa()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0, p1}, Lu/v;->l(I)Lu/e;

    move-result-object v0

    return-object v0
.end method

.method private d(I)I
    .locals 1

    invoke-direct {p0, p1}, LB/d;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, LB/d;->e(I)I

    move-result v0

    return v0
.end method

.method private e(I)I
    .locals 2

    invoke-virtual {p0, p1}, LB/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LB/d;->c(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, LB/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private f(I)I
    .locals 3

    const/4 v2, 0x2

    move v0, p1

    :goto_0
    invoke-virtual {p0, v0}, LB/d;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LB/d;->b()Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->y()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, LB/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, LB/d;->c(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->y()I

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private g(I)Z
    .locals 2

    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0}, Lu/v;->aa()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, LB/d;->c(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()I
    .locals 3

    invoke-virtual {p0}, LB/d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LB/d;->b()Lu/e;

    move-result-object v1

    iget v0, p0, LB/d;->c:I

    move v2, v0

    :goto_0
    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0}, Lu/v;->c_()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0, v2}, Lu/v;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->c()Lu/e;

    move-result-object v0

    if-ne v0, v1, :cond_0

    iput v2, p0, LB/d;->c:I

    iget v0, p0, LB/d;->c:I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0}, Lu/v;->c_()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, LB/d;->d:Lu/v;

    invoke-virtual {v0}, Lu/v;->c_()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private m()V
    .locals 3

    invoke-virtual {p0}, LB/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LB/d;->b()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, LB/d;->n()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LB/d;->d:Lu/v;

    iget v1, p0, LB/d;->b:I

    iget v2, p0, LB/d;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lu/v;->a(II)[Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, LB/d;->d:Lu/v;

    iget v2, p0, LB/d;->b:I

    invoke-virtual {v1, v2}, Lu/v;->l(I)Lu/e;

    move-result-object v1

    invoke-static {v1}, LB/d;->a(Lu/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LB/d;->a:Lj/B;

    invoke-static {v0, v1, v2}, LB/m;->a([Lf/h;Lu/e;Lj/B;)V

    goto :goto_0
.end method

.method private n()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, LB/d;->a:Lj/B;

    invoke-virtual {v0}, Lj/B;->b()V

    iget v0, p0, LB/d;->b:I

    :goto_0
    invoke-direct {p0, v0}, LB/d;->g(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->y()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, LB/d;->b:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->l()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LB/d;->a:Lj/B;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lj/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, LB/d;->d:Lu/v;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Lu/v;->a(II)[Lf/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, LB/d;->a:Lj/B;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lj/B;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o()V
    .locals 2

    invoke-virtual {p0}, LB/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    :goto_0
    iput-object v0, p0, LB/d;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    return-void

    :cond_0
    invoke-virtual {p0}, LB/d;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    goto :goto_0
.end method


# virtual methods
.method public a()Lu/e;
    .locals 2

    iget v0, p0, LB/d;->b:I

    invoke-direct {p0, v0}, LB/d;->d(I)I

    move-result v0

    iget-object v1, p0, LB/d;->d:Lu/v;

    invoke-virtual {v1}, Lu/v;->aa()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, LB/d;->d:Lu/v;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, LB/d;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lu/e;
    .locals 1

    iget v0, p0, LB/d;->b:I

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LB/d;->g(I)Z

    move-result v0

    return v0
.end method

.method public c()Lu/e;
    .locals 1

    iget v0, p0, LB/d;->g:I

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, LB/d;->b()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, LB/d;->b:I

    :goto_0
    iget-object v1, p0, LB/d;->d:Lu/v;

    invoke-virtual {v1}, Lu/v;->aa()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, LB/d;->c(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->y()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, LB/d;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public f()I
    .locals 1

    invoke-direct {p0}, LB/d;->l()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, LB/d;->f()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public h()V
    .locals 1

    iget v0, p0, LB/d;->b:I

    iput v0, p0, LB/d;->g:I

    iget v0, p0, LB/d;->b:I

    invoke-direct {p0, v0}, LB/d;->d(I)I

    move-result v0

    iput v0, p0, LB/d;->b:I

    iget-object v0, p0, LB/d;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iput-object v0, p0, LB/d;->f:Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-direct {p0}, LB/d;->o()V

    invoke-direct {p0}, LB/d;->m()V

    return-void
.end method

.method public i()Lj/B;
    .locals 1

    iget-object v0, p0, LB/d;->a:Lj/B;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, LB/d;->b:I

    invoke-virtual {p0, v0}, LB/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public k()Lcom/google/googlenav/ui/view/android/rideabout/j;
    .locals 1

    iget-object v0, p0, LB/d;->f:Lcom/google/googlenav/ui/view/android/rideabout/j;

    return-object v0
.end method
