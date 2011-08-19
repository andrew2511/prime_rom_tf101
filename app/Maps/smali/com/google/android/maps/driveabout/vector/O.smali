.class public Lcom/google/android/maps/driveabout/vector/O;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:F

.field private b:Lcom/google/android/maps/driveabout/vector/bY;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4296

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->a:F

    return-void
.end method

.method public static b(F)F
    .locals 5

    const/high16 v4, 0x4160

    const/high16 v2, 0x4120

    const/high16 v3, 0x41f0

    const/high16 v0, 0x4180

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4296

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, v4

    if-lez v0, :cond_1

    const/high16 v0, 0x4000

    const/high16 v1, 0x4234

    sub-float v2, p0, v4

    mul-float/2addr v2, v3

    div-float v0, v2, v0

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    cmpl-float v0, p0, v2

    if-lez v0, :cond_2

    const/high16 v0, 0x4080

    const/high16 v1, 0x4170

    sub-float v2, p0, v2

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/O;->a:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/O;->b(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v1, 0x41a8

    const/high16 v2, 0x4000

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/maps/driveabout/vector/bY;->a(LG/Q;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/bY;->h()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v1}, LG/Q;->h(LG/Q;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    :goto_1
    return-object v0

    :cond_0
    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v1}, LG/Q;->h(LG/Q;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v1}, LG/Q;->h(LG/Q;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_1

    :cond_4
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/bY;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/bY;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/O;->a:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bY;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/bY;

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->a:F

    return v0
.end method
