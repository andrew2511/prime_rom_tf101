.class Lp/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lp/b;


# direct methods
.method constructor <init>(Lp/b;)V
    .locals 0

    iput-object p1, p0, Lp/e;->a:Lp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lp/e;->a:Lp/b;

    invoke-static {v0}, Lp/b;->a(Lp/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v1

    const-string v2, "Running flush"

    invoke-virtual {v1, v2}, Lag/g;->b(Ljava/lang/Object;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    iget-object v3, p0, Lp/e;->a:Lp/b;

    iget-wide v3, v3, Lp/b;->i:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lp/e;->a:Lp/b;

    iget-object v1, v1, Lp/b;->j:LT/a;

    iget-object v2, p0, Lp/e;->a:Lp/b;

    iget-wide v2, v2, Lp/b;->i:J

    invoke-virtual {v1, v2, v3}, LT/a;->b(J)V

    iget-object v1, p0, Lp/e;->a:Lp/b;

    iget-object v1, v1, Lp/b;->j:LT/a;

    invoke-virtual {v1}, LT/a;->b()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lp/e;->a:Lp/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lp/b;->i:J

    iget-object v1, p0, Lp/e;->a:Lp/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lp/b;->h:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lp/e;->a:Lp/b;

    invoke-virtual {v0}, Lp/b;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
