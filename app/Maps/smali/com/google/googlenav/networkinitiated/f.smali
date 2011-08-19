.class public Lcom/google/googlenav/networkinitiated/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/googlenav/networkinitiated/c;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private final b:Landroid/os/PowerManager$WakeLock;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:I

.field private f:J

.field private final g:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, LA/n;->a()V

    iput-object v1, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/google/googlenav/networkinitiated/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UpdateLocation"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/google/googlenav/networkinitiated/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/networkinitiated/h;-><init>(Lcom/google/googlenav/networkinitiated/f;)V

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->c:Landroid/os/Handler;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private e(Landroid/location/Location;)Lo/an;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v4, v0

    invoke-static/range {p1 .. p1}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/googlenav/networkinitiated/i;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->al()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    move-object/from16 v1, p0

    move-object/from16 v18, p1

    invoke-direct/range {v0 .. v18}, Lcom/google/googlenav/networkinitiated/i;-><init>(Lcom/google/googlenav/networkinitiated/f;Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJLandroid/location/Location;)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/an;->a(F)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/an;->b(F)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/an;->a(D)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method a(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->b(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->e(Landroid/location/Location;)Lo/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "updateLocation"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/googlenav/networkinitiated/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "timeout"

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/networkinitiated/f;->f:J

    iget-wide v0, p0, Lcom/google/googlenav/networkinitiated/f;->f:J

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/networkinitiated/f;->a(J)V

    const-string v0, "useGps"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/networkinitiated/f;->d:Z

    const-string v0, "minAccuracy"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/networkinitiated/f;->e:I

    iget-boolean v0, p0, Lcom/google/googlenav/networkinitiated/f;->d:Z

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/f;->a(Z)V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method b(Landroid/location/Location;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/f;->d()V

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.google.googlenav.networkinitiated.NetworkInitiatedHandler.PENDING_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/f;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v1, "com.google.googlenav.networkinitiated.NetworkInitiatedHandler.PENDING_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/location/Location;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->d(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/networkinitiated/f;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/networkinitiated/f;->c()V

    :cond_0
    return-void
.end method

.method d(Landroid/location/Location;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/networkinitiated/f;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/googlenav/networkinitiated/f;->e:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/networkinitiated/f;->a(Landroid/location/Location;)V

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
