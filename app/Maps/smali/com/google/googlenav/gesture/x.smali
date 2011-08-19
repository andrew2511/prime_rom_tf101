.class public Lcom/google/googlenav/gesture/x;
.super Lcom/google/googlenav/gesture/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/c;-><init>(Lcom/google/googlenav/gesture/h;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3e00

    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->c()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v1

    invoke-virtual {p0, v5}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v5}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v2

    invoke-virtual {p0, v5}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v3

    invoke-virtual {p0, v7}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v7}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v4

    invoke-virtual {p0, v7}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->d()F

    move-result v5

    div-float/2addr v1, v5

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->d()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v0

    div-float v0, v1, v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/googlenav/gesture/e;->c:Lcom/google/googlenav/gesture/e;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/gesture/x;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/gesture/h;->b(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(Lcom/google/googlenav/gesture/w;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/gesture/x;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/gesture/h;->c(Lcom/google/googlenav/gesture/i;ZZ)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/gesture/x;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/gesture/h;->a(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    return v0
.end method
