.class public LF/L;
.super Lad/i;

# interfaces
.implements Laa/C;
.implements Le/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private c:Z

.field private final d:LF/x;

.field private e:Landroid/location/Location;

.field private f:Le/j;

.field private g:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lad/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LF/L;->d:LF/x;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lak/h;Ljava/io/File;)V
    .locals 3

    const-string v0, "NavigationThread"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    new-instance v0, LF/e;

    invoke-direct {v0, p2, p0}, LF/e;-><init>(Lak/h;LF/L;)V

    const-string v1, "roadgraph"

    invoke-static {v1}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v1

    new-instance v2, Le/j;

    invoke-direct {v2, p1, v1}, Le/j;-><init>(Landroid/content/Context;Lt/y;)V

    iput-object v2, p0, LF/L;->f:Le/j;

    iget-object v1, p0, LF/L;->f:Le/j;

    invoke-virtual {v1, p0}, Le/j;->a(Le/d;)V

    new-instance v1, LF/x;

    iget-object v2, p0, LF/L;->f:Le/j;

    invoke-direct {v1, v0, v2, p0, p3}, LF/x;-><init>(LF/e;Le/j;Ljava/lang/Thread;Ljava/io/File;)V

    iput-object v1, p0, LF/L;->d:LF/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/L;->c:Z

    invoke-virtual {p0}, LF/L;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;
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

.method static synthetic a(LF/L;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, LF/L;->e:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(LF/L;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, LF/L;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    invoke-direct {p0}, LF/L;->l()V

    iput-object p1, p0, LF/L;->e:Landroid/location/Location;

    iget-boolean v0, p0, LF/L;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, LF/I;

    const-string v2, "NavigationThread.IdleHandler"

    invoke-direct {v1, p0, v2}, LF/I;-><init>(LF/L;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/L;->g:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 7

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, LF/L;->j()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, LF/L;->i()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, LF/L;->k()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, LF/J;

    move-object v6, v0

    iget-object v1, p0, LF/L;->d:LF/x;

    invoke-static {v6}, LF/J;->a(LF/J;)Laa/E;

    move-result-object v2

    invoke-static {v6}, LF/J;->b(LF/J;)[LF/u;

    move-result-object v3

    invoke-static {v6}, LF/J;->c(LF/J;)I

    move-result v4

    invoke-static {v6}, LF/J;->d(LF/J;)I

    move-result v5

    invoke-static {v6}, LF/J;->e(LF/J;)[LF/K;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, LF/x;->a(Laa/E;[LF/u;II[LF/K;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LF/J;

    iget-object v2, p0, LF/L;->d:LF/x;

    invoke-static {v1}, LF/J;->a(LF/J;)Laa/E;

    move-result-object v3

    invoke-static {v1}, LF/J;->f(LF/J;)LF/M;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, LF/x;->a(Laa/E;LF/M;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, LF/L;->d:LF/x;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LF/M;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, LF/x;->a(LF/M;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-direct {p0, v1}, LF/L;->a(Landroid/location/Location;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, LF/L;->d:LF/x;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LF/l;

    invoke-virtual {v1, p0}, LF/x;->a(LF/l;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, LF/L;->d:LF/x;

    invoke-virtual {v1}, LF/x;->g()V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, LF/L;->d:LF/x;

    invoke-virtual {v1}, LF/x;->i()V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, LF/L;->d:LF/x;

    invoke-virtual {v1}, LF/x;->k()V

    goto :goto_0

    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LF/F;

    iget-object v2, p0, LF/L;->d:LF/x;

    invoke-static {v1}, LF/F;->a(LF/F;)LF/M;

    move-result-object v3

    invoke-static {v1}, LF/F;->b(LF/F;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, LF/x;->a(LF/M;I)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, LF/L;->j()V

    iget-object v1, p0, LF/L;->d:LF/x;

    invoke-virtual {v1}, LF/x;->l()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(LF/L;)Z
    .locals 1

    iget-boolean v0, p0, LF/L;->c:Z

    return v0
.end method

.method static synthetic a(LF/L;Z)Z
    .locals 0

    iput-boolean p1, p0, LF/L;->g:Z

    return p1
.end method

.method static synthetic b(LF/L;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, LF/L;->e:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic c(LF/L;)LF/x;
    .locals 1

    iget-object v0, p0, LF/L;->d:LF/x;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, LF/L;->b:Landroid/os/Looper;

    new-instance v0, LF/H;

    invoke-direct {v0, p0}, LF/H;-><init>(LF/L;)V

    iput-object v0, p0, LF/L;->a:Landroid/os/Handler;

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

.method private i()V
    .locals 1

    invoke-direct {p0}, LF/L;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/L;->c:Z

    return-void
.end method

.method private j()V
    .locals 1

    invoke-direct {p0}, LF/L;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/L;->c:Z

    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, LF/L;->l()V

    iget-object v0, p0, LF/L;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/L;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, LF/L;->b:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method private final l()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(IZ)V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(LF/G;)V
    .locals 1

    iget-object v0, p0, LF/L;->d:LF/x;

    invoke-virtual {v0, p1}, LF/x;->a(LF/G;)V

    return-void
.end method

.method public a(LF/M;)V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(LF/M;I)V
    .locals 5

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/16 v2, 0xb

    new-instance v3, LF/F;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, LF/F;-><init>(LF/M;ILF/H;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(LF/l;)V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Laa/B;)V
    .locals 0

    return-void
.end method

.method public a(Laa/E;LF/M;)V
    .locals 5

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    new-instance v3, LF/J;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, LF/J;-><init>(Laa/E;LF/M;LF/H;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Laa/E;LF/M;[LF/K;)V
    .locals 10

    const/4 v0, 0x1

    new-array v2, v0, [LF/u;

    const/4 v0, 0x0

    invoke-virtual {p2}, LF/M;->l()LF/u;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v7, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v8, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, LF/J;

    invoke-virtual {p2}, LF/M;->c()I

    move-result v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, LF/J;-><init>(Laa/E;[LF/u;II[LF/K;LF/H;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Laa/E;[LF/u;I[LF/K;)V
    .locals 10

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A to location must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v7, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v8, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, LF/J;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, LF/J;-><init>(Laa/E;[LF/u;II[LF/K;LF/H;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, LF/L;->d:LF/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/L;->d:LF/x;

    invoke-virtual {v0, p1}, LF/x;->a(Z)V

    :cond_0
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
    invoke-direct {p0}, LF/L;->h()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(LF/G;)V
    .locals 1

    iget-object v0, p0, LF/L;->d:LF/x;

    invoke-virtual {v0, p1}, LF/x;->b(LF/G;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, LF/L;->f:Le/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/L;->f:Le/j;

    invoke-virtual {v0}, Le/j;->a()V

    :cond_0
    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual {p0}, LF/L;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, LF/L;->a:Landroid/os/Handler;

    iget-object v1, p0, LF/L;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
