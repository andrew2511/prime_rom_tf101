.class public Lcom/google/googlenav/gesture/s;
.super Lcom/google/googlenav/gesture/c;


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/c;-><init>(Lcom/google/googlenav/gesture/h;)V

    iput-boolean p2, p0, Lcom/google/googlenav/gesture/s;->b:Z

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;
    .locals 5

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/googlenav/gesture/e;->b:Lcom/google/googlenav/gesture/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->a()F

    move-result v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->a()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/gesture/s;->a(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e32b8c2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3dcccccd

    move v1, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->b()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, Lcom/google/googlenav/gesture/e;->b:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_3
    const v0, 0x3e4ccccd

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/googlenav/gesture/e;->c:Lcom/google/googlenav/gesture/e;

    goto :goto_0
.end method

.method protected b(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/gesture/s;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/googlenav/gesture/s;->b:Z

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

    iget-object v0, p0, Lcom/google/googlenav/gesture/s;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/googlenav/gesture/s;->b:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/gesture/h;->c(Lcom/google/googlenav/gesture/i;ZZ)V

    return-void
.end method

.method protected f(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/gesture/s;->a:Lcom/google/googlenav/gesture/h;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/googlenav/gesture/s;->b:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/googlenav/gesture/h;->a(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    return v0
.end method
