.class Laa/i;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:LG/Q;

.field e:D

.field f:Z

.field g:D

.field h:D

.field i:Z

.field j:D

.field k:D

.field final l:LF/M;

.field final m:Lad/t;


# direct methods
.method constructor <init>(Landroid/location/Location;Laa/i;Lad/t;LF/M;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Laa/i;->m:Lad/t;

    iput-object p4, p0, Laa/i;->l:LF/M;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, LG/Q;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Laa/i;->a:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Laa/i;->b:D

    if-nez p2, :cond_0

    const-wide/high16 v0, 0x4000

    :goto_0
    iput-wide v0, p0, Laa/i;->c:D

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    move-wide v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    iput-object v0, p0, Laa/i;->d:LG/Q;

    iget-object v0, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v0}, Lad/t;->f()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    iput-wide v0, p0, Laa/i;->e:D

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Laa/i;->g:D

    if-nez p2, :cond_2

    iget-wide v0, p0, Laa/i;->g:D

    move-wide v5, v0

    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    double-to-float v5, v5

    iget-wide v6, p0, Laa/i;->g:D

    double-to-float v6, v6

    invoke-static {v5, v6}, LG/H;->a(FF)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v7}, Lad/t;->g()I

    move-result v7

    int-to-double v7, v7

    invoke-static/range {v0 .. v8}, Laa/i;->a(ZDDDD)D

    move-result-wide v0

    iput-wide v0, p0, Laa/i;->h:D

    iget-wide v0, p0, Laa/i;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Laa/i;->h:D

    :goto_3
    iput-wide v0, p0, Laa/i;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/i;->f:Z

    :goto_4
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Laa/i;->c:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Laa/i;->j:D

    const-wide/high16 v0, 0x4034

    const-wide/high16 v2, 0x4049

    iget-wide v4, p0, Laa/i;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Laa/i;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/i;->i:Z

    :goto_5
    return-void

    :cond_0
    iget-wide v0, p0, Laa/i;->b:D

    iget-wide v2, p2, Laa/i;->b:D

    sub-double/2addr v0, v2

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Laa/D;->a()F

    move-result v0

    float-to-double v0, v0

    move-wide v3, v0

    goto/16 :goto_1

    :cond_2
    iget-wide v0, p2, Laa/i;->g:D

    move-wide v5, v0

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x4059

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    iget-boolean v0, p2, Laa/i;->f:Z

    if-eqz v0, :cond_6

    iget-wide v0, p2, Laa/i;->g:D

    iput-wide v0, p0, Laa/i;->g:D

    iget-object v0, p2, Laa/i;->d:LG/Q;

    iget-object v1, p0, Laa/i;->d:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Laa/i;->a:D

    div-double/2addr v0, v2

    iget-wide v2, p2, Laa/i;->h:D

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Laa/i;->h:D

    iget-wide v0, p0, Laa/i;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget-wide v0, p0, Laa/i;->h:D

    :goto_6
    iput-wide v0, p0, Laa/i;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/i;->f:Z

    goto :goto_4

    :cond_5
    const-wide/high16 v0, 0x4059

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/i;->f:Z

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p2, Laa/i;->i:Z

    if-eqz v0, :cond_8

    iget-wide v0, p2, Laa/i;->j:D

    iput-wide v0, p0, Laa/i;->j:D

    const-wide/high16 v0, 0x4049

    iget-wide v2, p2, Laa/i;->k:D

    iget-wide v4, p0, Laa/i;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Laa/i;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/i;->i:Z

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/i;->i:Z

    goto :goto_5
.end method

.method static a(ZDDDD)D
    .locals 6

    const-wide v0, 0x4046800000000000L

    const-wide/high16 v2, 0x3ff0

    neg-double p3, p3

    const-wide/high16 v4, 0x403e

    div-double/2addr p3, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    sub-double p3, v2, p3

    mul-double/2addr p3, v0

    const-wide/high16 v0, 0x4010

    div-double/2addr p5, v0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034

    neg-double p0, p1

    const-wide/high16 v2, 0x4000

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    :goto_0
    add-double p2, p3, p5

    add-double/2addr p0, p2

    add-double/2addr p0, p7

    return-wide p0

    :cond_0
    move-wide p0, v0

    goto :goto_0
