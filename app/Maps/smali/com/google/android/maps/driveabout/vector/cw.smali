.class public Lcom/google/android/maps/driveabout/vector/cw;
.super Lcom/google/android/maps/driveabout/vector/aV;


# instance fields
.field private c:LG/F;

.field private final d:Ljava/util/List;

.field private final e:LG/Q;

.field private f:Lcom/google/android/maps/driveabout/vector/bF;

.field private g:LG/F;

.field private h:F

.field private final i:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aV;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:LG/Q;

    mul-int v0, p2, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->i:F

    return-void
.end method

.method private a(LG/w;LG/Q;Z)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->g:LG/F;

    invoke-virtual {p1}, LG/w;->i()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/F;->b(LG/z;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    const/high16 v1, 0x2000

    shr-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:LG/Q;

    invoke-virtual {p1}, LG/w;->f()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, LG/w;->g()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, LG/Q;->d(II)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:LG/Q;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/bF;

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->b(FF)F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->h:F

    mul-float/2addr v2, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->i:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->b(LG/w;LG/Q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/maps/driveabout/vector/cw;->a(LG/w;LG/Q;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->c:LG/F;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->c:LG/F;

    invoke-virtual {v1, v0}, LG/F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, LG/F;->c()LG/z;

    move-result-object v0

    check-cast v0, LG/v;

    invoke-virtual {v0}, LG/v;->g()LG/Q;

    move-result-object v2

    invoke-virtual {v0}, LG/v;->f()LG/Q;

    move-result-object v0

    invoke-virtual {v2, v0}, LG/Q;->c(LG/Q;)F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bF;->c(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->g:LG/F;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->h:F

    invoke-virtual {v1}, LG/F;->a()LG/R;

    move-result-object v2

    invoke-static {v2, v0}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v5

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v4

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/cw;->a(LG/w;LG/Q;Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->c:LG/F;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:Ljava/util/List;

    goto :goto_0
.end method
