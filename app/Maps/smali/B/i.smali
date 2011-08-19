.class public LB/i;
.super LB/y;


# instance fields
.field private final d:Lu/e;


# direct methods
.method public constructor <init>(Lu/d;Lu/e;Lu/e;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, LB/y;-><init>(Lu/d;Lu/e;ILjava/util/List;)V

    iput-object p3, p0, LB/i;->d:Lu/e;

    invoke-virtual {p0}, LB/i;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/i;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LB/i;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->l()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/i;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/i;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/i;->d:Lu/e;

    invoke-static {v0}, LB/u;->a(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, LB/i;->b:Lu/d;

    iget v1, p0, LB/i;->c:I

    invoke-static {v0, v1, p0}, LB/u;->b(Lu/d;ILB/u;)V

    return-void
.end method
