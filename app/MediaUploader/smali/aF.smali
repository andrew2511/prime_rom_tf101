.class public abstract LaF;
.super Lat;

# interfaces
.implements Lak;


# instance fields
.field private a:LaG;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lat;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, LaF;->b:J

    const/4 v0, 0x1

    iput v0, p0, LaF;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final declared-synchronized a(LaG;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LaF;->a:LaG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b()Ljava/io/InputStream;
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, LaF;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c()V
.end method

.method public declared-synchronized e()J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LaF;->b:J

    iget-wide v2, p0, LaF;->b:J

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    iput-wide v2, p0, LaF;->b:J
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
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LaF;->c:I

    sub-int v1, v0, v2

    iput v1, p0, LaF;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    move v0, v2

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

.method public final declared-synchronized i()LaG;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaF;->a:LaG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
