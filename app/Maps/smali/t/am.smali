.class public Lt/am;
.super Lad/i;

# interfaces
.implements Lak/c;


# static fields
.field private static a:Lt/am;


# instance fields
.field private final b:Lak/h;

.field private final c:Lt/ah;

.field private final d:Ljava/io/File;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;

.field private h:Z


# direct methods
.method protected constructor <init>(Lak/h;Ljava/io/File;Ljava/util/Locale;)V
    .locals 1

    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lt/am;->b:Lak/h;

    new-instance v0, Lt/ah;

    invoke-direct {v0, p3}, Lt/ah;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lt/am;->c:Lt/ah;

    iput-object p2, p0, Lt/am;->d:Ljava/io/File;

    invoke-static {}, Lj/u;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lt/am;->g:Ljava/util/Map;

    return-void
.end method

.method public static a()Lt/am;
    .locals 1

    sget-object v0, Lt/am;->a:Lt/am;

    return-object v0
.end method

.method public static a(Lak/h;Ljava/io/File;Ljava/util/Locale;)Lt/am;
    .locals 1

    sget-object v0, Lt/am;->a:Lt/am;

    if-nez v0, :cond_0

    new-instance v0, Lt/am;

    invoke-direct {v0, p0, p1, p2}, Lt/am;-><init>(Lak/h;Ljava/io/File;Ljava/util/Locale;)V

    sput-object v0, Lt/am;->a:Lt/am;

    :cond_0
    sget-object v0, Lt/am;->a:Lt/am;

    return-object v0
.end method

.method private a(Lt/N;)V
    .locals 3

    invoke-direct {p0}, Lt/am;->k()V

    iget-object v0, p0, Lt/am;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lt/N;->l()LG/A;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lt/N;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {p1}, Lt/N;->l()LG/A;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/ah;->c(LG/A;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lt/N;->a(LG/e;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lt/N;->o()Law/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {p1}, Lt/N;->l()LG/A;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lt/ah;->a(LG/A;Law/e;)LG/e;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lt/am;)V
    .locals 0

    invoke-direct {p0}, Lt/am;->i()V

    return-void
.end method

.method static synthetic a(Lt/am;Lt/N;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/am;->a(Lt/N;)V

    return-void
.end method

.method static synthetic a(Lt/am;Lt/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/am;->a(Lt/j;)V

    return-void
.end method

.method private a(Lt/j;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lt/am;->k()V

    iget-object v1, p1, Lt/j;->a:LG/A;

    iget-object v2, p1, Lt/j;->b:Lt/o;

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0, v1}, Lt/ah;->a(LG/A;)LG/e;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_0

    iget-object v3, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v3, v0}, Lt/ah;->a(LG/e;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lt/o;->a(LG/A;ILG/e;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, LG/e;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lt/o;->a(LG/A;ILG/e;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lt/am;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/N;

    if-nez v0, :cond_4

    new-instance v0, Lt/N;

    invoke-direct {v0, v1}, Lt/N;-><init>(LG/A;)V

    iget-object v3, p0, Lt/am;->g:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lt/N;->a(Lt/o;)V

    :cond_5
    invoke-virtual {v0}, Lt/N;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lt/am;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v5, p0, Lt/am;->h:Z

    goto :goto_1
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lt/am;->a:Lt/am;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lt/am;->a:Lt/am;

    :cond_0
    return-void
.end method

.method private b(Lt/N;)V
    .locals 2

    invoke-direct {p0}, Lt/am;->k()V

    iget-object v0, p0, Lt/am;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lt/N;->l()LG/A;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt/N;->a(LG/e;)V

    return-void
.end method

.method static synthetic b(Lt/am;Lt/N;)V
    .locals 0

    invoke-direct {p0, p1}, Lt/am;->b(Lt/N;)V

    return-void
.end method

.method private i()V
    .locals 3

    invoke-direct {p0}, Lt/am;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/am;->h:Z

    iget-object v0, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v0}, Lak/h;->f()V

    :try_start_0
    iget-object v0, p0, Lt/am;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/N;

    invoke-virtual {v0}, Lt/N;->n()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v2, v0}, Lak/h;->c(Lak/d;)V

    invoke-virtual {v0}, Lt/N;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v1}, Lak/h;->g()V

    throw v0

    :cond_1
    iget-object v0, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v0}, Lak/h;->g()V

    return-void
.end method

.method private j()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lt/am;->e:Z

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

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private k()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(LG/A;)LG/e;
    .locals 2

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0, p1}, Lt/ah;->b(LG/A;)LG/e;

    move-result-object v0

    iget-object v1, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v1, v0}, Lt/ah;->a(LG/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(LG/A;Lt/o;)V
    .locals 4

    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    iget-object v1, p0, Lt/am;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lt/j;

    invoke-direct {v3, p1, p2}, Lt/j;-><init>(LG/A;Lt/o;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lak/d;)V
    .locals 3

    invoke-interface {p1}, Lak/d;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    iget-object v1, p0, Lt/am;->f:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public aA_()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lt/W;

    invoke-direct {v0, p0}, Lt/W;-><init>(Lt/am;)V

    iput-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Las/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    iget-object v1, p0, Lt/am;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lt/ah;->a(Ljava/io/File;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lt/am;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lak/d;)V
    .locals 3

    invoke-interface {p1}, Lak/d;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    iget-object v1, p0, Lt/am;->f:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lt/am;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

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

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object v0, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->a(Lak/c;)V

    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lt/am;->b:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    iget-object v0, p0, Lt/am;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_0
    invoke-virtual {p0}, Lt/am;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0}, Lt/ah;->e()V

    iget-object v0, p0, Lt/am;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lt/am;->j()V

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0}, Lt/ah;->c()V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lt/am;->j()V

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0}, Lt/ah;->d()V

    return-void
.end method

.method public h()J
    .locals 2

    invoke-direct {p0}, Lt/am;->j()V

    iget-object v0, p0, Lt/am;->c:Lt/ah;

    invoke-virtual {v0}, Lt/ah;->f()J

    move-result-wide v0

    return-wide v0
.end method
