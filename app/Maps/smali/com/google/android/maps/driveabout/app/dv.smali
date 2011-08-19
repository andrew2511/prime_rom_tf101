.class public abstract Lcom/google/android/maps/driveabout/app/dv;
.super Ljava/lang/Object;


# instance fields
.field protected i:Lcom/google/android/maps/driveabout/vector/bF;

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/maps/driveabout/vector/bI;F)Lcom/google/android/maps/driveabout/vector/bI;
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;FIIF)Lcom/google/android/maps/driveabout/vector/bI;
    .locals 6

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/dv;->a(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    const/high16 v2, 0x4000

    mul-float/2addr v2, p2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bF;->c(FF)F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/bI;LF/y;Z)Lcom/google/android/maps/driveabout/vector/bI;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/bI;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;LG/o;IIF)Lcom/google/android/maps/driveabout/vector/bI;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/bI;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/av;LF/y;FIIF)Lcom/google/android/maps/driveabout/vector/bI;
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/dv;->j:I

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/bI;IIF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v0

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bF;->a(IIF)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dv;->i:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/dv;->k:I

    return-void
.end method
