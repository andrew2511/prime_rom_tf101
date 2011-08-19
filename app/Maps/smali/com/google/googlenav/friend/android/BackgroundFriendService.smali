.class public Lcom/google/googlenav/friend/android/BackgroundFriendService;
.super Landroid/app/Service;

# interfaces
.implements Lo/r;


# static fields
.field private static volatile b:Z


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private c:Landroid/os/Handler;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->r()V

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->s()V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    sget-boolean v0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/friend/android/BackgroundFriendService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/google/googlenav/friend/android/A;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/googlenav/friend/android/A;->a()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/BackgroundFriendService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->stopSelf()V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 7

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->d:Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v6

    new-instance v0, Lcom/google/googlenav/friend/android/H;

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/android/H;-><init>(Lcom/google/googlenav/friend/android/BackgroundFriendService;ILo/r;LaU/a;Z)V

    invoke-virtual {v6, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/BackgroundFriendService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->d:Z

    return p1
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lcom/google/googlenav/friend/android/A;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->f(Landroid/content/Context;)V

    return-void
.end method

.method public a(ZLo/aT;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->d(Landroid/content/Context;)V

    return-void
.end method

.method public b(ZLo/aT;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->e(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "BackgroundFriendService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/google/googlenav/friend/android/G;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/G;-><init>(Lcom/google/googlenav/friend/android/BackgroundFriendService;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/BackgroundFriendService;->c:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, v1}, Ln/a;->a(Z)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/app/Service;)Lcom/google/googlenav/login/j;

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/friend/android/A;->b()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->f()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->b()V

    :cond_2
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->g()V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->c()V

    goto :goto_0
.end method
