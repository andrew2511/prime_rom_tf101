.class public Lcom/google/googlenav/friend/android/LocationFriendService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/googlenav/friend/android/I;


# static fields
.field private static a:LA/p;


# instance fields
.field private b:Lcom/google/googlenav/friend/android/p;

.field private c:Lo/bI;

.field private d:Lcom/google/googlenav/friend/android/u;

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:Landroid/os/PowerManager$WakeLock;

.field private h:Z

.field private i:Landroid/location/Location;

.field private j:Landroid/net/wifi/WifiManager;

.field private k:J

.field private l:Lcom/google/googlenav/friend/android/r;

.field private m:Lcom/google/googlenav/friend/android/E;

.field private n:Lcom/google/googlenav/friend/android/K;

.field private final o:J

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LA/p;

    new-instance v1, Lz/c;

    invoke-direct {v1}, Lz/c;-><init>()V

    const-string v2, "latitude service running"

    const-string v3, "lr"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/android/LocationFriendService;->a:LA/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->o:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery-log-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/LocationFriendService;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/LocationFriendService;)Lo/bI;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->c:Lo/bI;

    return-object v0
.end method

.method private a(Law/e;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Law/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/LocationFriendService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/r;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->l:Lcom/google/googlenav/friend/android/r;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/LocationFriendService;)Lcom/google/googlenav/friend/android/K;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->n:Lcom/google/googlenav/friend/android/K;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/LocationFriendService;)I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/friend/android/LocationFriendService;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    return v0
.end method