.end method


# virtual methods
.method a()D
    .locals 2

    iget-wide v0, p0, Laa/i;->a:D

    return-wide v0
.end method

.method a(D)D
    .locals 4

    iget-wide v0, p0, Laa/i;->j:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Laa/i;->k:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(LF/i;LG/Q;D)D
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Laa/i;->b(LF/i;LG/Q;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(LG/Q;DLG/i;)D
    .locals 10

    const-wide v8, 0x400ccccccccccccdL

    const-wide/high16 v6, 0x4000

    iget-object v0, p0, Laa/i;->d:LG/Q;

    invoke-virtual {p1, v0}, LG/Q;->c(LG/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Laa/i;->a:D

    div-double/2addr v0, v2

    const-wide v2, 0x3ffccccccccccccdL

    const/4 v4, 0x4

    invoke-virtual {p4, v4}, LG/i;->d(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p4}, LG/i;->e()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    add-double/2addr v2, v8

    :cond_0
    invoke-virtual {p4}, LG/i;->e()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    add-double/2addr v2, v8

    :cond_1
    const-wide/16 v4, 0x0

    sub-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Laa/i;->e:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget-boolean v2, p0, Laa/i;->f:Z

    if-eqz v2, :cond_2

    double-to-float v2, p2

    iget-wide v3, p0, Laa/i;->g:D

    double-to-float v3, v3

    invoke-static {v2, v3}, LG/H;->a(FF)F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, p0, Laa/i;->h:D

    div-double/2addr v2, v4

    neg-double v4, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/high16 v2, 0x3ff0

    goto :goto_0
.end method

.method a(LG/Q;D)LF/i;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Laa/i;->l:LF/M;

    if-eqz v1, :cond_2

    iget-wide v1, p0, Laa/i;->a:D

    iget-wide v3, p0, Laa/i;->k:D

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    iget-object v5, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v5}, Lad/t;->f()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    iget-object v3, p0, Laa/i;->l:LF/M;

    invoke-virtual {v3, p1, v1, v2, v7}, LF/M;->a(LG/Q;DZ)[LF/i;

    move-result-object v1

    const-wide/high16 v2, -0x10

    move-object v4, v0

    move v0, v7

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    aget-object v5, v1, v0

    invoke-virtual {p0, v5, p1, p2, p3}, Laa/i;->b(LF/i;LG/Q;D)D

    move-result-wide v5

    cmpl-double v7, v5, v2

    if-lez v7, :cond_0

    aget-object v2, v1, v0

    move-object v4, v2

    move-wide v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :cond_2
    return-object v0
.end method

.method b(D)D
    .locals 4

    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v2}, Lad/t;->h()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method b(LF/i;LG/Q;D)D
    .locals 6

    invoke-virtual {p1}, LF/i;->b()LG/Q;

    move-result-object v0

    invoke-virtual {v0, p2}, LG/Q;->c(LG/Q;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Laa/i;->a:D

    iget-object v4, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v4}, Lad/t;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-virtual {p1}, LF/i;->c()D

    move-result-wide v2

    double-to-float v2, v2

    double-to-float v3, p3

    invoke-static {v2, v3}, LG/H;->a(FF)F

    move-result v2

    iget-object v3, p0, Laa/i;->m:Lad/t;

    invoke-virtual {v3}, Lad/t;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, -0x4020

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationModel[mTimeSinceLastUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/i;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionMean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laa/i;->d:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/i;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceMeanMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laa/i;->i:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Laa/i;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laa/i;->i:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Laa/i;->k:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingMeanDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/i;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingStdDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Laa/i;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "--"

    goto :goto_0

    :cond_1
    const-string v1, "--"

    goto :goto_1
.end method
