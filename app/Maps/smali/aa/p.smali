.class public Laa/p;
.super Laa/w;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final d:Lac/p;

.field private e:Laa/E;

.field private f:J

.field private final g:[F

.field private h:I

.field private i:Lad/t;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Laa/C;Landroid/os/Handler;Lac/p;)V
    .locals 2

    const-string v0, "da_tunnel_heartbeat"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    const/4 v0, 0x0

    iput v0, p0, Laa/p;->h:I

    new-instance v0, Laa/e;

    invoke-direct {v0, p0}, Laa/e;-><init>(Laa/p;)V

    iput-object v0, p0, Laa/p;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Laa/p;->a:Landroid/os/Handler;

    iput-object p3, p0, Laa/p;->d:Lac/p;

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Laa/p;->g:[F

    iget-object v0, p0, Laa/p;->g:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method static a([F)F
    .locals 8

    const/4 v2, 0x0

    const/high16 v6, -0x4080

    const/4 v0, 0x0

    array-length v1, p0

    move v3, v2

    move v7, v0

    move v0, v2

    move v2, v7

    :goto_0
    if-ge v0, v1, :cond_1

    aget v4, p0, v0

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_0

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ge v3, v0, :cond_2

    move v0, v6

    :goto_1
    return v0

    :cond_2
    int-to-float v0, v3

    div-float v0, v2, v0

    goto :goto_1
.end method

.method static a(Laa/E;F)Laa/E;
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    invoke-virtual {p0}, Laa/E;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, LG/Q;->a(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Laa/E;->i()LF/i;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, LF/i;->a()LF/M;

    move-result-object v2

    invoke-virtual {v2, v1}, LF/M;->a(LF/i;)D

    move-result-wide v3

    double-to-float v1, v3

    add-float/2addr v0, v1

    invoke-virtual {v2}, LF/M;->m()LG/m;

    move-result-object v1

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, LF/M;->a(D)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, LG/m;->b()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, LG/m;->a(I)LG/Q;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, LG/m;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {v2, v3}, LF/M;->b(I)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v4, v1}, LG/Q;->c(LG/Q;)F

    move-result v2

    div-float/2addr v0, v2

    cmpg-float v2, v0, v6

    if-gez v2, :cond_4

    move v0, v6

    :cond_3
    :goto_1
    invoke-virtual {v4, v1, v0}, LG/Q;->a(LG/Q;F)LG/Q;

    move-result-object v0

    new-instance v2, Laa/E;

    invoke-direct {v2, p0}, Laa/E;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0}, LG/Q;->b()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Laa/E;->setLatitude(D)V

    invoke-virtual {v0}, LG/Q;->d()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Laa/E;->setLongitude(D)V

    invoke-static {v4, v1}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Laa/E;->setBearing(F)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    cmpl-float v2, v0, v7

    if-lez v2, :cond_3

    move v0, v7

    goto :goto_1
.end method

.method public static a(Landroid/location/Location;)Z
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Laa/E;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p0, Laa/E;

    invoke-virtual {p0}, Laa/E;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laa/E;->g()LG/i;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LG/i;->d(I)Z

    move-result v0

    goto :goto_0
.end method

.method private d()J
    .locals 4

    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Laa/p;->i:Lad/t;

    invoke-virtual {v2}, Lad/t;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Laa/p;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/p;->a:Landroid/os/Handler;

    iget-object v1, p0, Laa/p;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method a(J)V
    .locals 2

    iget-object v0, p0, Laa/p;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/p;->a:Landroid/os/Handler;

    iget-object v1, p0, Laa/p;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Laa/p;->a:Landroid/os/Handler;

    iget-object v1, p0, Laa/p;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    iput-object v0, p0, Laa/p;->i:Lad/t;

    invoke-direct {p0}, Laa/p;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laa/p;->a(J)V

    return-void
.end method

.method c()V
    .locals 6

    iget-object v0, p0, Laa/p;->e:Laa/E;

    invoke-static {v0}, Laa/p;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laa/p;->g:[F

    invoke-static {v0}, Laa/p;->a([F)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Laa/p;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Laa/p;->d:Lac/p;

    invoke-interface {v1}, Lac/p;->c()J

    move-result-wide v1

    const/4 v3, 0x0

    iget-wide v4, p0, Laa/p;->f:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Laa/p;->e:Laa/E;

    invoke-static {v4, v3}, Laa/p;->a(Laa/E;F)Laa/E;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Laa/p;->d:Lac/p;

    invoke-interface {v4}, Lac/p;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Laa/E;->setTime(J)V

    invoke-virtual {v3, v1, v2}, Laa/E;->a(J)V

    iget-object v1, p0, Laa/p;->i:Lad/t;

    invoke-virtual {v1}, Lad/t;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Laa/E;->setAccuracy(F)V

    invoke-virtual {v3, v0}, Laa/E;->setSpeed(F)V

    invoke-super {p0, v3}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    instance-of v0, p1, Laa/E;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Laa/E;

    invoke-virtual {p1}, Laa/E;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Laa/E;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    iput-object v0, p0, Laa/p;->i:Lad/t;

    invoke-direct {p0}, Laa/p;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Laa/p;->a(J)V

    iput-object p1, p0, Laa/p;->e:Laa/E;

    iget-object v0, p0, Laa/p;->d:Lac/p;

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iput-wide v0, p0, Laa/p;->f:J

    iget-object v0, p0, Laa/p;->g:[F

    iget v1, p0, Laa/p;->h:I

    invoke-virtual {p1}, Laa/E;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Laa/E;->getSpeed()F

    move-result v2

    :goto_1
    aput v2, v0, v1

    iget v0, p0, Laa/p;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Laa/p;->h:I

    goto :goto_0

    :cond_2
    const/high16 v2, -0x4080

    goto :goto_1
.end method
