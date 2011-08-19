.class public LB/t;
.super LB/s;


# instance fields
.field private final d:Lu/i;

.field private final e:Lu/i;


# direct methods
.method public constructor <init>(Lu/e;Lu/i;Lu/i;ILjava/util/List;)V
    .locals 6

    sget-object v1, LB/h;->c:LB/h;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LB/s;-><init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V

    iput-object p2, p0, LB/t;->d:Lu/i;

    iput-object p3, p0, LB/t;->e:Lu/i;

    invoke-virtual {p0}, LB/t;->n()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/t;->e:Lu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, LB/t;->e:Lu/i;

    invoke-virtual {v0}, Lu/i;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/t;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ai_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/t;->d:Lu/i;

    invoke-virtual {v0}, Lu/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq_()Lf/h;
    .locals 1

    iget-object v0, p0, LB/t;->d:Lu/i;

    invoke-virtual {v0}, Lu/i;->d()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, LB/t;->e:Lu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, LB/t;->e:Lu/i;

    invoke-virtual {v0}, Lu/i;->d()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/t;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->h()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, LB/t;->d:Lu/i;

    invoke-virtual {v0}, Lu/i;->b()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, LB/t;->d:Lu/i;

    invoke-virtual {v1}, Lu/i;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, LB/t;->e:Lu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, LB/t;->e:Lu/i;

    invoke-virtual {v0}, Lu/i;->b()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/t;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, LB/u;->a(Law/e;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public m()I
    .locals 3

    const/16 v2, 0xf

    iget-object v0, p0, LB/t;->d:Lu/i;

    invoke-virtual {v0}, Lu/i;->b()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, LB/t;->d:Lu/i;

    invoke-virtual {v1}, Lu/i;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, LB/u;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LB/t;->y()I

    move-result v0

    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 1

    invoke-virtual {p0}, LB/t;->A()V

    invoke-virtual {p0}, LB/t;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB/t;->D()F

    move-result v0

    invoke-virtual {p0, v0}, LB/t;->a(F)V

    :cond_0
    return-void
.end method
