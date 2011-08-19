.class public abstract Lcom/google/googlenav/ui/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/X;


# instance fields
.field protected a:Lf/H;

.field protected b:Lcom/google/googlenav/ui/J;

.field protected final c:Lf/n;

.field private d:Z

.field private e:I

.field private final f:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/am;->d:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    new-instance v0, Lf/n;

    invoke-direct {v0}, Lf/n;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/am;->c:Lf/n;

    return-void
.end method

.method private a(Lf/P;)I
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/am;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v1

    invoke-virtual {v1}, Lf/K;->i()Lf/K;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lf/H;->a(Lf/K;Z)Lf/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lf/m;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lf/m;->d()J

    move-result-wide v1

    long-to-int v1, v1

    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lf/m;->a(J)V

    move v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/googlenav/ui/am;->e:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private a(Lf/P;Lf/m;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lf/P;->l()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lf/m;->b()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/am;->a(Lf/P;Lf/m;)Lk/l;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p3}, Lf/P;->a(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Lf/P;->a(Lk/l;IZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lf/P;->l()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lf/P;->l()I

    move-result v0

    if-eq v0, p3, :cond_1

    invoke-virtual {p1}, Lf/P;->k()V

    invoke-virtual {p1}, Lf/P;->o()V

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private b(Lf/P;Z)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/am;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lf/K;->e()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lf/K;->e()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v0

    invoke-virtual {v0}, Lf/K;->i()Lf/K;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {v1, v0, p2}, Lf/H;->a(Lf/K;Z)Lf/m;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/am;->a(Lf/P;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/am;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lf/P;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lf/P;->m()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lf/P;->l()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/am;->a(Lf/P;Lf/m;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lf/P;Lf/m;)Lk/l;
.end method

.method public a(Lcom/google/googlenav/ui/bA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lf/H;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/am;->d:Z

    return-void
.end method

.method protected abstract a()Z
.end method

.method public a(Lf/P;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/am;->b(Lf/P;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lf/v;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lf/v;->g()[Lf/K;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lf/v;->a(Lf/K;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {v3}, Lf/K;->i()Lf/K;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Lf/H;->a(Lf/K;Z)Lf/m;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lf/m;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/bA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lf/v;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lf/v;->g()[Lf/K;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lf/v;->a(Lf/K;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {v3}, Lf/K;->i()Lf/K;

    move-result-object v3

    invoke-virtual {v4, v3, v7}, Lf/H;->a(Lf/K;Z)Lf/m;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lf/m;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lf/m;->f()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lf/m;->d()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {v0}, Lf/H;->a()V

    return-void
.end method

.method public d()Lcom/google/googlenav/ui/J;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    return-object v0
.end method

.method public e()V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [[Lcom/google/googlenav/ui/r;

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v11

    move v4, v11

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->f:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bA;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bA;->M_()[Lcom/google/googlenav/ui/r;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v5, v0

    move v6, v11

    move v7, v11

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v8, v0, v6

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    array-length v5, v0

    if-eq v5, v7, :cond_4

    new-array v5, v7, [Lcom/google/googlenav/ui/r;

    array-length v6, v0

    move v7, v11

    move v8, v11

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v9, v0, v7

    if-eqz v9, :cond_2

    add-int/lit8 v9, v8, 0x1

    aget-object v10, v0, v7

    aput-object v10, v5, v8

    move v8, v9

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v5

    :cond_4
    aput-object v0, v1, v3

    array-length v0, v0

    add-int/2addr v0, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    :goto_4
    return-void

    :cond_6
    new-array v0, v4, [Lcom/google/googlenav/ui/r;

    move v2, v11

    move v3, v11

    :goto_5
    array-length v4, v1

    if-ge v2, v4, :cond_8

    aget-object v4, v1, v2

    if-eqz v4, :cond_7

    aget-object v4, v1, v2

    aget-object v5, v1, v2

    array-length v5, v5

    invoke-static {v4, v11, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v1, v2

    array-length v4, v4

    add-int/2addr v3, v4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/google/googlenav/ui/J;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/J;-><init>([Lcom/google/googlenav/ui/r;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    goto :goto_4

    :cond_9
    move v0, v4

    goto :goto_3
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/J;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/J;->a()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/googlenav/ui/am;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->a:Lf/H;

    invoke-virtual {v0}, Lf/H;->b()V

    return-void
.end method
