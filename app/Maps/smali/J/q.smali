.class public LJ/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LJ/d;

.field private b:Z

.field private c:LT/a;


# direct methods
.method protected constructor <init>(LJ/d;)V
    .locals 1

    iput-object p1, p0, LJ/q;->a:LJ/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ/q;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LJ/q;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/q;->b:Z

    invoke-virtual {p0}, LJ/q;->run()V
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

.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJ/q;->a:LJ/d;

    invoke-static {v0}, LJ/d;->a(LJ/d;)LJ/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/q;->a:LJ/d;

    invoke-static {v0}, LJ/d;->b(LJ/d;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, LJ/q;->a:LJ/d;

    invoke-static {v1}, LJ/d;->a(LJ/d;)LJ/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, LJ/q;->a:LJ/d;

    invoke-static {v1}, LJ/d;->a(LJ/d;)LJ/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, LJ/q;->a:LJ/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LJ/d;->a(LJ/d;LJ/c;)LJ/c;

    new-instance v0, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LJ/q;->c:LT/a;

    iget-object v0, p0, LJ/q;->c:LT/a;

    sget-wide v1, LJ/d;->a:J

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    iget-object v0, p0, LJ/q;->c:LT/a;

    invoke-virtual {v0}, LT/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, LJ/q;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
