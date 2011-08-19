.class Lcom/google/android/location/os/real/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lw/v;

.field private final c:Lcom/google/android/location/os/real/e;

.field private final d:Lcom/google/android/location/os/real/e;

.field private final e:Lcom/google/android/location/os/real/k;

.field private final f:Lcom/google/android/location/os/real/j;

.field private final g:Ljava/lang/Thread;

.field private final h:Landroid/os/PowerManager$WakeLock;

.field private final i:Ljava/lang/Object;

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/android/location/os/real/d;

.field private m:Lw/y;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lw/v;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    iput-boolean v1, p0, Lcom/google/android/location/os/real/r;->n:Z

    iput-object p1, p0, Lcom/google/android/location/os/real/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/r;->b:Lw/v;

    new-instance v0, Lcom/google/android/location/os/real/e;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/e;-><init>(Lcom/google/android/location/os/real/r;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/e;

    new-instance v0, Lcom/google/android/location/os/real/e;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/e;-><init>(Lcom/google/android/location/os/real/r;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->d:Lcom/google/android/location/os/real/e;

    new-instance v0, Lcom/google/android/location/os/real/k;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/os/real/k;-><init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->e:Lcom/google/android/location/os/real/k;

    new-instance v0, Lcom/google/android/location/os/real/j;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/os/real/j;-><init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->f:Lcom/google/android/location/os/real/j;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/location/os/real/r;->f:Lcom/google/android/location/os/real/j;

    const-string v2, "NetworkLocationCallbackRunner"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->g:Ljava/lang/Thread;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "NetworkLocationCallbackRunner"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/r;->h:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/os/real/r;->k:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/d;)Lcom/google/android/location/os/real/d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/os/real/r;->l:Lcom/google/android/location/os/real/d;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->k:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(III)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->k:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->k:Landroid/os/Handler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/r;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/os/real/r;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/r;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/os/real/r;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/location/os/real/r;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->e:Lcom/google/android/location/os/real/k;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/location/os/real/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/location/os/real/r;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->d:Lcom/google/android/location/os/real/e;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/e;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/os/real/r;)Lw/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->b:Lw/v;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/os/real/r;)Lw/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->m:Lw/y;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->h:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/os/real/r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/os/real/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/location/os/real/r;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->l:Lcom/google/android/location/os/real/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/os/real/r;->j:Z

    iget-object v1, p0, Lcom/google/android/location/os/real/r;->l:Lcom/google/android/location/os/real/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/os/real/r;->l:Lcom/google/android/location/os/real/d;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(IZ)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/location/os/real/r;->a(III)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/r;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lw/y;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/location/os/real/r;->m:Lw/y;

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->f:Lcom/google/android/location/os/real/j;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->f:Lcom/google/android/location/os/real/j;

    iget-boolean v1, v1, Lcom/google/android/location/os/real/j;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->f:Lcom/google/android/location/os/real/j;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public a(Z)V
    .locals 3

    const/16 v0, 0x12

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/location/os/real/r;->a(III)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/r;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/location/os/real/r;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Law/e;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/r;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/location/os/real/r;->n:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/location/os/real/r;->n:Z

    iget-object v0, p0, Lcom/google/android/location/os/real/r;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/e;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/location/os/real/r;->d:Lcom/google/android/location/os/real/e;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/location/os/real/r;->d:Lcom/google/android/location/os/real/e;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "passive"

    iget-object v5, p0, Lcom/google/android/location/os/real/r;->c:Lcom/google/android/location/os/real/e;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/location/os/real/r;->a(III)V

    return-void
.end method
