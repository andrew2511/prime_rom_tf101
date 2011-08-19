.class public abstract LB/s;
.super LB/u;


# direct methods
.method protected constructor <init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LB/u;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/i;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->J()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-static {v0}, LB/u;->a(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LB/s;->a:Lu/e;

    iget-object v1, p0, LB/s;->b:Lu/d;

    invoke-virtual {v0, v1}, Lu/e;->a(Lu/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-static {v0}, LB/u;->b(Lu/e;)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-static {v0}, LB/u;->c(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/s;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
