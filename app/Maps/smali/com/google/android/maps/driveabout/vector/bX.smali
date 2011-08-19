.class public Lcom/google/android/maps/driveabout/vector/bX;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/bI;

.field private c:Lcom/google/android/maps/driveabout/vector/cm;

.field private final d:I

.field private final e:J

.field private f:I

.field private final g:Lac/p;

.field private h:F


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cm;IZF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->g:Lac/p;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lcom/google/android/maps/driveabout/vector/bI;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->g:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->e:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:I

    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->h:F

    :goto_1
    return-void

    :cond_0
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:I

    goto :goto_0

    :cond_1
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/bX;->h:F

    goto :goto_1
.end method

.method private a(F)F
    .locals 5

    const/high16 v4, 0x3f80

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bX;->g:Lac/p;

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:I

    if-nez v3, :cond_2

    move v1, v5

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    instance-of v2, v2, Lcom/google/android/maps/driveabout/vector/T;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/T;

    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/T;->a()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/T;->a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/T;->c()I

    move-result v0

    :cond_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    :goto_1
    return-object v0

    :cond_2
    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/bX;->e:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bX;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bX;->c:Lcom/google/android/maps/driveabout/vector/cm;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cm;->b()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bX;->b:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bI;)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bX;->h:F

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bI;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lcom/google/android/maps/driveabout/vector/bI;

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    move-object v0, p0

    goto :goto_1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    return v0
.end method
