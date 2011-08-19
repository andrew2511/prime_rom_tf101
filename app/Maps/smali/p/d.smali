.class Lp/d;
.super LT/a;


# instance fields
.field final synthetic a:Lp/b;


# direct methods
.method constructor <init>(Lp/b;LT/c;)V
    .locals 0

    iput-object p1, p0, Lp/d;->a:Lp/b;

    invoke-direct {p0, p2}, LT/a;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v0

    const-string v1, "Running delayed flush"

    invoke-virtual {v0, v1}, Lag/g;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/d;->a:Lp/b;

    invoke-static {v0}, Lp/b;->a(Lp/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp/d;->a:Lp/b;

    invoke-virtual {v1}, Lp/b;->f()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
