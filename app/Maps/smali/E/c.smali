.class public abstract LE/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/googlenav/android/S;

.field protected final b:Lt/as;

.field protected final c:Landroid/net/wifi/WifiManager$WifiLock;

.field protected final d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field protected final e:Lcom/google/googlenav/prefetch/android/v;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE/c;->a:Lcom/google/googlenav/android/S;

    iput-object p2, p0, LE/c;->b:Lt/as;

    iput-object p3, p0, LE/c;->c:Landroid/net/wifi/WifiManager$WifiLock;

    iput-object p4, p0, LE/c;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iput-object p5, p0, LE/c;->e:Lcom/google/googlenav/prefetch/android/v;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public c()Lcom/google/googlenav/prefetch/android/v;
    .locals 1

    iget-object v0, p0, LE/c;->e:Lcom/google/googlenav/prefetch/android/v;

    return-object v0
.end method
