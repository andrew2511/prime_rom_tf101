.class public Lcom/google/android/maps/driveabout/vector/bG;
.super Lcom/google/android/maps/driveabout/vector/aB;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bN;
.implements Lcom/google/android/maps/driveabout/vector/cA;


# instance fields
.field private final q:LG/Y;

.field private r:Z


# direct methods
.method constructor <init>(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/google/android/maps/driveabout/vector/aB;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/Q;LG/Q;FFZZLcom/google/android/maps/driveabout/vector/bn;Lcom/google/android/maps/driveabout/vector/bn;[Lcom/google/android/maps/driveabout/vector/bs;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bG;->q:LG/Y;

    return-void
.end method


# virtual methods
.method public a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->i:LG/Q;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public as_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->r:Z

    return-void
.end method

.method public at_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->r:Z

    return-void
.end method

.method public au_()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->i:LG/Q;

    return-object v0
.end method

.method public av_()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->j:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bG;->k:Lcom/google/android/maps/driveabout/vector/bn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bG;->l:Lcom/google/android/maps/driveabout/vector/bs;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bs;->a:Lcom/google/android/maps/driveabout/vector/aN;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aN;->b:Lcom/google/android/maps/driveabout/vector/aN;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bG;->k:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->b()F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    float-to-int v0, v0

    return v0
.end method

.method public aw_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->i:LG/Q;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    aget v1, v0, v5

    int-to-float v1, v1

    aget v0, v0, v6

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bG;->m:F

    add-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bG;->n:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bG;->o:F

    add-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bG;->p:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->q:LG/Y;

    invoke-virtual {v0}, LG/Y;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()LG/Y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bG;->q:LG/Y;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const-string v0, "s"

    return-object v0
.end method