.method private e(Landroid/location/Location;)V
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->o(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/googlenav/friend/android/A;->b(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/android/A;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method private f(Landroid/location/Location;)Law/e;
    .locals 6

    const-wide v4, 0x412e848000000000L

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->B:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->g(Landroid/location/Location;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/friend/android/LocationFriendService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->o()V

    return-void
.end method

.method private static g(Landroid/location/Location;)I
    .locals 2

    invoke-static {p0}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbc/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lbc/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/googlenav/friend/android/LocationFriendService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n()LA/p;
    .locals 1

    sget-object v0, Lcom/google/googlenav/friend/android/LocationFriendService;->a:LA/p;

    return-object v0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x4e

    const-string v1, "ni"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->i:Landroid/location/Location;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->k()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/friend/android/e;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lo/av;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lo/ao;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->d:Lcom/google/googlenav/friend/android/u;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/e;)V

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/google/googlenav/friend/android/e;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/google/googlenav/friend/android/e;->d:Z

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "google.stationary"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    iget-object v2, p1, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "stationary_stopped_place"

    iget-boolean v2, p1, Lcom/google/googlenav/friend/android/e;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    invoke-static {}, Lo/aX;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/google/googlenav/friend/android/e;->d:Z

    if-nez v0, :cond_5

    iget v0, p1, Lcom/google/googlenav/friend/android/e;->g:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->l:Lcom/google/googlenav/friend/android/r;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/googlenav/friend/android/r;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->j:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/googlenav/friend/android/r;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/google/googlenav/friend/android/I;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->l:Lcom/google/googlenav/friend/android/r;

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->l:Lcom/google/googlenav/friend/android/r;

    iget-object v1, p1, Lcom/google/googlenav/friend/android/e;->b:Law/e;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/android/r;->a(Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->l:Lcom/google/googlenav/friend/android/r;

    iget v1, p1, Lcom/google/googlenav/friend/android/e;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/android/r;->a(Z)V

    :cond_5
    return-void

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_2
.end method

.method a(Landroid/location/Location;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->i()Landroid/location/Location;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->g(Landroid/location/Location;)I

    move-result v1

    invoke-static {p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->g(Landroid/location/Location;)I

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method b(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/googlenav/friend/android/B;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/friend/android/B;-><init>(Lcom/google/googlenav/friend/android/LocationFriendService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "HandleLocation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method b(Landroid/location/Location;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->d(Landroid/location/Location;)Lcom/google/googlenav/friend/android/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Lcom/google/googlenav/friend/android/e;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->c(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Landroid/content/Context;)V

    return-void
.end method

.method c(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->d()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->c()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->i:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->b(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->a()V

    :cond_2
    throw v0
.end method

.method declared-synchronized c(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->n:Lcom/google/googlenav/friend/android/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->b:Lcom/google/googlenav/friend/android/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/android/p;->a(Lcom/google/googlenav/friend/android/K;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->n:Lcom/google/googlenav/friend/android/K;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/K;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->n:Lcom/google/googlenav/friend/android/K;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->b:Lcom/google/googlenav/friend/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/android/p;->a(Landroid/location/Location;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(Landroid/location/Location;)Lcom/google/googlenav/friend/android/e;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/friend/android/e;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/e;-><init>()V

    iput-object p1, v0, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->c:Lo/bI;

    if-nez v1, :cond_0

    new-instance v1, Lo/bI;

    invoke-direct {v1}, Lo/bI;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->c:Lo/bI;

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->f(Landroid/location/Location;)Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/friend/android/e;->b:Law/e;

    iget-object v1, v0, Lcom/google/googlenav/friend/android/e;->b:Law/e;

    invoke-direct {p0, v1}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Law/e;)V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->c:Lo/bI;

    iget-object v2, v0, Lcom/google/googlenav/friend/android/e;->b:Law/e;

    invoke-virtual {v1, v2}, Lo/bI;->a(Law/e;)V

    invoke-static {p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->g(Landroid/location/Location;)I

    move-result v1

    iput v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    iget v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lcom/google/googlenav/friend/android/e;->b:Law/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    invoke-static {p0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->c:Z

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->c:Lo/bI;

    iget v2, v0, Lcom/google/googlenav/friend/android/e;->g:I

    invoke-virtual {v1, v2}, Lo/bI;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->d:Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->e(Landroid/location/Location;)V

    iget v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    iget-boolean v2, v0, Lcom/google/googlenav/friend/android/e;->d:Z

    invoke-static {p0, v1, v2}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;IZ)V

    iget-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->c:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->d:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    if-eq v1, v5, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->e:Z

    iget-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->c:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->d:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/google/googlenav/friend/android/e;->g:I

    if-eq v1, v5, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/e;->f:Z

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method d()V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/app/Service;)Lcom/google/googlenav/login/j;

    return-void
.end method

.method e()V
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    invoke-virtual {v0}, LT/c;->d()V

    return-void
.end method

.method f()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->k:J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ln/a;->a(Z)V

    invoke-static {}, Lo/aX;->l()V

    return-void
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->h:Z

    return v0
.end method

.method h()Z
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->i:Landroid/location/Location;

    return-object v0
.end method

.method j()Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/android/S;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method k()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public l()V
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->f:I

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    new-instance v0, Lcom/google/googlenav/friend/android/C;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/C;-><init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->e:Landroid/os/Handler;

    sget-object v0, Lcom/google/googlenav/friend/android/LocationFriendService;->a:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/LocationFriendService;->e()V

    new-instance v0, Lcom/google/googlenav/friend/android/E;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/E;-><init>(Lcom/google/googlenav/friend/android/LocationFriendService;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->m:Lcom/google/googlenav/friend/android/E;

    new-instance v0, Lcom/google/googlenav/friend/android/u;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->m:Lcom/google/googlenav/friend/android/E;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/googlenav/friend/android/u;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/I;Lcom/google/googlenav/friend/android/E;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->d:Lcom/google/googlenav/friend/android/u;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->j:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/google/googlenav/friend/android/p;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->m:Lcom/google/googlenav/friend/android/E;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/googlenav/friend/android/p;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/I;Lcom/google/googlenav/friend/android/E;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->b:Lcom/google/googlenav/friend/android/p;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/LocationFriendService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "LocationFriendService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/LocationFriendService;->g:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->s()V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->r()V

    :cond_1
    sget-object v0, Lcom/google/googlenav/friend/android/LocationFriendService;->a:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/LocationFriendService;->a(Landroid/content/Intent;)V

    return-void
.end method
