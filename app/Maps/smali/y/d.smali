.class public abstract Ly/d;
.super Ly/l;

# interfaces
.implements Lp/n;


# instance fields
.field private a:J

.field private b:J

.field protected c:Ly/p;

.field protected d:J

.field protected e:I

.field private f:Z

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lag/g;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ly/l;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Ly/d;->d:J

    const/4 v0, 0x4

    iput v0, p0, Ly/d;->e:I

    iput-wide v2, p0, Ly/d;->a:J

    iput-wide v2, p0, Ly/d;->b:J

    iput-wide v2, p0, Ly/d;->g:J

    iput-wide v2, p0, Ly/d;->h:J

    iput-boolean v4, p0, Ly/d;->i:Z

    iput-boolean v4, p0, Ly/d;->j:Z

    invoke-static {p0}, Lag/g;->a(Ljava/lang/Object;)Lag/g;

    move-result-object v0

    iput-object v0, p0, Ly/d;->l:Lag/g;

    return-void
.end method

.method private a()V
    .locals 4

    iget-wide v0, p0, Ly/d;->b:J

    iget-wide v2, p0, Ly/d;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ly/d;->b:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ly/p;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ly/d;->c:Ly/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Z
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ly/d;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ly/d;->g:J

    iget-wide v2, p0, Ly/d;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    move v0, v4

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Ly/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ly/d;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ly/d;->a:J

    iget-boolean v0, p0, Ly/d;->f:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ly/d;->a:J

    iput-wide v0, p0, Ly/d;->b:J

    :goto_0
    invoke-direct {p0}, Ly/d;->a()V

    iget-wide v0, p0, Ly/d;->d:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Ly/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    :try_start_1
    iput-wide v0, p0, Ly/d;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Ly/d;->a:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Ly/d;->b:J

    invoke-direct {p0}, Ly/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract d()V
.end method

.method public declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ly/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(J)V
    .locals 2

    iget-boolean v0, p0, Ly/d;->f:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    iput-wide v0, p0, Ly/d;->a:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Ly/d;->b:J

    :cond_0
    return-void
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/io/InputStream;
.end method

.method public declared-synchronized i()Ly/p;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly/d;->c:Ly/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Ly/d;->f:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/d;->f:Z

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/d;->j:Z

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Ly/d;->j:Z

    return v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ly/d;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ly/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Ly/d;->a:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Ly/d;->b:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Ly/d;->h:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public s()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Ly/d;->l:Lag/g;

    const-string v1, "updateSubmit"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-wide v0, p0, Ly/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ly/d;->g:J

    :cond_0
    invoke-virtual {p0}, Ly/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ly/d;->q()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Ly/d;->h:J

    :cond_1
    return-void
.end method

.method public declared-synchronized t()Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ly/d;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

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

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Ly/d;->i:Z

    return v0
.end method
