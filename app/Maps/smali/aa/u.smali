.class public Laa/u;
.super Laa/w;


# instance fields
.field private a:Z

.field private d:J

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Laa/C;)V
    .locals 1

    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    const/high16 v0, -0x4080

    iput v0, p0, Laa/u;->e:F

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Laa/u;->f:F

    iput v0, p0, Laa/u;->g:F

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 11

    const/4 v10, 0x0

    const v7, 0x3c8efa35

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Laa/u;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Laa/u;->d:J

    invoke-virtual {v0}, Lad/t;->k()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-direct {p0}, Laa/u;->a()V

    const/high16 v0, -0x4080

    iput v0, p0, Laa/u;->e:F

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    iput v3, p0, Laa/u;->e:F

    :goto_1
    invoke-virtual {v0}, Lad/t;->i()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c23d70a

    mul-float/2addr v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_3

    invoke-direct {p0}, Laa/u;->a()V

    move v0, v9

    goto :goto_0

    :cond_1
    iget v3, p0, Laa/u;->e:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2

    iget v3, p0, Laa/u;->e:F

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Laa/u;->a()V

    move v0, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Laa/u;->a()V

    move v0, v10

    goto :goto_0

    :cond_4
    cmpl-float v5, v3, v6

    if-lez v5, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    mul-float/2addr v5, v3

    mul-float/2addr v3, v6

    :goto_2
    invoke-virtual {v0}, Lad/t;->j()I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Laa/u;->f:F

    neg-long v7, v1

    long-to-float v7, v7

    div-float/2addr v7, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Laa/u;->f:F

    iget v5, p0, Laa/u;->g:F

    neg-long v1, v1

    long-to-float v1, v1

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    iput v0, p0, Laa/u;->g:F

    iget v0, p0, Laa/u;->f:F

    iget v1, p0, Laa/u;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Laa/u;->g:F

    iget v2, p0, Laa/u;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, v4, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    move v0, v9

    goto/16 :goto_0

    :cond_5
    move v0, v10

    goto/16 :goto_0

    :cond_6
    move v3, v6

    move v5, v6

    goto :goto_2
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    new-instance v2, Laa/E;

    invoke-direct {v2, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    const-string v1, "driveabout_bearing_noise_reduction"

    invoke-virtual {v2, v1}, Laa/E;->setProvider(Ljava/lang/String;)V

    instance-of v1, p1, Laa/E;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Laa/E;

    move-object v1, v0

    invoke-virtual {v1}, Laa/E;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Laa/E;

    move-object v1, v0

    invoke-virtual {v1}, Laa/E;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Laa/u;->c:Laa/C;

    invoke-interface {v1, v2}, Laa/C;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Laa/u;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Laa/u;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Laa/E;->removeBearing()V

    :cond_2
    invoke-virtual {v2}, Laa/E;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Laa/u;->a:Z

    :cond_3
    iget-object v1, p0, Laa/u;->c:Laa/C;

    invoke-interface {v1, v2}, Laa/C;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method
