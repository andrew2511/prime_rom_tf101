.class public Li/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/z;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:LaU/a;

.field private final c:Li/s;

.field private d:Z

.field private e:Lcom/google/googlenav/ui/bj;

.field private f:Lcom/google/googlenav/ui/bx;


# direct methods
.method constructor <init>(LaU/a;Li/s;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/ab;->a:Ljava/lang/Object;

    iput-object p1, p0, Li/ab;->b:LaU/a;

    iput-object p2, p0, Li/ab;->c:Li/s;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/ab;->d:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/ab;->d:Z

    goto :goto_0
.end method

.method static synthetic a(Li/ab;)Lcom/google/googlenav/ui/bx;
    .locals 1

    iget-object v0, p0, Li/ab;->f:Lcom/google/googlenav/ui/bx;

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Li/ab;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li/ab;->f:Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/ab;->e:Lcom/google/googlenav/ui/bj;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Li/ab;->e:Lcom/google/googlenav/ui/bj;

    iget-object v2, p0, Li/ab;->f:Lcom/google/googlenav/ui/bx;

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/bj;->a(Lcom/google/googlenav/ui/bx;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Li/ab;->b:LaU/a;

    new-instance v2, Li/bn;

    invoke-direct {v2, p0}, Li/bn;-><init>(Li/ab;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Li/ab;)Lcom/google/googlenav/ui/bj;
    .locals 1

    iget-object v0, p0, Li/ab;->e:Lcom/google/googlenav/ui/bj;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bx;
    .locals 1

    iget-object v0, p0, Li/ab;->f:Lcom/google/googlenav/ui/bx;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bj;)V
    .locals 2

    iget-object v0, p0, Li/ab;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Li/ab;->e:Lcom/google/googlenav/ui/bj;

    iget-boolean v1, p0, Li/ab;->d:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Li/ab;->d:Z

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Li/ab;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Li/ab;->c:Li/s;

    invoke-interface {v0}, Li/s;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iput-object v0, p0, Li/ab;->f:Lcom/google/googlenav/ui/bx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/ab;->a(Z)V

    return-void
.end method
