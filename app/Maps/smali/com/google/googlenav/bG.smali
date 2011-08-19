.class public Lcom/google/googlenav/bG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ba;


# instance fields
.field private final a:Law/e;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bG;->a:Law/e;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/bo;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->h(Law/e;)Lcom/google/googlenav/bo;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Law/e;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/by;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->g(Law/e;)Lcom/google/googlenav/by;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    return v0
.end method

.method public j()Lcom/google/googlenav/bo;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->i()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->i()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bG;->a(I)Lcom/google/googlenav/bo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0x12

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Lcom/google/googlenav/bt;
    .locals 3

    const/16 v2, 0xd

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/bG;->a:Law/e;

    invoke-virtual {v1, v2}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->f(Law/e;)Lcom/google/googlenav/bt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->a(Law/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->a(Law/e;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bG;->a:Law/e;

    return-object v0
.end method
