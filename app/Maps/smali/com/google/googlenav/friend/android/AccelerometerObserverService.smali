.class public Lcom/google/googlenav/friend/android/AccelerometerObserverService;
.super Landroid/app/Service;


# instance fields
.field protected a:[F

.field protected b:I

.field protected c:J

.field protected d:Z

.field protected e:J

.field protected f:Landroid/os/PowerManager$WakeLock;

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x3d38

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->g:F

    iput v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->h:F

    iput v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->i:F

    const/16 v0, 0x3c

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a:[F

    iput v1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b:I

    iput-wide v2, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c:J

    iput-boolean v1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    iput-wide v2, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/google/googlenav/friend/android/y;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/y;-><init>(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->j:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 6

    const/4 v5, 0x0

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const-string v1, "activity_level"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->g:F

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F
    .locals 0

    iput p1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->g:F

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->h:F

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F
    .locals 0

    iput p1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->h:F

    return p1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->i:F

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F
    .locals 0

    iput p1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->i:F

    return p1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/high16 v0, 0x4248

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method protected a(F)Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->al()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    const/high16 v2, 0x4296

    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(F)Z

    move-result v2

    invoke-static {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/32 v3, 0xea60

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->e:J

    iget-boolean v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->e:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d()F

    move-result v1

    const-string v2, "activity_level"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "burst_active"

    iget-boolean v2, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->d:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "timestamp"

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public d()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x4270

    div-float v0, v1, v0

    return v0
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

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-class v2, Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, v1}, Ln/a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a()V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->j:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->stopSelf()V

    goto :goto_0
.end method
