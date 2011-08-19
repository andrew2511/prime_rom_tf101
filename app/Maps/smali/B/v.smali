.class public LB/v;
.super LB/s;


# instance fields
.field private final d:Lu/e;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V
    .locals 6

    sget-object v1, LB/h;->b:LB/h;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LB/s;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    iput-object p2, p0, LB/v;->d:Lu/e;

    invoke-virtual {p0}, LB/v;->n()V

    return-void
.end method


# virtual methods
.method public aq_()Lf/h;
    .locals 1

    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->l()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 2

    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/i;->d()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->h()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->I()[Lu/i;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/i;->b()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/v;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method protected n()V
    .locals 1

    invoke-virtual {p0}, LB/v;->A()V

    invoke-virtual {p0}, LB/v;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB/v;->D()F

    move-result v0

    invoke-virtual {p0, v0}, LB/v;->a(F)V

    :cond_0
    return-void
.end method
