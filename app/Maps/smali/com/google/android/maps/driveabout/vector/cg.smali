.class Lcom/google/android/maps/driveabout/vector/cg;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private b:F

.field private c:F

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 7

    const v6, 0x3e19999a

    const v5, 0x3bc49ba6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cg;->d:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->d:J

    neg-long v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    div-float/2addr v1, v5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/bI;

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/bI;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method declared-synchronized a(FF)V
    .locals 2

    const v1, -0x457ced91

    monitor-enter p0

    mul-float v0, p1, v1

    :try_start_0
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    mul-float v0, p2, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
