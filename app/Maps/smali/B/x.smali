.class public LB/x;
.super LB/y;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LB/y;-><init>(Lu/d;Lu/e;ILjava/util/List;)V

    invoke-virtual {p0}, LB/x;->n()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/x;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, LB/x;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LB/x;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->av()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/x;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/x;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->Q()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LB/x;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LB/x;->a(F)V

    return-void
.end method
