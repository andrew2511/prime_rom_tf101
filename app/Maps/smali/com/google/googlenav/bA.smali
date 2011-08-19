.class Lcom/google/googlenav/bA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/aB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    invoke-static {v2}, Lcom/google/googlenav/aB;->a(Lcom/google/googlenav/aB;)Lcom/google/googlenav/x;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    new-instance v3, Lcom/google/googlenav/x;

    iget-object v4, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/x;-><init>(Lcom/google/googlenav/aB;Lcom/google/googlenav/bA;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/aB;->a(Lcom/google/googlenav/aB;Lcom/google/googlenav/x;)Lcom/google/googlenav/x;

    :cond_0
    const/16 v2, 0x54

    const-string v3, "ts"

    const-string v4, "r"

    invoke-static {v2, v3, v4}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/google/googlenav/bA;->a:Lcom/google/googlenav/aB;

    invoke-static {v2}, Lcom/google/googlenav/aB;->a(Lcom/google/googlenav/aB;)Lcom/google/googlenav/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
