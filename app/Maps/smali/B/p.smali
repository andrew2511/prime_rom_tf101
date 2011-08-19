.class public LB/p;
.super LB/u;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;I)V
    .locals 6

    sget-object v1, LB/h;->e:LB/h;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LB/u;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    invoke-virtual {p0}, LB/p;->g()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ai_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/p;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->k_()Lu/h;

    move-result-object v0

    invoke-static {v0}, LB/p;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq_()Lf/h;
    .locals 1

    iget-object v0, p0, LB/p;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->av()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    invoke-virtual {p0}, LB/p;->aq_()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/p;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, LB/p;->c()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LB/p;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LB/p;->a(F)V

    return-void
.end method
