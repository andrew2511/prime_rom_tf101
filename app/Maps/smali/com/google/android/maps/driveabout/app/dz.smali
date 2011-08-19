.class public Lcom/google/android/maps/driveabout/app/dz;
.super Lad/i;

# interfaces
.implements LF/G;
.implements Lcom/google/android/maps/driveabout/vector/bM;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/w;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private final d:Lcom/google/android/maps/driveabout/app/eC;

.field private e:Z

.field private f:LF/M;

.field private g:LF/y;

.field private h:I

.field private i:Z

.field private final j:Lt/P;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lt/P;Lcom/google/android/maps/driveabout/app/eC;)V
    .locals 2

    const-string v0, "TilePrefetcher"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/w;-><init>(Lcom/google/android/maps/driveabout/app/dz;Lcom/google/android/maps/driveabout/app/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->a:Lcom/google/android/maps/driveabout/app/w;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dz;->j:Lt/P;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dz;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->j:Lt/P;

    new-instance v1, Lcom/google/android/maps/driveabout/app/L;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/L;-><init>(Lcom/google/android/maps/driveabout/app/dz;)V

    invoke-interface {v0, v1}, Lt/P;->a(Lt/u;)V

    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:Z

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/dz;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->k:Z

    goto :goto_0
.end method

.method private a(LF/M;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dz;->f:LF/M;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->f:LF/M;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/eC;->a(LF/M;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->c()V

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    return-void
.end method

.method private a(LF/y;I)V
    .locals 3

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dz;->g:LF/y;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dz;->h:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->g:LF/y;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dz;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/eC;->a(LF/y;I)V

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->x()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dz;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dz;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/dz;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dz;LF/M;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dz;->a(LF/M;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dz;LF/y;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dz;->a(LF/y;I)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:Z

    return-void
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->n:I

    :cond_0
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dz;->n:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lad/t;->w()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lad/t;->x()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dz;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dz;->b(I)V

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/eC;->a()LG/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->j:Lt/P;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dz;->a:Lcom/google/android/maps/driveabout/app/w;

    sget-object v3, Lt/X;->d:Lt/X;

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lt/P;->a(LG/w;Lt/A;Lt/X;Z)V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->f()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->g()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->h()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->f:LF/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->g:LF/y;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/eC;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->f:LF/M;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/eC;->a(LF/M;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dz;->g:LF/y;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dz;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/eC;->a(LF/y;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->c()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->k:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->i()V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    return-void
.end method

.method private i()V
    .locals 4

    const-wide/16 v2, 0x190

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->j:Lt/P;

    invoke-interface {v0}, Lt/P;->h()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dz;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/app/dz;->a(J)V

    goto :goto_0
.end method

.method private j()V
    .locals 7

    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/maps/driveabout/app/dz;->n:I

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->v()I

    move-result v0

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Lcom/google/android/maps/driveabout/app/eC;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/eC;->a()LG/w;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dz;->i:Z

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dz;->j:Lt/P;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dz;->a:Lcom/google/android/maps/driveabout/app/w;

    sget-object v5, Lt/X;->d:Lt/X;

    invoke-interface {v3, v2, v4, v5, v6}, Lt/P;->a(LG/w;Lt/A;Lt/X;Z)V

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/app/dz;->m:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ILF/l;LF/B;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method

.method public a(LF/B;)V
    .locals 3

    invoke-virtual {p1}, LF/B;->h()LF/y;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->l:I

    invoke-virtual {p1}, LF/B;->b()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, LF/B;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->l:I

    const/4 v0, 0x5

    invoke-virtual {p1}, LF/B;->e()I

    move-result v1

    invoke-virtual {p1}, LF/B;->h()LF/y;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dz;->a(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(LF/w;I)V
    .locals 0

    return-void
.end method

.method public aA_()V
    .locals 1

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->c:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/maps/driveabout/app/P;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/P;-><init>(Lcom/google/android/maps/driveabout/app/dz;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->b:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(LF/B;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method

.method public b(LF/w;I)V
    .locals 0

    return-void
.end method

.method public c(LF/B;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1}, LF/B;->g()LF/M;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/dz;->e(LF/B;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method

.method public d(LF/B;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public e(LF/B;)V
    .locals 3

    invoke-virtual {p1}, LF/B;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->l:I

    const/4 v0, 0x5

    invoke-virtual {p1}, LF/B;->e()I

    move-result v1

    invoke-virtual {p1}, LF/B;->h()LF/y;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dz;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public f(LF/B;)V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;->a(I)V

    return-void
.end method
