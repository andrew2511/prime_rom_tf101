.class public LX;
.super LV;


# instance fields
.field private a:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(LW;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LX;-><init>(LW;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(LW;Ljava/lang/Runnable;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, LV;-><init>(LW;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LX;->a:J

    iput-wide v2, p0, LX;->c:J

    iput-wide v2, p0, LX;->d:J

    iput-wide v2, p0, LX;->e:J

    const/4 v0, -0x1

    iput v0, p0, LX;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LX;->g:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, LX;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, LX;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX;->b:LW;

    invoke-virtual {v0, p0}, LW;->c(LU;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LX;->e:J

    iget v0, p0, LX;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, LX;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LX;->e:J

    iget v0, p0, LX;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LX;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, LX;->f:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, LX;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, LX;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->h()La;

    move-result-object v0

    invoke-interface {v0}, La;->a()J

    move-result-wide v0

    iget-wide v2, p0, LX;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LX;->e:J

    :goto_0
    iget-object v0, p0, LX;->b:LW;

    invoke-virtual {v0, p0}, LW;->a(LU;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, LX;->c:J

    iget-wide v2, p0, LX;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LX;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, LX;->b:LW;

    invoke-virtual {v0, p0}, LW;->a(LX;)V

    return-void
.end method

.method protected final g()V
    .locals 6

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LX;->d:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LX;->e:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, LV;->g()V

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, LX;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, LX;->b:LW;

    invoke-virtual {v0, p0}, LW;->a(LU;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, LX;->f:I

    if-lez v0, :cond_2

    iget v0, p0, LX;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LX;->f:I

    :cond_2
    iget v0, p0, LX;->f:I

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LX;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->h()La;

    move-result-object v0

    invoke-interface {v0}, La;->a()J

    move-result-wide v0

    iget-wide v2, p0, LX;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LX;->e:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LX;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
