.class Lcom/google/googlenav/android/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/googlenav/android/W;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/W;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/m;->b:Lcom/google/googlenav/android/W;

    iput-object p2, p0, Lcom/google/googlenav/android/m;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/m;->b:Lcom/google/googlenav/android/W;

    invoke-static {v0}, Lcom/google/googlenav/android/W;->a(Lcom/google/googlenav/android/W;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    iget-object v0, p0, Lcom/google/googlenav/android/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/android/m;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
