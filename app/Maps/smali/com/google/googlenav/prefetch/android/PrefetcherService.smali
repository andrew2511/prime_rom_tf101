.class public Lcom/google/googlenav/prefetch/android/PrefetcherService;
.super Landroid/app/Service;


# static fields
.field public static final a:J


# instance fields
.field private volatile b:Lcom/google/googlenav/prefetch/android/r;

.field private final c:Landroid/os/IBinder;

.field private volatile d:J

.field private volatile e:J

.field private f:J

.field private g:Landroid/os/Looper;

.field private h:Lcom/google/googlenav/prefetch/android/c;

.field private i:Lt/as;

.field private j:Lcom/google/googlenav/android/S;

.field private k:LE/i;

.field private l:Landroid/net/wifi/WifiManager$WifiLock;

.field private m:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x14

    :goto_0
    sput-wide v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a:J

    return-void

    :cond_0
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/r;->c:Lcom/google/googlenav/prefetch/android/r;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/r;

    new-instance v0, Lcom/google/googlenav/prefetch/android/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/k;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/prefetch/android/c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    const-string v0, "LAST_PREFECHED_FINISHED"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    invoke-static {v0, v1, v2}, Lac/i;->a(Ljava/lang/String;J)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 10

    const-class v7, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    monitor-enter v7

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v1

    invoke-virtual {v1}, Laj/a;->d()J

    move-result-wide v2

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v1

    invoke-virtual {v1}, Laj/a;->e()J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/m;LE/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Lcom/google/googlenav/prefetch/android/m;LE/d;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/prefetch/android/a;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->a()Lcom/google/googlenav/prefetch/android/m;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    invoke-virtual {v0}, Lt/as;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->d()LE/c;

    move-result-object v0

    invoke-virtual {v0}, LE/c;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->o()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    invoke-interface {v0}, LE/d;->b()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->b()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_5

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/m;->a()LG/w;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    invoke-virtual {v3, v0}, Lt/as;->a(LG/w;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->d()LE/c;

    move-result-object v0

    invoke-virtual {v0}, LE/c;->c()Lcom/google/googlenav/prefetch/android/v;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/prefetch/android/n;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, p0, v0, p1}, Lcom/google/googlenav/prefetch/android/n;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;ILcom/google/googlenav/prefetch/android/a;)V

    sget-object v0, Lcom/google/googlenav/prefetch/android/v;->c:Lcom/google/googlenav/prefetch/android/v;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/prefetch/android/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lt/X;->c:Lt/X;

    move-object v5, v0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v7, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v4, v5, v8}, Lt/as;->a(LG/w;Lt/A;Lt/X;Z)V

    goto :goto_4

    :cond_6
    sget-object v0, Lt/X;->e:Lt/X;

    move-object v5, v0

    goto :goto_3

    :cond_7
    const-string v0, "b"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->e()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/m;->b()I

    move-result v1

    invoke-interface {v0, v3, v1}, LE/d;->a(II)V

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->f()LE/d;

    move-result-object v0

    invoke-interface {v0}, LE/d;->a()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Lcom/google/googlenav/prefetch/android/a;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Lcom/google/googlenav/prefetch/android/m;LE/c;LE/d;)V
    .locals 9

    const/4 v8, 0x2

    invoke-virtual {p2}, LE/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, LE/d;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    invoke-interface {v0}, LE/i;->f()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/r;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/r;

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v0

    invoke-virtual {v0}, Laj/a;->b()I

    move-result v3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "l="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/m;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/m;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LE/c;->c()Lcom/google/googlenav/prefetch/android/v;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/googlenav/prefetch/android/a;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/prefetch/android/a;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/m;ILE/c;LE/d;J)V

    invoke-direct {p0, v8, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/googlenav/labs/android/j;->a:Lcom/google/googlenav/labs/android/j;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/j;->e()I

    move-result v0

    invoke-static {v0}, Lr/h;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Z)V

    goto :goto_1
.end method

