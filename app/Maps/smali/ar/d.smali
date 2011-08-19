.class Lar/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lar/b;

.field private b:Lcom/google/android/location/internal/b;


# direct methods
.method private constructor <init>(Lar/b;)V
    .locals 0

    iput-object p1, p0, Lar/d;->a:Lar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lar/b;Lar/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lar/d;-><init>(Lar/b;)V

    return-void
.end method

.method static synthetic a(Lar/d;)Lcom/google/android/location/internal/b;
    .locals 1

    iget-object v0, p0, Lar/d;->b:Lcom/google/android/location/internal/b;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lar/d;->a:Lar/b;

    invoke-static {v0}, Lar/b;->b(Lar/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lar/d;->a:Lar/b;

    invoke-static {v1}, Lar/b;->c(Lar/b;)Lar/d;

    move-result-object v1

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Lar/d;->a:Lar/b;

    invoke-static {v1}, Lar/b;->d(Lar/b;)Lar/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lar/d;->a:Lar/b;

    invoke-static {v1}, Lar/b;->e(Lar/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkLocationClient"

    const-string v2, "Service connected when already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lar/d;->b:Lcom/google/android/location/internal/b;

    if-eqz v1, :cond_2

    const-string v1, "NetworkLocationClient"

    const-string v2, "Service connecting when already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p2}, Lcom/google/android/location/internal/e;->a(Landroid/os/IBinder;)Lcom/google/android/location/internal/b;

    move-result-object v1

    iput-object v1, p0, Lar/d;->b:Lcom/google/android/location/internal/b;

    iget-object v1, p0, Lar/d;->a:Lar/b;

    invoke-static {v1}, Lar/b;->d(Lar/b;)Lar/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "NetworkLocationClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lar/d;->a:Lar/b;

    invoke-static {v0}, Lar/b;->b(Lar/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lar/d;->b:Lcom/google/android/location/internal/b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
