.class public Lcom/google/android/maps/driveabout/vector/V;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/V;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0x14

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->c:I

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/V;->g:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/V;->h:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3e6b8520

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->c:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/V;->d(I)V

    :cond_0
    :goto_0
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/V;->i:I

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/V;->g:I

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/V;->h:I

    return-void

    :cond_1
    const v1, 0x3ebd70a4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->c:I

    int-to-float v0, v0

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/V;->d(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/V;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/V;->b:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/V;->d:Z

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    if-eqz v1, :cond_0

    const v1, 0x88b8

    if-gt v0, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/V;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/V;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/V;->d:Z

    if-eqz v1, :cond_3

    move v1, v4

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/V;->e:Z

    if-eqz v2, :cond_0

    add-int/lit16 v1, v1, 0x1f4

    :cond_0
    sub-int/2addr v1, v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/V;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/V;->c(I)V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/V;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/V;->e:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/V;->d:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/V;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->g:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->h:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->i:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/V;->e()V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/V;->c:I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/V;->a:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/V;->e:Z

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/V;->f:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(I)V
    .locals 2

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method d()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
