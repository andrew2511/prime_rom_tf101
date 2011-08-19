.class public Lcom/google/android/maps/driveabout/vector/cv;
.super Lcom/google/android/maps/driveabout/vector/aV;


# instance fields
.field private final c:F

.field private d:LG/F;

.field private e:LG/F;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aV;-><init>(I)V

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->t()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->a(D)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    return-void
.end method

.method public static a(D)F
    .locals 2

    const-wide v0, 0x3ff19999a0000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x3f15c01a

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:LG/F;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:LG/F;

    invoke-virtual {v0, v1}, LG/F;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cv;->a_(Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v2

    invoke-static {v1, v2}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->a(LG/F;Ljava/util/ArrayList;)V

    :cond_1
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->d:LG/F;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->f:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method a(LG/F;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/w;

    invoke-virtual {p0}, LG/w;->i()LG/S;

    move-result-object v3

    invoke-virtual {p1, v3}, LG/F;->b(LG/z;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-lt v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected a_(Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->b:Lcom/google/android/maps/driveabout/vector/R;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cv;->a:I

    int-to-byte v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/R;->a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/l;->a(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    float-to-int v0, v0

    goto :goto_0
.end method

.method public b(LG/Q;)F
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aV;->b(LG/Q;)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->c:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:LG/F;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:LG/F;

    invoke-virtual {v0, v1}, LG/F;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->g:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cv;->a_(Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v2

    invoke-static {v1, v2}, LG/w;->b(LG/R;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cv;->a(LG/F;Ljava/util/ArrayList;)V

    :cond_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->e:LG/F;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cv;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cv;->g:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
