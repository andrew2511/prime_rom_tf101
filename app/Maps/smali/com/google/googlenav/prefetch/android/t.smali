.class Lcom/google/googlenav/prefetch/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/e;

    check-cast p2, Lcom/google/googlenav/prefetch/android/k;

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/k;->a()Lcom/google/googlenav/prefetch/android/PrefetcherService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/e;->a(Lcom/google/googlenav/prefetch/android/e;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/e;->a(Lcom/google/googlenav/prefetch/android/e;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-void
.end method
