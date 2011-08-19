.class public LT/a;
.super LT/d;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(LT/c;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LT/a;->a:J

    iput-wide v2, p0, LT/a;->b:J

    iput-wide v2, p0, LT/a;->c:J

    iput-wide v2, p0, LT/a;->d:J

    const/4 v0, -0x1

    iput v0, p0, LT/a;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LT/a;->i:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, LT/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, LT/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LT/a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, LT/a;->h:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, LT/a;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, LT/a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, LT/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LT/a;->d:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LT/a;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->a(LT/b;)V

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, LT/a;->b:J

    iget-wide v2, p0, LT/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LT/a;->d:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, LT/a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LT/a;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, LT/a;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->a(LT/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, LT/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT/a;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->c(LT/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LT/a;->d:J

    iget v0, p0, LT/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, LT/a;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LT/a;->d:J

    iget v0, p0, LT/a;->h:I
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

.method public declared-synchronized e()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LT/a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LT/a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LT/a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LT/a;->d:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, LT/d;->g()V

    iget-object v0, p0, LT/a;->e:LT/c;

    invoke-virtual {v0, p0}, LT/c;->a(LT/b;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, LT/a;->h:I

    if-lez v0, :cond_1

    iget v0, p0, LT/a;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LT/a;->h:I

    :cond_1
    iget v0, p0, LT/a;->h:I

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LT/a;->d:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget-boolean v0, p0, LT/a;->i:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, LT/a;->d:J

    iget-wide v2, p0, LT/a;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LT/a;->d:J

    goto :goto_0

    :cond_3
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, LT/a;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LT/a;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
