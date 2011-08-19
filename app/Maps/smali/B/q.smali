.class public LB/q;
.super LB/u;


# instance fields
.field private final d:Lu/e;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V
    .locals 6

    sget-object v1, LB/h;->a:LB/h;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LB/u;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    iput-object p3, p0, LB/q;->d:Lu/e;

    invoke-virtual {p0}, LB/q;->g()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LB/q;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LB/q;->d:Lu/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, LB/q;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->y()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LB/q;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, LB/q;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, LB/q;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ai_()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x394

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq_()Lf/h;
    .locals 1

    iget-object v0, p0, LB/q;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->l()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LB/q;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->e()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/q;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->l()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LB/q;->d:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LB/q;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->av()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/q;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->e()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/q;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 7

    invoke-virtual {p0}, LB/q;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB/q;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB/q;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, LB/q;->y()I

    move-result v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v0, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, LB/q;->b:Lu/d;

    iget v1, p0, LB/q;->c:I

    invoke-static {v0, v1, p0}, LB/u;->b(Lu/d;ILB/u;)V

    return-void
.end method
