.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;,
        Landroid/hardware/SensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final EVENT_JudgeMagneticFieldAccuracy:I

.field private accuracyErrorTimes:I

.field private accuracyHighTimes:I

.field private compassMessageDelayTime:I

.field private firstTimeShowCompassCalibrationDialog:Z

.field private hasCompassCalibrationDialog:Z

.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private minimumAccuracyErrorTimes:I

.field private minimumAccuracyHighTimes:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 401
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 405
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 412
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 8
    .parameter "mainLooper"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v3, 0xc8

    iput v3, p0, Landroid/hardware/SensorManager;->EVENT_JudgeMagneticFieldAccuracy:I

    .line 107
    iput v4, p0, Landroid/hardware/SensorManager;->accuracyErrorTimes:I

    .line 108
    iput v4, p0, Landroid/hardware/SensorManager;->accuracyHighTimes:I

    .line 110
    const v3, 0xea60

    iput v3, p0, Landroid/hardware/SensorManager;->compassMessageDelayTime:I

    .line 120
    const/16 v3, 0x384

    iput v3, p0, Landroid/hardware/SensorManager;->minimumAccuracyErrorTimes:I

    .line 121
    const/16 v3, 0x64

    iput v3, p0, Landroid/hardware/SensorManager;->minimumAccuracyHighTimes:I

    .line 122
    iput-boolean v5, p0, Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z

    .line 123
    iput-boolean v4, p0, Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z

    .line 394
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 731
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 734
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 735
    :try_start_2a
    sget-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v4, :cond_92

    .line 736
    const/4 v4, 0x1

    sput-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 738
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 740
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    sput-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 742
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_94

    if-eqz v4, :cond_52

    .line 746
    :try_start_45
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v4

    sput v4, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_94
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_52} :catch_97

    .line 758
    :cond_52
    :goto_52
    :try_start_52
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 759
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 760
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 762
    .local v1, i:I
    :cond_58
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 763
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 765
    if-ltz v1, :cond_7a

    .line 768
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 769
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v4, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 772
    :cond_7a
    if-gtz v1, :cond_58

    .line 774
    new-instance v4, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, p0, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(Landroid/hardware/SensorManager;I)V

    sput-object v4, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 775
    new-instance v4, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v4}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v4, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 777
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_92
    monitor-exit v3

    .line 778
    return-void

    .line 777
    :catchall_94
    move-exception v4

    monitor-exit v3
    :try_end_96
    .catchall {:try_start_52 .. :try_end_96} :catchall_94

    throw v4

    .line 753
    :catch_97
    move-exception v4

    goto :goto_52
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 86
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$100(Landroid/hardware/SensorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/hardware/SensorManager$SensorEventPool;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/SensorManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/SensorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z

    return v0
.end method

.method static synthetic access$202(Landroid/hardware/SensorManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z

    return p1
.end method

.method static synthetic access$300(Landroid/hardware/SensorManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->accuracyErrorTimes:I

    return v0
.end method

.method static synthetic access$302(Landroid/hardware/SensorManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Landroid/hardware/SensorManager;->accuracyErrorTimes:I

    return p1
.end method

.method static synthetic access$308(Landroid/hardware/SensorManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->accuracyErrorTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/hardware/SensorManager;->accuracyErrorTimes:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/SensorManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->minimumAccuracyErrorTimes:I

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/SensorManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->compassMessageDelayTime:I

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/SensorManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->accuracyHighTimes:I

    return v0
.end method

.method static synthetic access$702(Landroid/hardware/SensorManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Landroid/hardware/SensorManager;->accuracyHighTimes:I

    return p1
.end method

.method static synthetic access$708(Landroid/hardware/SensorManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->accuracyHighTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/hardware/SensorManager;->accuracyHighTimes:I

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/SensorManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/SensorManager;->minimumAccuracyHighTimes:I

    return v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .registers 8
    .parameter "sensor"

    .prologue
    .line 1143
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1144
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1146
    const/4 v4, 0x1

    .line 1151
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_19
    return v4

    .line 1149
    :cond_1a
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1151
    .local v0, handle:I
    sget v4, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_19
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .registers 9
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1130
    const/4 v4, 0x0

    .line 1131
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1132
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1133
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1135
    .local v0, handle:I
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1139
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_27
    return v4
.end method

.method public static getAltitude(FF)F
    .registers 9
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1764
    const v0, 0x3e42dcae

    .line 1765
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .registers 28
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 2012
    const/4 v4, 0x0

    .local v4, rd1:F
    const/4 v4, 0x0

    .local v4, rd4:F
    const/4 v4, 0x0

    .local v4, rd6:F
    const/4 v4, 0x0

    .local v4, rd7:F
    const/4 v4, 0x0

    .line 2013
    .local v4, rd8:F
    const/4 v13, 0x0

    .local v13, ri0:F
    const/4 v14, 0x0

    .local v14, ri1:F
    const/4 v15, 0x0

    .local v15, ri2:F
    const/16 v16, 0x0

    .local v16, ri3:F
    const/16 v17, 0x0

    .local v17, ri4:F
    const/16 v18, 0x0

    .local v18, ri5:F
    const/16 v19, 0x0

    .local v19, ri6:F
    const/16 v20, 0x0

    .local v20, ri7:F
    const/16 v21, 0x0

    .line 2014
    .local v21, ri8:F
    const/4 v4, 0x0

    .local v4, pri0:F
    const/4 v5, 0x0

    .local v5, pri1:F
    const/4 v6, 0x0

    .local v6, pri2:F
    const/4 v7, 0x0

    .local v7, pri3:F
    const/4 v8, 0x0

    .local v8, pri4:F
    const/4 v9, 0x0

    .local v9, pri5:F
    const/4 v10, 0x0

    .local v10, pri6:F
    const/4 v11, 0x0

    .local v11, pri7:F
    const/4 v12, 0x0

    .line 2017
    .local v12, pri8:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f0

    .line 2018
    const/4 v13, 0x0

    aget v13, p1, v13

    .line 2019
    const/4 v14, 0x1

    aget v14, p1, v14

    .line 2020
    const/4 v15, 0x2

    aget v15, p1, v15

    .line 2021
    const/16 v16, 0x3

    aget v16, p1, v16

    .line 2022
    const/16 v17, 0x4

    aget v17, p1, v17

    .line 2023
    const/16 v18, 0x5

    aget v18, p1, v18

    .line 2024
    const/16 v19, 0x6

    aget v19, p1, v19

    .line 2025
    const/16 v20, 0x7

    aget v20, p1, v20

    .line 2026
    const/16 v21, 0x8

    aget p1, p1, v21

    .end local v21           #ri8:F
    .local p1, ri8:F
    move/from16 v21, p1

    .line 2039
    .end local p1           #ri8:F
    .restart local v21       #ri8:F
    :cond_4d
    :goto_4d
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p1, v0

    const/16 v22, 0x9

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_122

    .line 2040
    const/16 p1, 0x0

    aget p1, p2, p1

    .line 2041
    .end local v4           #pri0:F
    .local p1, pri0:F
    const/4 v4, 0x1

    aget v4, p2, v4

    .line 2042
    .end local v5           #pri1:F
    .local v4, pri1:F
    const/4 v5, 0x2

    aget v5, p2, v5

    .line 2043
    .end local v6           #pri2:F
    .local v5, pri2:F
    const/4 v6, 0x3

    aget v6, p2, v6

    .line 2044
    .end local v7           #pri3:F
    .local v6, pri3:F
    const/4 v7, 0x4

    aget v7, p2, v7

    .line 2045
    .end local v8           #pri4:F
    .local v7, pri4:F
    const/4 v8, 0x5

    aget v8, p2, v8

    .line 2046
    .end local v9           #pri5:F
    .local v8, pri5:F
    const/4 v9, 0x6

    aget v9, p2, v9

    .line 2047
    .end local v10           #pri6:F
    .local v9, pri6:F
    const/4 v10, 0x7

    aget v10, p2, v10

    .line 2048
    .end local v11           #pri7:F
    .local v10, pri7:F
    const/16 v11, 0x8

    aget p2, p2, v11

    .end local v12           #pri8:F
    .local p2, pri8:F
    move/from16 v24, p2

    .end local p2           #pri8:F
    .local v24, pri8:F
    move/from16 p2, v4

    .end local v4           #pri1:F
    .local p2, pri1:F
    move v4, v5

    .end local v5           #pri2:F
    .local v4, pri2:F
    move v5, v6

    .end local v6           #pri3:F
    .local v5, pri3:F
    move v6, v7

    .end local v7           #pri4:F
    .local v6, pri4:F
    move v7, v8

    .end local v8           #pri5:F
    .local v7, pri5:F
    move v8, v9

    .end local v9           #pri6:F
    .local v8, pri6:F
    move v9, v10

    .end local v10           #pri7:F
    .local v9, pri7:F
    move/from16 v10, v24

    .line 2064
    .end local v24           #pri8:F
    .local v10, pri8:F
    :goto_83
    mul-float p1, p1, v14

    mul-float v5, v5, v17

    add-float p1, p1, v5

    mul-float v5, v8, v20

    add-float p1, p1, v5

    .line 2065
    .local p1, rd1:F
    mul-float p2, p2, v14

    mul-float v5, v6, v17

    add-float p2, p2, v5

    mul-float v5, v9, v20

    add-float p2, p2, v5

    .line 2066
    .local p2, rd4:F
    mul-float v5, v4, v13

    mul-float v6, v7, v16

    add-float/2addr v5, v6

    mul-float v6, v10, v19

    add-float/2addr v5, v6

    .line 2067
    .local v5, rd6:F
    mul-float v6, v4, v14

    mul-float v8, v7, v17

    add-float/2addr v6, v8

    mul-float v8, v10, v20

    add-float/2addr v6, v8

    .line 2068
    .local v6, rd7:F
    mul-float/2addr v4, v15

    mul-float v7, v7, v18

    add-float/2addr v4, v7

    mul-float v7, v10, v21

    add-float/2addr v4, v7

    .line 2070
    .local v4, rd8:F
    const/4 v7, 0x0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v8, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 p1, v0

    move-wide v0, v8

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v7           #pri5:F
    .end local v8           #pri6:F
    .end local p1           #rd1:F
    move-result-wide p1

    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 p1, v0

    aput p1, p0, v7

    .line 2071
    const/16 p1, 0x1

    move v0, v6

    neg-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    .end local v6           #rd7:F
    .end local p2           #rd4:F
    move-result-wide v6

    move-wide v0, v6

    double-to-float v0, v0

    move/from16 p2, v0

    aput p2, p0, p1

    .line 2072
    const/16 p1, 0x2

    move v0, v5

    neg-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v5, v0

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .end local v5           #rd6:F
    move-result-wide v4

    .end local v4           #rd8:F
    move-wide v0, v4

    double-to-float v0, v0

    move/from16 p2, v0

    aput p2, p0, p1

    .line 2074
    return-void

    .line 2027
    .local v4, pri0:F
    .local v5, pri1:F
    .local v6, pri2:F
    .local v7, pri3:F
    .local v8, pri4:F
    .local v9, pri5:F
    .local v10, pri6:F
    .restart local v11       #pri7:F
    .restart local v12       #pri8:F
    .local p1, R:[F
    .local p2, prevR:[F
    :cond_f0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4d

    .line 2028
    const/4 v13, 0x0

    aget v13, p1, v13

    .line 2029
    const/4 v14, 0x1

    aget v14, p1, v14

    .line 2030
    const/4 v15, 0x2

    aget v15, p1, v15

    .line 2031
    const/16 v16, 0x4

    aget v16, p1, v16

    .line 2032
    const/16 v17, 0x5

    aget v17, p1, v17

    .line 2033
    const/16 v18, 0x6

    aget v18, p1, v18

    .line 2034
    const/16 v19, 0x8

    aget v19, p1, v19

    .line 2035
    const/16 v20, 0x9

    aget v20, p1, v20

    .line 2036
    const/16 v21, 0xa

    aget p1, p1, v21

    .end local v21           #ri8:F
    .local p1, ri8:F
    move/from16 v21, p1

    .end local p1           #ri8:F
    .restart local v21       #ri8:F
    goto/16 :goto_4d

    .line 2049
    :cond_122
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p1, v0

    const/16 v22, 0x10

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_15c

    .line 2050
    const/16 p1, 0x0

    aget p1, p2, p1

    .line 2051
    .end local v4           #pri0:F
    .local p1, pri0:F
    const/4 v4, 0x1

    aget v4, p2, v4

    .line 2052
    .end local v5           #pri1:F
    .local v4, pri1:F
    const/4 v5, 0x2

    aget v5, p2, v5

    .line 2053
    .end local v6           #pri2:F
    .local v5, pri2:F
    const/4 v6, 0x4

    aget v6, p2, v6

    .line 2054
    .end local v7           #pri3:F
    .local v6, pri3:F
    const/4 v7, 0x5

    aget v7, p2, v7

    .line 2055
    .end local v8           #pri4:F
    .local v7, pri4:F
    const/4 v8, 0x6

    aget v8, p2, v8

    .line 2056
    .end local v9           #pri5:F
    .local v8, pri5:F
    const/16 v9, 0x8

    aget v9, p2, v9

    .line 2057
    .end local v10           #pri6:F
    .local v9, pri6:F
    const/16 v10, 0x9

    aget v10, p2, v10

    .line 2058
    .end local v11           #pri7:F
    .local v10, pri7:F
    const/16 v11, 0xa

    aget p2, p2, v11

    .end local v12           #pri8:F
    .local p2, pri8:F
    move/from16 v24, p2

    .end local p2           #pri8:F
    .restart local v24       #pri8:F
    move/from16 p2, v4

    .end local v4           #pri1:F
    .local p2, pri1:F
    move v4, v5

    .end local v5           #pri2:F
    .local v4, pri2:F
    move v5, v6

    .end local v6           #pri3:F
    .local v5, pri3:F
    move v6, v7

    .end local v7           #pri4:F
    .local v6, pri4:F
    move v7, v8

    .end local v8           #pri5:F
    .local v7, pri5:F
    move v8, v9

    .end local v9           #pri6:F
    .local v8, pri6:F
    move v9, v10

    .end local v10           #pri7:F
    .local v9, pri7:F
    move/from16 v10, v24

    .end local v24           #pri8:F
    .local v10, pri8:F
    goto/16 :goto_83

    .end local p1           #pri0:F
    .local v4, pri0:F
    .local v5, pri1:F
    .local v6, pri2:F
    .local v7, pri3:F
    .local v8, pri4:F
    .local v9, pri5:F
    .local v10, pri6:F
    .restart local v11       #pri7:F
    .restart local v12       #pri8:F
    .local p2, prevR:[F
    :cond_15c
    move/from16 p2, v5

    .end local v5           #pri1:F
    .local p2, pri1:F
    move/from16 p1, v4

    .end local v4           #pri0:F
    .restart local p1       #pri0:F
    move v5, v7

    .end local v7           #pri3:F
    .local v5, pri3:F
    move v4, v6

    .end local v6           #pri2:F
    .local v4, pri2:F
    move v6, v8

    .end local v8           #pri4:F
    .local v6, pri4:F
    move v7, v9

    .end local v9           #pri5:F
    .local v7, pri5:F
    move v8, v10

    .end local v10           #pri6:F
    .local v8, pri6:F
    move v9, v11

    .end local v11           #pri7:F
    .local v9, pri7:F
    move v10, v12

    .end local v12           #pri8:F
    .local v10, pri8:F
    goto/16 :goto_83
.end method

.method public static getInclination([F)F
    .registers 5
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1509
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 1510
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1512
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_12
.end method

.method private getLegacySensorType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 781
    packed-switch p1, :pswitch_data_10

    .line 791
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 783
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 785
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 787
    :pswitch_a
    const/16 v0, 0x80

    goto :goto_4

    .line 789
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 781
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .registers 11
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1722
    array-length v0, p0

    if-ne v0, v8, :cond_34

    .line 1723
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1724
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1725
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1731
    :goto_33
    return-object p1

    .line 1727
    :cond_34
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1728
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1729
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_33
.end method

.method public static getQuaternionFromVector([F[F)V
    .registers 10
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2159
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 2160
    aget v0, p1, v7

    aput v0, p0, v3

    .line 2165
    :goto_d
    aget v0, p1, v3

    aput v0, p0, v4

    .line 2166
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2167
    aget v0, p1, v5

    aput v0, p0, v7

    .line 2168
    return-void

    .line 2162
    :cond_1a
    const/high16 v0, 0x3f80

    aget v1, p1, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    .line 2163
    aget v0, p0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_41

    aget v0, p0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_3e
    aput v0, p0, v3

    goto :goto_d

    :cond_41
    move v0, v6

    goto :goto_3e
.end method

.method static getRotation()I
    .registers 2

    .prologue
    .line 1779
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1780
    :try_start_3
    sget v1, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 1781
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .registers 19
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1434
    const/4 v2, 0x0

    aget v2, p2, v2

    .line 1435
    .local v2, Ax:F
    const/4 v3, 0x1

    aget v3, p2, v3

    .line 1436
    .local v3, Ay:F
    const/4 v4, 0x2

    aget v4, p2, v4

    .line 1437
    .local v4, Az:F
    const/16 p2, 0x0

    aget v5, p3, p2

    .line 1438
    .end local p2
    .local v5, Ex:F
    const/16 p2, 0x1

    aget v6, p3, p2

    .line 1439
    .local v6, Ey:F
    const/16 p2, 0x2

    aget v7, p3, p2

    .line 1440
    .local v7, Ez:F
    mul-float p2, v6, v4

    mul-float p3, v7, v3

    sub-float p2, p2, p3

    .line 1441
    .local p2, Hx:F
    mul-float p3, v7, v2

    mul-float v8, v5, v4

    sub-float p3, p3, v8

    .line 1442
    .local p3, Hy:F
    mul-float v8, v5, v3

    mul-float v9, v6, v2

    sub-float v10, v8, v9

    .line 1443
    .local v10, Hz:F
    mul-float v8, p2, p2

    mul-float v9, p3, p3

    add-float/2addr v8, v9

    mul-float v9, v10, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1444
    .local v8, normH:F
    const v9, 0x3dcccccd

    cmpg-float v9, v8, v9

    if-gez v9, :cond_4b

    .line 1447
    const/4 p0, 0x0

    move/from16 p1, v3

    .end local v3           #Ay:F
    .local p1, Ay:F
    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 v14, p2

    .end local p2           #Hx:F
    .local v14, Hx:F
    move/from16 p2, v4

    .end local v4           #Az:F
    .local p2, Az:F
    move v4, p0

    move p0, v2

    .end local v2           #Ax:F
    .local p0, Ax:F
    move/from16 v2, p3

    .end local p3           #Hy:F
    .local v2, Hy:F
    move/from16 p3, v14

    .line 1491
    .end local v5           #Ex:F
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v8           #normH:F
    .end local v14           #Hx:F
    .local p3, Hx:F
    :goto_4a
    return v4

    .line 1449
    .local v2, Ax:F
    .local v3, Ay:F
    .restart local v4       #Az:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #normH:F
    .restart local v10       #Hz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Hx:F
    .local p3, Hy:F
    :cond_4b
    const/high16 v9, 0x3f80

    div-float v11, v9, v8

    .line 1450
    .local v11, invH:F
    mul-float v8, p2, v11

    .line 1451
    .end local p2           #Hx:F
    .local v8, Hx:F
    mul-float v9, p3, v11

    .line 1452
    .end local p3           #Hy:F
    .local v9, Hy:F
    mul-float/2addr v10, v11

    .line 1453
    const/high16 p2, 0x3f80

    mul-float p3, v2, v2

    mul-float v11, v3, v3

    add-float p3, p3, v11

    mul-float v11, v4, v4

    add-float p3, p3, v11

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .end local v11           #invH:F
    move-result-wide v11

    move-wide v0, v11

    double-to-float v0, v0

    move/from16 p3, v0

    div-float v11, p2, p3

    .line 1454
    .local v11, invA:F
    mul-float p2, v2, v11

    .line 1455
    .end local v2           #Ax:F
    .local p2, Ax:F
    mul-float p3, v3, v11

    .line 1456
    .end local v3           #Ay:F
    .local p3, Ay:F
    mul-float v2, v4, v11

    .line 1457
    .end local v4           #Az:F
    .local v2, Az:F
    mul-float v3, p3, v10

    mul-float v4, v2, v9

    sub-float/2addr v3, v4

    .line 1458
    .local v3, Mx:F
    mul-float v4, v2, v8

    mul-float v11, p2, v10

    sub-float/2addr v4, v11

    .line 1459
    .local v4, My:F
    mul-float v11, p2, v9

    mul-float v12, p3, v8

    sub-float/2addr v11, v12

    .line 1460
    .local v11, Mz:F
    if-eqz p0, :cond_a6

    .line 1461
    array-length v12, p0

    const/16 v13, 0x9

    if-ne v12, v13, :cond_105

    .line 1462
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    .line 1463
    const/4 v12, 0x3

    aput v3, p0, v12

    const/4 v12, 0x4

    aput v4, p0, v12

    const/4 v12, 0x5

    aput v11, p0, v12

    .line 1464
    const/4 v12, 0x6

    aput p2, p0, v12

    const/4 v12, 0x7

    aput p3, p0, v12

    const/16 v12, 0x8

    aput v2, p0, v12

    .line 1472
    :cond_a6
    :goto_a6
    if-eqz p1, :cond_f7

    .line 1476
    const/high16 p0, 0x3f80

    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    mul-float v13, v7, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #R:[F
    move-result-wide v12

    double-to-float v12, v12

    div-float v12, p0, v12

    .line 1477
    .local v12, invE:F
    mul-float p0, v5, v3

    mul-float v3, v6, v4

    add-float/2addr p0, v3

    mul-float v3, v7, v11

    add-float/2addr p0, v3

    mul-float/2addr p0, v12

    .line 1478
    .local p0, c:F
    mul-float v3, v5, p2

    mul-float v4, v6, p3

    add-float/2addr v3, v4

    mul-float v4, v7, v2

    add-float/2addr v3, v4

    mul-float/2addr v3, v12

    .line 1479
    .local v3, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    .end local v4           #My:F
    const/16 v5, 0x9

    if-ne v4, v5, :cond_14c

    .line 1480
    .end local v5           #Ex:F
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1481
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x4

    aput p0, p1, v4

    const/4 v4, 0x5

    aput v3, p1, v4

    .line 1482
    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x7

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0x8

    aput p0, p1, v3

    .line 1491
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local v12           #invE:F
    .end local p0           #c:F
    :cond_f7
    :goto_f7
    const/4 p0, 0x1

    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 p1, p3

    .end local p3           #Ay:F
    .local p1, Ay:F
    move v4, p0

    move/from16 p0, p2

    .end local p2           #Ax:F
    .local p0, Ax:F
    move/from16 p3, v8

    .end local v8           #Hx:F
    .local p3, Hx:F
    move/from16 p2, v2

    .end local v2           #Az:F
    .local p2, Az:F
    move v2, v9

    .end local v9           #Hy:F
    .local v2, Hy:F
    goto/16 :goto_4a

    .line 1465
    .local v2, Az:F
    .local v3, Mx:F
    .restart local v4       #My:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #Hx:F
    .restart local v9       #Hy:F
    .restart local v10       #Hz:F
    .restart local v11       #Mz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Ax:F
    .local p3, Ay:F
    :cond_105
    array-length v12, p0

    const/16 v13, 0x10

    if-ne v12, v13, :cond_a6

    .line 1466
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1467
    const/4 v12, 0x4

    aput v3, p0, v12

    const/4 v12, 0x5

    aput v4, p0, v12

    const/4 v12, 0x6

    aput v11, p0, v12

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1468
    const/16 v12, 0x8

    aput p2, p0, v12

    const/16 v12, 0x9

    aput p3, p0, v12

    const/16 v12, 0xa

    aput v2, p0, v12

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1469
    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, p0, v12

    goto/16 :goto_a6

    .line 1483
    .end local v4           #My:F
    .end local v5           #Ex:F
    .local v3, s:F
    .restart local v12       #invE:F
    .local p0, c:F
    :cond_14c
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_f7

    .line 1484
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1485
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x5

    aput p0, p1, v4

    const/4 v4, 0x6

    aput v3, p1, v4

    .line 1486
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v5, p1, v4

    const/16 v4, 0x9

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0xa

    aput p0, p1, v3

    .line 1487
    const/4 p0, 0x3

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0xc

    const/16 v6, 0xd

    const/16 v7, 0xe

    const/4 v11, 0x0

    aput v11, p1, v7

    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local p0           #c:F
    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v4

    aput v11, p1, v3

    aput v11, p1, p0

    .line 1488
    const/16 p0, 0xf

    const/high16 v3, 0x3f80

    aput v3, p1, p0

    goto/16 :goto_f7
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .registers 13
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2098
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2099
    .local v0, q1:F
    const/4 v1, 0x1

    aget v3, p1, v1

    .line 2100
    .local v3, q2:F
    const/4 v1, 0x2

    aget v5, p1, v1

    .line 2102
    .local v5, q3:F
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_70

    .line 2103
    const/4 v1, 0x3

    aget p1, p1, v1

    .line 2109
    .local p1, q0:F
    :goto_10
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    mul-float v7, v1, v0

    .line 2110
    .local v7, sq_q1:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v3

    mul-float v8, v1, v3

    .line 2111
    .local v8, sq_q2:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v5

    mul-float v9, v1, v5

    .line 2112
    .local v9, sq_q3:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    mul-float/2addr v1, v3

    .line 2113
    .local v1, q1_q2:F
    const/high16 v2, 0x4000

    mul-float/2addr v2, v5

    mul-float v6, v2, p1

    .line 2114
    .local v6, q3_q0:F
    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    mul-float/2addr v2, v5

    .line 2115
    .local v2, q1_q3:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v3

    mul-float/2addr v4, p1

    .line 2116
    .local v4, q2_q0:F
    const/high16 v10, 0x4000

    mul-float/2addr v3, v10

    mul-float/2addr v3, v5

    .line 2117
    .local v3, q2_q3:F
    const/high16 v5, 0x4000

    mul-float/2addr v0, v5

    mul-float/2addr p1, v0

    .line 2119
    .local p1, q1_q0:F
    array-length v0, p0

    .end local v0           #q1:F
    .end local v5           #q3:F
    const/16 v5, 0x9

    if-ne v0, v5, :cond_89

    .line 2120
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    aput v5, p0, v0

    .line 2121
    const/4 v0, 0x1

    sub-float v5, v1, v6

    aput v5, p0, v0

    .line 2122
    const/4 v0, 0x2

    add-float v5, v2, v4

    aput v5, p0, v0

    .line 2124
    const/4 v0, 0x3

    add-float/2addr v1, v6

    aput v1, p0, v0

    .line 2125
    .end local v1           #q1_q2:F
    const/4 v0, 0x4

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    sub-float/2addr v1, v9

    aput v1, p0, v0

    .line 2126
    const/4 v0, 0x5

    sub-float v1, v3, p1

    aput v1, p0, v0

    .line 2128
    const/4 v0, 0x6

    sub-float v1, v2, v4

    aput v1, p0, v0

    .line 2129
    const/4 v0, 0x7

    add-float/2addr p1, v3

    aput p1, p0, v0

    .line 2130
    .end local p1           #q1_q0:F
    const/16 p1, 0x8

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v7

    sub-float/2addr v0, v8

    aput v0, p0, p1

    .line 2150
    .end local v2           #q1_q3:F
    :cond_6f
    :goto_6f
    return-void

    .line 2105
    .end local v4           #q2_q0:F
    .end local v6           #q3_q0:F
    .end local v7           #sq_q1:F
    .end local v8           #sq_q2:F
    .end local v9           #sq_q3:F
    .restart local v0       #q1:F
    .local v3, q2:F
    .restart local v5       #q3:F
    .local p1, rotationVector:[F
    :cond_70
    const/high16 p1, 0x3f80

    mul-float v1, v0, v0

    sub-float/2addr p1, v1

    mul-float v1, v3, v3

    sub-float/2addr p1, v1

    mul-float v1, v5, v5

    sub-float/2addr p1, v1

    .line 2106
    .local p1, q0:F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_87

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    :goto_86
    goto :goto_10

    :cond_87
    const/4 p1, 0x0

    goto :goto_86

    .line 2131
    .end local v0           #q1:F
    .end local v5           #q3:F
    .restart local v1       #q1_q2:F
    .restart local v2       #q1_q3:F
    .local v3, q2_q3:F
    .restart local v4       #q2_q0:F
    .restart local v6       #q3_q0:F
    .restart local v7       #sq_q1:F
    .restart local v8       #sq_q2:F
    .restart local v9       #sq_q3:F
    .local p1, q1_q0:F
    :cond_89
    array-length v0, p0

    const/16 v5, 0x10

    if-ne v0, v5, :cond_6f

    .line 2132
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    aput v5, p0, v0

    .line 2133
    const/4 v0, 0x1

    sub-float v5, v1, v6

    aput v5, p0, v0

    .line 2134
    const/4 v0, 0x2

    add-float v5, v2, v4

    aput v5, p0, v0

    .line 2135
    const/4 v0, 0x3

    const/4 v5, 0x0

    aput v5, p0, v0

    .line 2137
    const/4 v0, 0x4

    add-float/2addr v1, v6

    aput v1, p0, v0

    .line 2138
    .end local v1           #q1_q2:F
    const/4 v0, 0x5

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    sub-float/2addr v1, v9

    aput v1, p0, v0

    .line 2139
    const/4 v0, 0x6

    sub-float v1, v3, p1

    aput v1, p0, v0

    .line 2140
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 2142
    const/16 v0, 0x8

    sub-float v1, v2, v4

    aput v1, p0, v0

    .line 2143
    const/16 v0, 0x9

    add-float/2addr p1, v3

    aput p1, p0, v0

    .line 2144
    .end local p1           #q1_q0:F
    const/16 p1, 0xa

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v7

    sub-float/2addr v0, v8

    aput v0, p0, p1

    .line 2145
    const/16 p1, 0xb

    const/4 v0, 0x0

    aput v0, p0, p1

    .line 2147
    const/16 p1, 0xc

    const/16 v0, 0xd

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, p0, v1

    .end local v2           #q1_q3:F
    aput v2, p0, v0

    aput v2, p0, p1

    .line 2148
    const/16 p1, 0xf

    const/high16 v0, 0x3f80

    aput v0, p0, p1

    goto :goto_6f
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 13
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 944
    if-nez p3, :cond_4

    .line 945
    const/4 v5, 0x0

    .line 972
    :goto_3
    return v5

    .line 947
    :cond_4
    const/4 v3, 0x0

    .line 949
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_32

    .line 951
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 952
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_32

    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 958
    :try_start_13
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 959
    if-nez v1, :cond_2a

    .line 962
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_34

    .line 963
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_24
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_37

    move-object v1, v2

    .line 965
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2a
    :try_start_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_34

    .line 967
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 969
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .end local v4           #sensor:Landroid/hardware/Sensor;
    :cond_32
    move v5, v3

    .line 972
    goto :goto_3

    .line 965
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v4       #sensor:Landroid/hardware/Sensor;
    :catchall_34
    move-exception v5

    :goto_35
    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_37
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_35
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .registers 8
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1594
    if-ne p0, p3, :cond_1a

    .line 1595
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1596
    .local v2, temp:[F
    monitor-enter v2

    .line 1598
    :try_start_5
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1599
    array-length v1, p3

    .line 1600
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_16

    .line 1601
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1602
    :cond_16
    const/4 v3, 0x1

    monitor-exit v2

    .line 1606
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_18
    return v3

    .line 1604
    .restart local v2       #temp:[F
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1f

    .line 1606
    .end local v2           #temp:[F
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_18

    .line 1604
    .restart local v2       #temp:[F
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .registers 15
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1623
    array-length v3, p3

    .line 1624
    .local v3, length:I
    array-length v0, p0

    if-eq v0, v3, :cond_6

    .line 1625
    const/4 p0, 0x0

    .line 1667
    .end local v3           #length:I
    .end local p0
    .end local p1
    .end local p2
    :goto_5
    return p0

    .line 1626
    .restart local v3       #length:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_6
    and-int/lit8 v0, p1, 0x7c

    if-nez v0, :cond_e

    and-int/lit8 v0, p2, 0x7c

    if-eqz v0, :cond_10

    .line 1627
    :cond_e
    const/4 p0, 0x0

    goto :goto_5

    .line 1628
    :cond_10
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_18

    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1a

    .line 1629
    :cond_18
    const/4 p0, 0x0

    goto :goto_5

    .line 1630
    :cond_1a
    and-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x3

    if-ne v0, v1, :cond_22

    .line 1631
    const/4 p0, 0x0

    goto :goto_5

    .line 1636
    :cond_22
    xor-int v0, p1, p2

    .line 1639
    .local v0, Z:I
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    sub-int v6, v1, v2

    .line 1640
    .local v6, x:I
    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    sub-int v7, v1, v2

    .line 1641
    .local v7, y:I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    sub-int v8, v1, v2

    .line 1644
    .local v8, z:I
    add-int/lit8 v1, v8, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 1645
    .local v1, axis_y:I
    add-int/lit8 v2, v8, 0x2

    rem-int/lit8 v2, v2, 0x3

    .line 1646
    .local v2, axis_z:I
    xor-int/2addr v1, v6

    xor-int/2addr v2, v7

    or-int/2addr v1, v2

    if-eqz v1, :cond_42

    .line 1647
    .end local v1           #axis_y:I
    .end local v2           #axis_z:I
    xor-int/lit16 v0, v0, 0x80

    .line 1649
    :cond_42
    const/16 v1, 0x80

    if-lt p1, v1, :cond_8f

    const/4 p1, 0x1

    move v2, p1

    .line 1650
    .end local p1
    .local v2, sx:Z
    :goto_48
    const/16 p1, 0x80

    if-lt p2, p1, :cond_92

    const/4 p1, 0x1

    move v4, p1

    .line 1651
    .local v4, sy:Z
    :goto_4e
    const/16 p1, 0x80

    if-lt v0, p1, :cond_95

    const/4 p1, 0x1

    move v5, p1

    .line 1654
    .local v5, sz:Z
    :goto_54
    const/16 p1, 0x10

    if-ne v3, p1, :cond_98

    const/4 p1, 0x4

    move v1, p1

    .line 1655
    .local v1, rowLength:I
    :goto_5a
    const/4 p1, 0x0

    .local p1, j:I
    move p2, p1

    .end local v0           #Z:I
    .end local p1           #j:I
    .local p2, j:I
    :goto_5c
    const/4 p1, 0x3

    if-ge p2, p1, :cond_ae

    .line 1656
    mul-int v0, p2, v1

    .line 1657
    .local v0, offset:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_62
    const/4 v9, 0x3

    if-ge p1, v9, :cond_aa

    .line 1658
    if-ne v6, p1, :cond_72

    add-int v9, v0, p1

    if-eqz v2, :cond_9b

    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    neg-float v10, v10

    :goto_70
    aput v10, p3, v9

    .line 1659
    :cond_72
    if-ne v7, p1, :cond_7f

    add-int v9, v0, p1

    if-eqz v4, :cond_a0

    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    neg-float v10, v10

    :goto_7d
    aput v10, p3, v9

    .line 1660
    :cond_7f
    if-ne v8, p1, :cond_8c

    add-int v9, v0, p1

    if-eqz v5, :cond_a5

    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    neg-float v10, v10

    :goto_8a
    aput v10, p3, v9

    .line 1657
    :cond_8c
    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    .line 1649
    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v4           #sy:Z
    .end local v5           #sz:Z
    .local v0, Z:I
    .local p1, X:I
    .local p2, Y:I
    :cond_8f
    const/4 p1, 0x0

    move v2, p1

    goto :goto_48

    .line 1650
    .end local p1           #X:I
    .restart local v2       #sx:Z
    :cond_92
    const/4 p1, 0x0

    move v4, p1

    goto :goto_4e

    .line 1651
    .restart local v4       #sy:Z
    :cond_95
    const/4 p1, 0x0

    move v5, p1

    goto :goto_54

    .line 1654
    .restart local v5       #sz:Z
    :cond_98
    const/4 p1, 0x3

    move v1, p1

    goto :goto_5a

    .line 1658
    .local v0, offset:I
    .restart local v1       #rowLength:I
    .local p1, i:I
    .local p2, j:I
    :cond_9b
    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    goto :goto_70

    .line 1659
    :cond_a0
    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    goto :goto_7d

    .line 1660
    :cond_a5
    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    goto :goto_8a

    .line 1655
    :cond_aa
    add-int/lit8 p1, p2, 0x1

    .end local p2           #j:I
    .local p1, j:I
    move p2, p1

    .end local p1           #j:I
    .restart local p2       #j:I
    goto :goto_5c

    .line 1663
    .end local v0           #offset:I
    :cond_ae
    const/16 p0, 0x10

    if-ne v3, p0, :cond_cf

    .line 1664
    .end local p0
    const/4 p0, 0x3

    const/4 p1, 0x7

    const/16 p2, 0xb

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0xe

    const/4 v3, 0x0

    aput v3, p3, v2

    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v3           #length:I
    .end local p2           #j:I
    aput v3, p3, v1

    aput v3, p3, v0

    aput v3, p3, p2

    aput v3, p3, p1

    aput v3, p3, p0

    .line 1665
    const/16 p0, 0xf

    const/high16 p1, 0x3f80

    aput p1, p3, p0

    .line 1667
    :cond_cf
    const/4 p0, 0x1

    goto/16 :goto_5
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 14
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 1006
    if-nez p3, :cond_3

    .line 1045
    :cond_2
    :goto_2
    return-void

    .line 1010
    :cond_3
    const/4 v4, 0x0

    .line 1011
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1012
    :try_start_7
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 1013
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_54

    .line 1014
    if-eqz v4, :cond_2

    .line 1016
    and-int v6, p4, p1

    if-eqz v6, :cond_2

    .line 1018
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 1019
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_2

    .line 1022
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1024
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1027
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1028
    const/4 v1, 0x0

    .line 1029
    .local v1, found:Z
    :try_start_2b
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1030
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_31

    .line 1031
    const/4 v1, 0x1

    .line 1035
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_44
    if-nez v1, :cond_4f

    .line 1036
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_51

    .line 1037
    :try_start_49
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_57

    .line 1040
    :cond_4f
    :try_start_4f
    monitor-exit v6

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v7

    monitor-exit v6
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v7

    .line 1013
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_54
    move-exception v6

    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v6

    .line 1038
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_57
    move-exception v8

    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v8
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_51
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .registers 9
    .parameter "listener"

    .prologue
    .line 1278
    if-nez p1, :cond_3

    .line 1296
    :goto_2
    return-void

    .line 1282
    :cond_3
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1283
    :try_start_6
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1284
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_40

    .line 1285
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1286
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_3d

    .line 1287
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1289
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1290
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2a

    .line 1295
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_3a
    move-exception v6

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw v6

    .line 1284
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1295
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_40
    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3a

    goto :goto_2
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .registers 8
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1256
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1275
    :cond_4
    :goto_4
    return-void

    .line 1260
    :cond_5
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1261
    :try_start_8
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1262
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v2, :cond_2a

    .line 1263
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1264
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_32

    .line 1265
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v4

    if-nez v4, :cond_2a

    .line 1268
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1273
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2a
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1274
    monitor-exit v3

    goto :goto_4

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_2f
    move-exception v4

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v4

    .line 1262
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method DisableCompassCalibrationDialog()V
    .registers 4

    .prologue
    .line 719
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->popCompassCalibrationDialog(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 725
    :goto_f
    return-void

    .line 722
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 723
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SensorManager"

    const-string v2, "DisableCompassCalibrationDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method EnableCompassCalibrationDialog()V
    .registers 4

    .prologue
    .line 709
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->popCompassCalibrationDialog(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 715
    :goto_f
    return-void

    .line 712
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SensorManager"

    const-string v2, "EnableCompassCalibrationDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4
    .parameter "type"

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 874
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/Sensor;

    move-object v1, p0

    goto :goto_b
.end method

.method public getSensorList(I)Ljava/util/List;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 838
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 839
    :try_start_3
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 840
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1a

    .line 841
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1c

    .line 842
    move-object v3, v0

    .line 850
    :cond_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 851
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 853
    :cond_1a
    monitor-exit v0

    .line 854
    return-object v3

    .line 844
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 846
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 847
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 853
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method public getSensors()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 801
    const/4 v3, 0x0

    .line 802
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 803
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 804
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_26

    goto :goto_7

    .line 806
    :pswitch_1b
    or-int/lit8 v3, v3, 0x2

    .line 807
    goto :goto_7

    .line 809
    :pswitch_1e
    or-int/lit8 v3, v3, 0x8

    .line 810
    goto :goto_7

    .line 812
    :pswitch_21
    or-int/lit16 v3, v3, 0x81

    goto :goto_7

    .line 817
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_24
    return v3

    .line 804
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public onRotationChanged(I)V
    .registers 4
    .parameter "rotation"

    .prologue
    .line 1773
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1774
    :try_start_3
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1775
    monitor-exit v0

    .line 1776
    return-void

    .line 1775
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 13
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1188
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1189
    :cond_4
    const/4 v6, 0x0

    .line 1252
    :goto_5
    return v6

    .line 1191
    :cond_6
    const/4 v5, 0x1

    .line 1192
    .local v5, result:Z
    const/4 v0, -0x1

    .line 1193
    .local v0, delay:I
    packed-switch p3, :pswitch_data_84

    .line 1207
    move v0, p3

    .line 1211
    :goto_c
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1213
    const/4 v3, 0x0

    .line 1214
    .local v3, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_10
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1215
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_7a

    move-result-object v7

    if-ne v7, p1, :cond_16

    .line 1216
    move-object v3, v1

    move-object v4, v3

    .line 1222
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2a
    if-nez v4, :cond_6b

    .line 1223
    :try_start_2c
    new-instance v3, Landroid/hardware/SensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_7d

    .line 1224
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_31
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_69

    .line 1227
    sget-object v7, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v7}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1228
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_52

    .line 1230
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1231
    const/4 v5, 0x0

    .line 1250
    :cond_52
    :goto_52
    monitor-exit v6

    move v6, v5

    .line 1252
    goto :goto_5

    .line 1195
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :pswitch_55
    const/4 v0, 0x0

    .line 1196
    goto :goto_c

    .line 1198
    :pswitch_57
    const/16 v0, 0x4e20

    .line 1199
    goto :goto_c

    .line 1201
    :pswitch_5a
    const v0, 0xea60

    .line 1202
    goto :goto_c

    .line 1204
    :pswitch_5e
    const v0, 0x30d40

    .line 1205
    goto :goto_c

    .line 1235
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_62
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_31 .. :try_end_67} :catchall_7a

    .line 1236
    const/4 v5, 0x0

    goto :goto_52

    .line 1240
    :cond_69
    const/4 v5, 0x0

    goto :goto_52

    .line 1243
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_6b
    :try_start_6b
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1244
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_80

    .line 1246
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_7d

    .line 1247
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_52

    .line 1250
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_7a
    move-exception v7

    :goto_7b
    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v7

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_7d
    move-exception v7

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_7b

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_80
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_52

    :cond_82
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_2a

    .line 1193
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_55
        :pswitch_57
        :pswitch_5a
        :pswitch_5e
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 895
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 16
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 923
    if-nez p1, :cond_8

    move v0, v10

    .line 937
    :goto_7
    return v0

    .line 926
    :cond_8
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 927
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v9, :cond_55

    :cond_15
    move v9, v2

    .line 929
    :goto_16
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz v9, :cond_57

    :cond_25
    move v9, v2

    .line 931
    :goto_26
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz v9, :cond_59

    :cond_35
    move v9, v2

    :goto_36
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 933
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz v9, :cond_5b

    :cond_43
    move v9, v2

    .line 935
    :goto_44
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz v9, :cond_5d

    :cond_52
    move v9, v2

    :goto_53
    move v0, v9

    .line 937
    goto :goto_7

    :cond_55
    move v9, v10

    .line 927
    goto :goto_16

    :cond_57
    move v9, v10

    .line 929
    goto :goto_26

    :cond_59
    move v9, v10

    .line 931
    goto :goto_36

    :cond_5b
    move v9, v10

    .line 933
    goto :goto_44

    :cond_5d
    move v9, v10

    .line 935
    goto :goto_53
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1090
    iget-boolean v0, p0, Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z

    if-eqz v0, :cond_a

    .line 1091
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->DisableCompassCalibrationDialog()V

    .line 1092
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z

    .line 1094
    :cond_a
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 1077
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1060
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 990
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 992
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 994
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 996
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 998
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 1000
    return-void
.end method