.method public static a(Lcom/google/googlenav/prefetch/android/u;)V
    .locals 5

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/prefetch/android/b;->a:[I

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x60

    const-string v2, "c"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_0
    const-string v0, "u"

    goto :goto_0

    :pswitch_1
    const-string v0, "n"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 3

    const/16 v2, 0x60

    if-eqz p0, :cond_0

    const-string v0, "m"

    const-string v1, "t"

    invoke-static {v2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "m"

    const-string v1, "f"

    invoke-static {v2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Lcom/google/googlenav/prefetch/android/a;)V
    .locals 6

    sget-object v0, Lcom/google/googlenav/prefetch/android/r;->c:Lcom/google/googlenav/prefetch/android/r;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/r;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    sget-object v2, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/v;

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->d()LE/c;

    move-result-object v3

    invoke-virtual {v3}, LE/c;->c()Lcom/google/googlenav/prefetch/android/v;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(J)V

    :cond_0
    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->c()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/l;->b()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/a;->d()LE/c;

    move-result-object v2

    invoke-virtual {v2}, LE/c;->c()Lcom/google/googlenav/prefetch/android/v;

    move-result-object v2

    const-string v3, "f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lac/g;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    return-void
.end method

.method private b(Lcom/google/googlenav/prefetch/android/m;LE/d;)V
    .locals 6

    new-instance v0, LE/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/S;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/v;->c:Lcom/google/googlenav/prefetch/android/v;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LE/b;-><init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/m;LE/c;LE/d;)V

    return-void
.end method

.method private h()Landroid/os/PowerManager$WakeLock;
    .locals 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "PrefetcherService"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    const-string v1, "PrefetcherService"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private j()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x60

    const-string v1, "n"

    const-string v2, "p"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()Z
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {}, Laj/a;->h()Laj/a;

    move-result-object v2

    invoke-virtual {v2}, Laj/a;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private m()J
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "LAST_PREFECHED_FINISHED"

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

.method private n()J
    .locals 3

    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lac/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private o()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->c()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/l;->b()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/r;->b:Lcom/google/googlenav/prefetch/android/r;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/r;

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/c;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/c;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/c;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l()V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/prefetch/android/m;LE/d;)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/v;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 6

    new-instance v0, LE/e;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/S;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/v;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LE/e;-><init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    invoke-interface {v2}, LE/i;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/google/googlenav/prefetch/android/m;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/m;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/m;LE/c;LE/d;)V

    return-void
.end method

.method public c()V
    .locals 6

    new-instance v0, LE/b;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/S;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v5, Lcom/google/googlenav/prefetch/android/v;->b:Lcom/google/googlenav/prefetch/android/v;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LE/b;-><init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    invoke-interface {v2}, LE/i;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/google/googlenav/prefetch/android/m;

    invoke-direct {v2, v1}, Lcom/google/googlenav/prefetch/android/m;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/m;LE/c;LE/d;)V

    return-void
.end method

.method public d()LE/h;
    .locals 6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->g()J

    new-instance v0, LE/h;

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    iget-wide v3, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:J

    invoke-static {}, Lac/d;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct/range {v0 .. v5}, LE/h;-><init>(JJLjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b:Lcom/google/googlenav/prefetch/android/r;

    sget-object v1, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    const-string v0, "LAST_PREFETCH_NOT_START_CONDITION_LOG_TIME"

    iget-wide v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-static {v0, v1, v2}, Lac/i;->a(Ljava/lang/String;J)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method public g()Z
    .locals 6

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PrefetcherService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Lcom/google/googlenav/prefetch/android/c;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/prefetch/android/c;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h:Lcom/google/googlenav/prefetch/android/c;

    new-instance v0, Lcom/google/googlenav/android/S;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/S;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->j:Lcom/google/googlenav/android/S;

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    const-string v0, "map"

    invoke-static {v0}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v0

    check-cast v0, Lt/as;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i:Lt/as;

    invoke-static {}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->k:LE/i;

    invoke-interface {v0}, LE/i;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:J

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f:J

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->i()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->h()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    new-instance v2, Lcom/google/googlenav/prefetch/android/i;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/prefetch/android/i;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/b;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    move-object p0, v0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/prefetch/android/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
