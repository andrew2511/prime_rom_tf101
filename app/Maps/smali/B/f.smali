.class public LB/f;
.super LB/y;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LB/y;-><init>(Lu/d;Lu/e;ILjava/util/List;)V

    invoke-virtual {p0}, LB/f;->e()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/f;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, LB/f;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LB/f;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->av()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/f;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/f;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->Q()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, LB/f;->b:Lu/d;

    iget v1, p0, LB/f;->c:I

    invoke-static {v0, v1, p0}, LB/u;->b(Lu/d;ILB/u;)V

    return-void
.end method
