.class Lcom/google/googlenav/appwidget/traffic/j;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:J

.field final c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(IJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I

    iput p1, p0, Lcom/google/googlenav/appwidget/traffic/j;->a:I

    iput-wide p2, p0, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    iput p4, p0, Lcom/google/googlenav/appwidget/traffic/j;->c:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J

    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->e:J

    iput p3, p0, Lcom/google/googlenav/appwidget/traffic/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
