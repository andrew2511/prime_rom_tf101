.class public LQ/d;
.super LQ/g;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:F


# instance fields
.field private final A:Ljava/util/WeakHashMap;

.field private final B:Ljava/util/Map;

.field private C:LQ/a;

.field private D:Landroid/view/WindowManager;

.field private E:Ljava/lang/reflect/Method;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/hardware/SensorManager;

.field private final e:LQ/f;

.field private f:I

.field private g:F

.field private h:F

.field private i:Landroid/hardware/Sensor;

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/hardware/Sensor;

.field private final l:[F

.field private final m:[F

.field private final n:[F

.field private o:J

.field private p:J

.field private final q:[F

.field private final r:[F

.field private final s:[F

.field private t:I

.field private u:I

.field private v:I

.field private w:LQ/e;

.field private final x:Lac/p;

.field private y:J

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x4000

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    div-float/2addr v0, v1

    sput v0, LQ/d;->a:F

    return-void
.end method

.method public constructor <init>(LQ/e;Lac/p;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, -0x1

    invoke-direct {p0}, LQ/g;-><init>()V

    new-instance v0, LQ/f;

    invoke-direct {v0, v3}, LQ/f;-><init>(Z)V

    iput-object v0, p0, LQ/d;->e:LQ/f;

    iput v1, p0, LQ/d;->f:I

    const/high16 v0, -0x4080

    iput v0, p0, LQ/d;->g:F

    const/high16 v0, 0x7fc0

    iput v0, p0, LQ/d;->h:F

    new-array v0, v2, [F

    iput-object v0, p0, LQ/d;->l:[F

    new-array v0, v2, [F

    iput-object v0, p0, LQ/d;->m:[F

    new-array v0, v2, [F

    iput-object v0, p0, LQ/d;->n:[F

    new-array v0, v4, [F

    iput-object v0, p0, LQ/d;->q:[F

    new-array v0, v4, [F

    iput-object v0, p0, LQ/d;->r:[F

    new-array v0, v2, [F

    iput-object v0, p0, LQ/d;->s:[F

    iput v1, p0, LQ/d;->t:I

    iput v1, p0, LQ/d;->u:I

    iput v1, p0, LQ/d;->v:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LQ/d;->A:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LQ/d;->B:Ljava/util/Map;

    new-instance v0, LQ/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ/a;-><init>(LQ/b;)V

    iput-object v0, p0, LQ/d;->C:LQ/a;

    iput-object p1, p0, LQ/d;->w:LQ/e;

    iput-object p2, p0, LQ/d;->x:Lac/p;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cdma_shadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, LQ/d;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Landroid/hardware/SensorManager;
    .locals 2

    iget-object v0, p0, LQ/d;->d:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, LQ/d;->c:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LQ/d;->d:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, LQ/d;->d:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private l()I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, LQ/d;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, LQ/d;->v:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LQ/d;->E:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQ/d;->D:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LQ/d;->E:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    iget-object v0, p0, LQ/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized m()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LQ/d;->w:LQ/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, LQ/d;->x:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    iget-wide v0, p0, LQ/d;->y:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, LQ/d;->w:LQ/e;

    invoke-interface {v0}, LQ/e;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-wide v4, p0, LQ/d;->y:J

    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, LQ/d;->z:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LQ/d;->B:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, LQ/d;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/c;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v4, LQ/b;->a:[I

    invoke-virtual {v0}, LQ/c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LQ/d;->A:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_3
    iget-object v0, p0, LQ/d;->A:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQ/d;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(LQ/i;)V
    .locals 2

    iget-object v0, p0, LQ/d;->B:Ljava/util/Map;

    sget-object v1, LQ/c;->a:LQ/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, LQ/d;->c:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, LQ/d;->c:Landroid/content/Context;

    iput-object v3, p0, LQ/d;->d:Landroid/hardware/SensorManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, LQ/d;->D:Landroid/view/WindowManager;

    iget-object v0, p0, LQ/d;->D:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "getRotation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, LQ/d;->E:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, LQ/d;->E:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, LQ/d;->E:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LQ/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LQ/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(LQ/i;)V
    .locals 2

    iget-object v0, p0, LQ/d;->B:Ljava/util/Map;

    sget-object v1, LQ/c;->b:LQ/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LQ/d;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LQ/d;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized e()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, LQ/d;->o:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQ/d;->p:J

    invoke-direct {p0}, LQ/d;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/Z;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, LQ/d;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LQ/d;->k:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->k:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LQ/d;->i:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->i:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LQ/d;->j:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->j:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LQ/d;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, LQ/d;->i:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, LQ/d;->j:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, LQ/d;->k:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 9

    const/4 v7, 0x2

    const/high16 v6, 0x42b4

    const v5, 0x42652ee0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LQ/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ/d;->n:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0}, LQ/d;->l()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, LQ/d;->x:Lac/p;

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    invoke-static {v0}, LA/h;->a(F)F

    move-result v0

    invoke-direct {p0}, LQ/d;->m()V

    iget v3, p0, LQ/d;->z:F

    add-float/2addr v0, v3

    invoke-static {v0}, LA/h;->a(F)F

    move-result v0

    iget-object v3, p0, LQ/d;->e:LQ/f;

    invoke-virtual {v3, v1, v2, v0}, LQ/f;->a(JF)F

    move-result v0

    iput v0, p0, LQ/d;->g:F

    invoke-direct {p0}, LQ/d;->n()V

    iget-object v0, p0, LQ/d;->C:LQ/a;

    iget v3, p0, LQ/d;->g:F

    iget v4, p0, LQ/d;->h:F

    invoke-static {v0, v1, v2, v3, v4}, LQ/a;->a(LQ/a;JFF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LQ/d;->A:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/i;

    iget v2, p0, LQ/d;->g:F

    iget v3, p0, LQ/d;->h:F

    invoke-interface {v0, v2, v3}, LQ/i;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    add-float/2addr v0, v6

    goto :goto_0

    :pswitch_1
    sub-float/2addr v0, v6

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x4334

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, LQ/d;->q:[F

    const/4 v1, 0x0

    iget-object v2, p0, LQ/d;->m:[F

    iget-object v3, p0, LQ/d;->l:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, LQ/d;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v0, v7

    move v1, v4

    :goto_2
    iget-object v2, p0, LQ/d;->q:[F

    iget-object v3, p0, LQ/d;->r:[F

    invoke-static {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_3
    iget-object v0, p0, LQ/d;->r:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    sget v1, LQ/d;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, LQ/d;->r:[F

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, LQ/d;->q:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_4
    iget-object v0, p0, LQ/d;->q:[F

    iget-object v1, p0, LQ/d;->s:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, LQ/d;->s:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v5

    sub-float/2addr v0, v6

    iput v0, p0, LQ/d;->h:F

    :goto_3
    iget-object v0, p0, LQ/d;->s:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v5

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x81

    move v1, v7

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x82

    move v1, v0

    move v0, v4

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x81

    const/16 v1, 0x82

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_2

    :cond_5
    iget-object v0, p0, LQ/d;->r:[F

    iget-object v1, p0, LQ/d;->s:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, LQ/d;->s:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v5

    iput v0, p0, LQ/d;->h:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LQ/d;->j:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_1

    iput p2, p0, LQ/d;->u:I

    :cond_0
    :goto_0
    iget-object v0, p0, LQ/d;->k:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_2

    move v1, p2

    :goto_1
    iget v0, p0, LQ/d;->f:I

    if-eq v1, v0, :cond_3

    iput v1, p0, LQ/d;->f:I

    invoke-direct {p0}, LQ/d;->n()V

    iget-object v0, p0, LQ/d;->A:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/i;

    invoke-interface {v0, v1}, LQ/i;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, LQ/d;->i:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_0

    iput p2, p0, LQ/d;->t:I

    goto :goto_0

    :cond_2
    iget v0, p0, LQ/d;->u:I

    iget v1, p0, LQ/d;->t:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->i:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    iget-object v2, p0, LQ/d;->l:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQ/d;->x:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LQ/d;->o:J

    :cond_0
    :goto_0
    iget-wide v0, p0, LQ/d;->o:J

    iget-wide v2, p0, LQ/d;->p:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->k:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, LQ/d;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->j:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    iget-object v2, p0, LQ/d;->m:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQ/d;->x:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LQ/d;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, LQ/d;->k:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    iget-object v2, p0, LQ/d;->n:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
