.class LaK/f;
.super Lcom/google/android/maps/driveabout/vector/M;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/M;-><init>(Lcom/google/android/maps/driveabout/vector/bI;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bF;)Lcom/google/android/maps/driveabout/vector/cm;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LaK/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LaK/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bI;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LaK/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    iget-object v2, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    iget-object v3, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v3

    iget-object v4, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v4

    iget-object v5, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    iput-object v0, p0, LaK/f;->a:Lcom/google/android/maps/driveabout/vector/bI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LaK/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
