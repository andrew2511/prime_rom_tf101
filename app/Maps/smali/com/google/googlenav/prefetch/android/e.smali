.class public Lcom/google/googlenav/prefetch/android/e;
.super Ljava/lang/Object;

# interfaces
.implements LE/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private final c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    new-instance v0, Lcom/google/googlenav/prefetch/android/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/t;-><init>(Lcom/google/googlenav/prefetch/android/e;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/e;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/e;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/e;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/e;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/h;LE/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/f;->a(Lf/h;)LG/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    new-instance v2, Lcom/google/googlenav/prefetch/android/m;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/googlenav/prefetch/android/m;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/m;LE/d;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a()V

    :cond_0
    return-void
.end method

.method public c()LE/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/e;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d()LE/h;

    move-result-object v0

    return-object v0
.end method
