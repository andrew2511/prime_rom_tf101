.class public Lcom/google/googlenav/gesture/y;
.super Lcom/google/googlenav/gesture/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/c;-><init>(Lcom/google/googlenav/gesture/h;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;
    .locals 3

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/google/googlenav/gesture/e;->b:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3db2b8c2

    move v1, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->a()F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/gesture/y;->a(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_3
    const v0, 0x3e32b8c2

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->d()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->b()F

    move-result v1

    div-float v0, v1, v0

    const/high16 v1, 0x3f40

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google/googlenav/gesture/e;->c:Lcom/google/googlenav/gesture/e;

    goto :goto_0
.end method

.method protected b(Lcom/google/googlenav/gesture/w;)Z
    .locals 1

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/gesture/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/y;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->e(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    return v0
.end method

.method protected d(Lcom/google/googlenav/gesture/w;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/y;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->f(Lcom/google/googlenav/gesture/w;)V

    return-void
.end method

.method protected f(Lcom/google/googlenav/gesture/w;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/y;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->d(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    return v0
.end method
