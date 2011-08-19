.class Lcom/google/googlenav/friend/android/h;
.super Lcom/google/googlenav/friend/android/q;


# instance fields
.field a:Z

.field final synthetic b:Landroid/location/Location;

.field final synthetic c:Lcom/google/googlenav/friend/android/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/p;Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    iput-object p4, p0, Lcom/google/googlenav/friend/android/h;->b:Landroid/location/Location;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/friend/android/q;-><init>(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public a(Law/e;ZLaw/e;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/friend/android/q;->a(Law/e;ZLaw/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/h;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/p;->a(Lcom/google/googlenav/friend/android/p;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    invoke-static {v1}, Lcom/google/googlenav/friend/android/p;->a(Lcom/google/googlenav/friend/android/p;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/android/h;->b:Landroid/location/Location;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/p;->b(Lcom/google/googlenav/friend/android/p;)Lcom/google/googlenav/friend/android/K;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/p;->b(Lcom/google/googlenav/friend/android/p;)Lcom/google/googlenav/friend/android/K;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/friend/android/K;->a(Law/e;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/h;->c:Lcom/google/googlenav/friend/android/p;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/p;->c(Lcom/google/googlenav/friend/android/p;)Lcom/google/googlenav/friend/android/I;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->m()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
