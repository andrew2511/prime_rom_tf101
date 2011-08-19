.class Lcom/google/android/maps/driveabout/vector/af;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private b:F

.field private c:F

.field private volatile d:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->b:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/af;->c:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/af;->b:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/af;->c:F

    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/bI;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/bF;FF)Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lcom/google/android/maps/driveabout/vector/bI;

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized a(FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->b:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:I
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

    const/4 v1, 0x2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
