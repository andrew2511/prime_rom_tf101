.class Lcom/google/android/maps/driveabout/app/dB;
.super Ljava/lang/Object;

# interfaces
.implements Lm/v;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/U;

.field private final b:Lm/w;

.field private c:Lm/p;

.field private final d:Lcom/google/android/maps/driveabout/app/cy;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/U;Lm/w;Lcom/google/android/maps/driveabout/app/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dB;->d:Lcom/google/android/maps/driveabout/app/cy;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dB;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dB;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/dB;)Lm/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/at;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/at;-><init>(Lcom/google/android/maps/driveabout/app/dB;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/U;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/dB;)Lcom/google/android/maps/driveabout/app/cy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->d:Lcom/google/android/maps/driveabout/app/cy;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->g(Lcom/google/android/maps/driveabout/app/U;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    invoke-virtual {v0}, Lm/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->h(Lcom/google/android/maps/driveabout/app/U;)Lcom/google/android/maps/driveabout/app/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ew;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->h(Lcom/google/android/maps/driveabout/app/U;)Lcom/google/android/maps/driveabout/app/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ew;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->i(Lcom/google/android/maps/driveabout/app/U;)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    invoke-virtual {v1, v0}, Lm/p;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    new-instance v1, Lcom/google/android/maps/driveabout/app/au;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/au;-><init>(Lcom/google/android/maps/driveabout/app/dB;)V

    invoke-virtual {v0, v1}, Lm/p;->a(Lm/I;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dB;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dB;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lm/w;Lm/p;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/U;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dB;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/dB;)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-virtual {v0}, Lm/w;->d()LF/w;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-virtual {v1}, Lm/w;->d()LF/w;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LF/w;->a()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, LF/w;->a()I

    move-result v2

    invoke-virtual {v1}, LF/w;->a()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, LF/w;->h()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LF/w;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LF/w;->e()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->a()LG/Q;

    move-result-object v0

    invoke-virtual {v1}, LF/w;->e()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->a()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method a(Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    new-instance v0, Lm/C;

    invoke-direct {v0}, Lm/C;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/U;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/U;->b(Lcom/google/android/maps/driveabout/app/U;)Lm/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-interface {v1, v2}, Lm/i;->a(Lm/w;)Lm/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/C;->a(Lm/p;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/U;->c(Lcom/google/android/maps/driveabout/app/U;)Lm/k;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/U;->c(Lcom/google/android/maps/driveabout/app/U;)Lm/k;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-interface {v1, v2}, Lm/k;->a(Lm/w;)Lm/p;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/U;->c(Lcom/google/android/maps/driveabout/app/U;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-interface {v0, v1, p0}, Lm/k;->a(Lm/w;Lm/v;)V

    move v0, v3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/U;->d(Lcom/google/android/maps/driveabout/app/U;)Lm/k;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-interface {v1, v2}, Lm/k;->a(Lm/w;)Lm/p;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/U;->e(Lcom/google/android/maps/driveabout/app/U;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dB;->a:Lcom/google/android/maps/driveabout/app/U;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/U;->f(Lcom/google/android/maps/driveabout/app/U;)Lm/i;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dB;->b:Lm/w;

    invoke-interface {v2, v3}, Lm/i;->a(Lm/w;)Lm/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm/C;->a(Lm/p;)V

    :cond_6
    invoke-virtual {v0, v1}, Lm/C;->a(Lm/p;)V

    :cond_7
    invoke-virtual {v0}, Lm/C;->a()Lm/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dB;->c:Lm/p;

    move v0, v4

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Z)Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dB;->d()V

    return-void
.end method
