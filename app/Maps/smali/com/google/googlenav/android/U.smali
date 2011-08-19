.class public Lcom/google/googlenav/android/U;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()J
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0, v4, v5}, Lac/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/android/U;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v2

    invoke-virtual {v2}, Laj/a;->f()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    sub-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/f;->d()V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->f()V

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->c()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/l;->b()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/u;->b:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/u;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/U;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/android/U;->a(J)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    const-string v2, "LAST_NETWORK_CONNECTED"

    invoke-static {v2, v0, v1}, Lac/i;->a(Ljava/lang/String;J)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/android/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->b()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/android/S;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/googlenav/android/d;

    invoke-direct {v1, p0, v2, v2, p1}, Lcom/google/googlenav/android/d;-><init>(Lcom/google/googlenav/android/U;ZZLcom/google/googlenav/android/S;)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    return-void
.end method
