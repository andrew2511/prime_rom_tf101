.class public abstract Lcom/google/googlenav/gesture/j;
.super Lcom/google/googlenav/gesture/c;


# instance fields
.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/c;-><init>(Lcom/google/googlenav/gesture/h;)V

    const v0, 0x3f490fdb

    iput v0, p0, Lcom/google/googlenav/gesture/j;->b:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/google/googlenav/gesture/j;->c:F

    const/high16 v0, 0x3e00

    iput v0, p0, Lcom/google/googlenav/gesture/j;->d:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/googlenav/gesture/j;->e:F

    return-void
.end method


# virtual methods
.method protected abstract a(F)F
.end method

.method protected abstract a(Lcom/google/googlenav/gesture/l;I)F
.end method

.method public a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;
    .locals 11

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/googlenav/gesture/e;->b:Lcom/google/googlenav/gesture/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v9, v4

    move v4, v0

    move-object v0, v9

    move v10, v1

    move v1, v3

    move v3, v10

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/l;->a()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/googlenav/gesture/j;->a(F)F

    move-result v6

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/l;->b()F

    move-result v7

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/l;->d()F

    move-result v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/google/googlenav/gesture/j;->b:F

    cmpl-float v6, v6, v8

    if-gez v6, :cond_1

    iget v6, p0, Lcom/google/googlenav/gesture/j;->c:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_2

    :cond_1
    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_8

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/google/googlenav/gesture/j;->a(Lcom/google/googlenav/gesture/l;I)F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/google/googlenav/gesture/j;->a(Lcom/google/googlenav/gesture/l;I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v2, v6

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/google/googlenav/gesture/j;->a(Lcom/google/googlenav/gesture/l;I)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Lcom/google/googlenav/gesture/j;->a(Lcom/google/googlenav/gesture/l;I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v3, v6

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move-object v0, p1

    goto :goto_1

    :cond_3
    add-float v0, v4, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/googlenav/gesture/j;->e:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/googlenav/gesture/l;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/google/googlenav/gesture/j;->b(Lcom/google/googlenav/gesture/l;I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/googlenav/gesture/j;->d:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/gesture/l;->e()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/gesture/j;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/google/googlenav/gesture/e;->b:Lcom/google/googlenav/gesture/e;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/googlenav/gesture/e;->c:Lcom/google/googlenav/gesture/e;

    goto/16 :goto_0

    :cond_8
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_2
.end method

.method protected abstract b(Lcom/google/googlenav/gesture/l;I)F
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
