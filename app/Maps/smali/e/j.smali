.class public Le/j;
.super Lad/i;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private final c:Le/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt/y;)V
    .locals 1

    const-string v0, "RouteFinderThread"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    new-instance v0, Le/a;

    invoke-direct {v0, p1, p2, p0}, Le/a;-><init>(Landroid/content/Context;Lt/y;Ljava/lang/Thread;)V

    iput-object v0, p0, Le/j;->c:Le/a;

    invoke-virtual {p0}, Le/j;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Le/j;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Le/j;->e()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/y;

    iget-object v1, p0, Le/j;->c:Le/a;

    invoke-static {v0}, Le/y;->a(Le/y;)Laa/E;

    move-result-object v2

    invoke-static {v0}, Le/y;->b(Le/y;)LF/M;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Le/a;->a(Laa/E;LF/M;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Le/j;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Le/j;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Le/j;->b:Landroid/os/Looper;

    new-instance v0, Le/x;

    invoke-direct {v0, p0}, Le/x;-><init>(Le/j;)V

    iput-object v0, p0, Le/j;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Le/j;->f()V

    iget-object v0, p0, Le/j;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/j;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/j;->b:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Le/j;->a:Landroid/os/Handler;

    iget-object v1, p0, Le/j;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual {p0}, Le/j;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Laa/E;LF/M;)V
    .locals 5

    iget-object v0, p0, Le/j;->a:Landroid/os/Handler;

    iget-object v1, p0, Le/j;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Le/y;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Le/y;-><init>(Laa/E;LF/M;Le/x;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Le/d;)V
    .locals 1

    iget-object v0, p0, Le/j;->c:Le/a;

    invoke-virtual {v0, p1}, Le/a;->a(Le/d;)V

    return-void
.end method

.method public aA_()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Le/j;->c()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Le/j;->c:Le/a;

    invoke-virtual {v0}, Le/a;->a()V

    return-void
.end method
