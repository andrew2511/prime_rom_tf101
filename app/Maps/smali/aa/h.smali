.class Laa/h;
.super Lad/i;

# interfaces
.implements Laa/C;


# instance fields
.field private a:J

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Looper;

.field private final f:Ljava/util/LinkedList;

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Z

.field private j:I

.field private k:Laa/B;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "LocationDispatcher"

    invoke-direct {p0, v0}, Lad/i;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laa/h;->a:J

    iput v2, p0, Laa/h;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Laa/h;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v2, p0, Laa/h;->i:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laa/h;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {p0}, Laa/h;->a()V

    return-void
.end method

.method static synthetic a(Laa/h;)I
    .locals 1

    iget v0, p0, Laa/h;->c:I

    return v0
.end method

.method static synthetic a(Laa/h;I)I
    .locals 0

    iput p1, p0, Laa/h;->c:I

    return p1
.end method

.method static synthetic a(Laa/h;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Laa/h;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Laa/v;)V
    .locals 2

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Laa/v;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Laa/h;->h()V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Laa/h;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Laa/h;->i:Z

    if-eqz v1, :cond_1

    iget v1, p0, Laa/h;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laa/h;->j:I

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Laa/h;->j:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Laa/h;->j:I

    :cond_2
    iget v1, p0, Laa/h;->c:I

    if-eq v1, v3, :cond_3

    iput v3, p0, Laa/h;->c:I

    iget v1, p0, Laa/h;->c:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Laa/h;->a(ILandroid/os/Bundle;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laa/v;

    invoke-virtual {p0}, Laa/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Laa/v;->b()Landroid/location/LocationListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "driveabout_base_location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "da_tunnel_heartbeat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_6
    move-object v0, p1

    check-cast v0, Laa/E;

    move-object v1, v0

    invoke-virtual {v1}, Laa/E;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Laa/h;->e()V

    invoke-direct {p0}, Laa/h;->f()V

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Laa/h;->g()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laa/v;

    invoke-direct {p0, v0}, Laa/h;->a(Laa/v;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laa/v;

    invoke-direct {p0, v0}, Laa/h;->b(Laa/v;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Laa/h;->a(Landroid/location/Location;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Laa/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Laa/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Laa/h;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laa/B;

    invoke-direct {p0, v0}, Laa/h;->b(Laa/B;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Laa/B;)V
    .locals 3

    invoke-virtual {p1}, Laa/B;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laa/v;

    invoke-virtual {p0}, Laa/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Laa/v;->a(Laa/v;)Laa/C;

    move-result-object v2

    invoke-interface {v2, p1}, Laa/C;->a(Laa/B;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Laa/v;)V
    .locals 3

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Laa/h;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/v;

    invoke-virtual {v0}, Laa/v;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1}, Laa/v;->b()Landroid/location/LocationListener;

    move-result-object v2

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {p1}, Laa/v;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Laa/h;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Laa/q;

    invoke-direct {v0, p0}, Laa/q;-><init>(Laa/h;)V

    iput-object v0, p0, Laa/h;->b:Ljava/lang/Runnable;

    :cond_0
    iget-wide v0, p0, Laa/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Laa/h;->a:J

    :goto_0
    iget-object v2, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v3, p0, Laa/h;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->k()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    invoke-direct {p0}, Laa/h;->h()V

    iget-object v0, p0, Laa/h;->e:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/h;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Laa/h;->e:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method private final h()V
    .locals 0

    return-void
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-virtual {p0}, Laa/h;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, Laa/h;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, "gps"

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Laa/B;)V
    .locals 3

    const/16 v2, 0x11

    invoke-virtual {p1}, Laa/B;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laa/h;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v1, p0, Laa/h;->k:Laa/B;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p1, p0, Laa/h;->k:Laa/B;

    :cond_0
    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Laa/h;->b(Laa/B;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Laa/C;)V
    .locals 4

    new-instance v0, Laa/v;

    invoke-direct {v0, p1, p2}, Laa/v;-><init>(Ljava/lang/String;Laa/C;)V

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v2, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public aA_()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Laa/h;->e:Landroid/os/Looper;

    new-instance v0, Laa/r;

    invoke-direct {v0, p0}, Laa/r;-><init>(Laa/h;)V

    iput-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual {p0}, Laa/h;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Laa/C;)V
    .locals 4

    new-instance v0, Laa/v;

    invoke-direct {v0, p1, p2}, Laa/v;-><init>(Ljava/lang/String;Laa/C;)V

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v2, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Laa/h;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    iget-object v1, p0, Laa/h;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laa/h;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lad/m;->a(Landroid/location/Location;)Lf/h;

    move-result-object v0

    invoke-static {v0}, LH/e;->e(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LH/e;->i()LH/e;

    move-result-object v1

    invoke-virtual {v1, v0}, LH/e;->d(Lf/h;)Lf/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    :cond_2
    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Laa/h;->a(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Laa/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Laa/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Laa/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Laa/h;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laa/h;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laa/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
