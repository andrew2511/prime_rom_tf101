.class Lam/h;
.super Lad/i;


# instance fields
.field final synthetic a:Lam/m;


# direct methods
.method constructor <init>(Lam/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lam/h;->a:Lam/m;

    invoke-direct {p0, p2}, Lad/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aA_()V
    .locals 7

    const-wide/16 v5, 0xbb8

    :cond_0
    :goto_0
    iget-object v0, p0, Lam/h;->a:Lam/m;

    invoke-static {v0}, Lam/m;->a(Lam/m;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lam/h;->a:Lam/m;

    invoke-static {v0}, Lam/m;->b(Lam/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    :try_start_1
    iget-object v3, p0, Lam/h;->a:Lam/m;

    invoke-static {v3}, Lam/m;->c(Lam/m;)J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lam/h;->a:Lam/m;

    invoke-static {v3}, Lam/m;->b(Lam/m;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lam/h;->a:Lam/m;

    invoke-static {v0}, Lam/m;->a(Lam/m;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lam/h;->a:Lam/m;

    invoke-static {v2}, Lam/m;->c(Lam/m;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    iget-object v2, p0, Lam/h;->a:Lam/m;

    invoke-static {v2}, Lam/m;->d(Lam/m;)Lf/v;

    move-result-object v2

    invoke-virtual {v2}, Lf/v;->a()Lf/J;

    move-result-object v2

    invoke-virtual {v2}, Lf/J;->c()V

    iget-object v2, p0, Lam/h;->a:Lam/m;

    add-long v3, v0, v5

    invoke-static {v2, v3, v4}, Lam/m;->a(Lam/m;J)J

    :cond_2
    iget-object v2, p0, Lam/h;->a:Lam/m;

    invoke-static {v2}, Lam/m;->e(Lam/m;)J

    move-result-wide v2

    add-long/2addr v2, v5

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lam/h;->a:Lam/m;

    invoke-static {v0}, Lam/m;->f(Lam/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lam/h;->a:Lam/m;

    invoke-static {v1}, Lam/m;->f(Lam/m;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_3
    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method
