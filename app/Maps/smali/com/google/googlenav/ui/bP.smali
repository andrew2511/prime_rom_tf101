.class Lcom/google/googlenav/ui/bP;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bP;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->a:Lcom/google/googlenav/ui/aT;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lcom/google/googlenav/ui/aT;->k(Lcom/google/googlenav/ui/aT;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->m()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
