.class Lcom/google/googlenav/friend/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/u;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/google/googlenav/bG;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/android/u;)V
    .locals 2

    iput-object p1, p0, Lcom/google/googlenav/friend/android/v;->a:Lcom/google/googlenav/friend/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/v;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/u;Lcom/google/googlenav/friend/android/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/v;-><init>(Lcom/google/googlenav/friend/android/u;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/bG;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/v;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/v;->c:Lcom/google/googlenav/bG;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/j;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/friend/android/v;->c:Lcom/google/googlenav/bG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/v;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lo/U;->H()Lcom/google/googlenav/bG;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/v;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
