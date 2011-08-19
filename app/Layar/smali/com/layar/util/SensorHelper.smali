.class public Lcom/layar/util/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/layar/ui/RotationChangeInformer;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/SensorHelper$LocationChangeListener;
    }
.end annotation


# static fields
.field private static final FAKE_MOVE_DISTANCE:F = 1.0E-5f

.field private static final FAKE_MOVE_REFRESH:I = 0x3e8

.field private static final FAST_MODE:I = 0x0

.field private static final LOCATION_UPDATE_MIN_TIMES:[I = null

.field private static final NORMAL_MODE:I = 0x1

.field private static final ROTATION_SENSITIVITY:I = 0x3c

.field private static final SMOOTH_MAX:F = 2.0f

.field private static final SMOOTH_MIN:F = 0.005f

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/layar/util/SensorHelper;


# instance fields
.field final I:[F

.field final Rcorrected:[F

.field final Rraw:[F

.field public final Rsmooth:[F

.field private accels:[F

.field private active:Z

.field private autoMove:Ljava/lang/Runnable;

.field public azimuth:F

.field private currentAccuracy:F

.field private currentLocation:Landroid/location/Location;

.field private fakeLoc:Landroid/location/Location;

.field private fakeThr:Ljava/lang/Thread;

.field public fixedLocation:Landroid/location/Location;

.field private hasAccuracy:Z

.field private isReady:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layar/util/SensorHelper$LocationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mRegisteringSkyhook:Z

.field private final mScreenRotationListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/layar/ui/RotationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenState:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSkyhookAuth:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private mSkyhookXps:Lcom/skyhookwireless/wps/XPS;

.field private final mTempLocation:Landroid/location/Location;

.field private magneticDeclination:[F

.field private mags:[F

.field final matrix_size:I

.field private mode:I

.field private notifiedLocation:Landroid/location/Location;

.field private notifyLocationRunnable:Ljava/lang/Runnable;

.field public final outR:[F

.field public pitch:F

.field profiler:Lcom/layar/util/Profiler$TimeProfile$LocationProfile;

.field public roll:F

.field private skyhookLocation:Landroid/location/Location;

.field private final skyhookLocationListener:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

.field public useFixedLocation:Z

.field final values:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-class v1, Lcom/layar/util/SensorHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/SensorHelper;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/layar/util/SensorHelper;->LOCATION_UPDATE_MIN_TIMES:[I

    .line 48
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/layar/util/SensorHelper;->notifiedLocation:Landroid/location/Location;

    .line 66
    iput-object v3, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/util/SensorHelper;->hasAccuracy:Z

    .line 68
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/layar/util/SensorHelper;->currentAccuracy:F

    .line 70
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 74
    iput-object v1, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    .line 86
    const/4 v1, -0x1

    iput v1, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    .line 110
    iput-object v3, p0, Lcom/layar/util/SensorHelper;->skyhookLocation:Landroid/location/Location;

    .line 112
    iput v2, p0, Lcom/layar/util/SensorHelper;->matrix_size:I

    .line 113
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 114
    iput-object v1, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    .line 115
    new-array v1, v2, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    .line 116
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->Rcorrected:[F

    .line 117
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->outR:[F

    .line 118
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->I:[F

    .line 119
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->values:[F

    .line 121
    new-instance v1, Landroid/location/Location;

    const-string v2, "FAKE"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->fakeLoc:Landroid/location/Location;

    .line 124
    new-instance v1, Landroid/location/Location;

    const-class v2, Lcom/layar/util/SensorHelper;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->mTempLocation:Landroid/location/Location;

    .line 527
    new-instance v1, Lcom/layar/util/SensorHelper$1;

    invoke-direct {v1, p0}, Lcom/layar/util/SensorHelper$1;-><init>(Lcom/layar/util/SensorHelper;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->skyhookLocationListener:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    .line 584
    new-instance v1, Lcom/layar/util/SensorHelper$2;

    invoke-direct {v1, p0}, Lcom/layar/util/SensorHelper$2;-><init>(Lcom/layar/util/SensorHelper;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->notifyLocationRunnable:Ljava/lang/Runnable;

    .line 606
    new-instance v1, Lcom/layar/util/SensorHelper$3;

    invoke-direct {v1, p0}, Lcom/layar/util/SensorHelper$3;-><init>(Lcom/layar/util/SensorHelper;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->autoMove:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    .line 137
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 136
    iput-object v1, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 142
    invoke-direct {p0}, Lcom/layar/util/SensorHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 143
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    .line 145
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, p0, Lcom/layar/util/SensorHelper;->currentAccuracy:F

    .line 173
    :cond_0
    return-void

    .line 70
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 113
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 115
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/layar/util/SensorHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->active:Z

    return v0
.end method

.method static synthetic access$1(Lcom/layar/util/SensorHelper;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->fakeLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$11(Lcom/layar/util/SensorHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/layar/util/SensorHelper;->mRegisteringSkyhook:Z

    return-void
.end method

.method static synthetic access$12(Lcom/layar/util/SensorHelper;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13(Lcom/layar/util/SensorHelper;Lcom/skyhookwireless/wps/WPSAuthentication;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/layar/util/SensorHelper;->mSkyhookAuth:Lcom/skyhookwireless/wps/WPSAuthentication;

    return-void
.end method

.method static synthetic access$14(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/XPS;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mSkyhookXps:Lcom/skyhookwireless/wps/XPS;

    return-object v0
.end method

.method static synthetic access$15(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/WPSAuthentication;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mSkyhookAuth:Lcom/skyhookwireless/wps/WPSAuthentication;

    return-object v0
.end method

.method static synthetic access$16()[I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/layar/util/SensorHelper;->LOCATION_UPDATE_MIN_TIMES:[I

    return-object v0
.end method

.method static synthetic access$17(Lcom/layar/util/SensorHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/layar/util/SensorHelper;->mode:I

    return v0
.end method

.method static synthetic access$18(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;
    .locals 1
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->skyhookLocationListener:Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->skyhookLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/util/SensorHelper;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/layar/util/SensorHelper;->skyhookLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$4(Lcom/layar/util/SensorHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/layar/util/SensorHelper;->hasAccuracy:Z

    return-void
.end method

.method static synthetic access$5(Lcom/layar/util/SensorHelper;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/layar/util/SensorHelper;->currentAccuracy:F

    return-void
.end method

.method static synthetic access$6(Lcom/layar/util/SensorHelper;)[F
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/util/SensorHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->notifyLocationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/layar/util/SensorHelper;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->notifiedLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/util/SensorHelper;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/layar/util/SensorHelper;->notifiedLocation:Landroid/location/Location;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    sget-object v0, Lcom/layar/util/SensorHelper;->instance:Lcom/layar/util/SensorHelper;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/layar/util/SensorHelper;

    invoke-direct {v0, p0}, Lcom/layar/util/SensorHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/layar/util/SensorHelper;->instance:Lcom/layar/util/SensorHelper;

    .line 130
    :cond_0
    sget-object v0, Lcom/layar/util/SensorHelper;->instance:Lcom/layar/util/SensorHelper;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 229
    iget-object v7, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    check-cast v2, Landroid/location/LocationManager;

    .line 230
    .local v2, lm:Landroid/location/LocationManager;
    invoke-virtual {v2, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v4

    .line 232
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 233
    .local v5, timestamp:J
    const/4 v0, 0x0

    .line 235
    .local v0, bestLocation:Landroid/location/Location;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int v1, v7, v9

    .end local p0
    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 243
    return-object v0

    .line 236
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 237
    .local v3, location:Landroid/location/Location;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    .line 238
    move-object v0, v3

    .line 239
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 235
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private radToDeg(F)F
    .locals 2
    .parameter "rad"

    .prologue
    .line 628
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private registerDeviceWithSkyhook()V
    .locals 7

    .prologue
    .line 181
    iget-boolean v3, p0, Lcom/layar/util/SensorHelper;->mRegisteringSkyhook:Z

    if-eqz v3, :cond_0

    .line 225
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/layar/util/SensorHelper;->mRegisteringSkyhook:Z

    .line 184
    iget-object v3, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 185
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, newUsername:Ljava/lang/String;
    iget-object v3, p0, Lcom/layar/util/SensorHelper;->mSkyhookXps:Lcom/skyhookwireless/wps/XPS;

    .line 191
    new-instance v4, Lcom/skyhookwireless/wps/WPSAuthentication;

    const-string v5, "4zfk7n6i297g"

    const-string v6, "layar"

    invoke-direct {v4, v5, v6}, Lcom/skyhookwireless/wps/WPSAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v5, Lcom/skyhookwireless/wps/WPSAuthentication;

    const-string v6, "layar"

    invoke-direct {v5, v1, v6}, Lcom/skyhookwireless/wps/WPSAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v6, Lcom/layar/util/SensorHelper$4;

    invoke-direct {v6, p0, v1}, Lcom/layar/util/SensorHelper$4;-><init>(Lcom/layar/util/SensorHelper;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, v4, v5, v6}, Lcom/skyhookwireless/wps/XPS;->registerUser(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;)V

    goto :goto_0
.end method

.method private registerForLocationUpdates()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 378
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    check-cast v0, Landroid/location/LocationManager;

    .line 380
    .local v0, lm:Landroid/location/LocationManager;
    invoke-direct {p0, v0}, Lcom/layar/util/SensorHelper;->unregisterForLocationUpdates(Landroid/location/LocationManager;)V

    .line 381
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 383
    :cond_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 385
    :cond_1
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    const-string v1, "passive"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 388
    :cond_2
    return-void
.end method

.method private unregisterForLocationUpdates(Landroid/location/LocationManager;)V
    .locals 0
    .parameter "lm"

    .prologue
    .line 402
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 403
    return-void
.end method


# virtual methods
.method protected _isScreenRotationStateChanged(II)Z
    .locals 6
    .parameter "pitch"
    .parameter "roll"

    .prologue
    const/4 v5, 0x0

    .line 715
    iget v3, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 718
    const/16 v3, 0x3c

    if-le p1, v3, :cond_0

    move v3, v5

    .line 745
    :goto_0
    return v3

    .line 721
    :cond_0
    add-int/lit16 v3, p2, 0x168

    add-int/lit8 v3, v3, 0x2d

    rem-int/lit16 v3, v3, 0x168

    div-int/lit8 v1, v3, 0x5a

    .line 723
    .local v1, resultRoll:I
    packed-switch v1, :pswitch_data_0

    .line 740
    const/4 v2, 0x1

    .line 742
    .local v2, resultScreenState:I
    :goto_1
    iget v3, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    move v0, v3

    .line 743
    .local v0, result:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 744
    iput v2, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    :cond_1
    move v3, v0

    .line 745
    goto :goto_0

    .line 725
    .end local v0           #result:Z
    .end local v2           #resultScreenState:I
    :pswitch_0
    const/4 v2, 0x1

    .line 726
    .restart local v2       #resultScreenState:I
    goto :goto_1

    .line 728
    .end local v2           #resultScreenState:I
    :pswitch_1
    const/4 v2, 0x0

    .line 729
    .restart local v2       #resultScreenState:I
    goto :goto_1

    .line 731
    .end local v2           #resultScreenState:I
    :pswitch_2
    const/4 v2, 0x3

    .line 732
    .restart local v2       #resultScreenState:I
    goto :goto_1

    .line 734
    .end local v2           #resultScreenState:I
    :pswitch_3
    sget-boolean v3, Lcom/layar/util/MyConfig;->IS_LANDSCAPE_DEVICE:Z

    if-eqz v3, :cond_2

    .line 735
    const/4 v2, 0x2

    .restart local v2       #resultScreenState:I
    goto :goto_1

    .line 737
    .end local v2           #resultScreenState:I
    :cond_2
    const/4 v2, 0x3

    .line 738
    .restart local v2       #resultScreenState:I
    goto :goto_1

    :cond_3
    move v0, v5

    .line 742
    goto :goto_2

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrentAccuracy()F
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/layar/util/SensorHelper;->currentAccuracy:F

    return v0
.end method

.method public getCurrentDirection()F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/layar/util/SensorHelper;->azimuth:F

    return v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method public getCurrentPitch()F
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/layar/util/SensorHelper;->pitch:F

    return v0
.end method

.method public getDistance(DD)I
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mTempLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 452
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mTempLocation:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 453
    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mTempLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-int v0, v0

    .line 457
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 456
    const/4 v0, 0x0

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mTempLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getLayoutRotation()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->hasAccuracy:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->active:Z

    return v0
.end method

.method public isGPSEnabled()Z
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 407
    .local v0, locationManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public loadPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 292
    new-instance v4, Lcom/layar/data/user/UserManager;

    iget-object v5, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/layar/data/user/UserManager;->isDeveloper()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 296
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "prefs.location.fixed"

    .line 295
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    .line 299
    :try_start_0
    const-string v4, "prefs.location.lat"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 301
    .local v1, lat:F
    const-string v4, "prefs.location.lon"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 302
    .local v2, lon:F
    iget-object v4, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    .line 303
    new-instance v4, Landroid/location/Location;

    const-string v5, "FIXED_LOCATION"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 305
    iget-object v4, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    float-to-double v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1           #lat:F
    .end local v2           #lon:F
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v4, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/layar/util/UriHelper;->initialize(Landroid/content/Context;)Lcom/layar/util/UriHelper;

    .line 315
    return-void

    .line 306
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 308
    .local v0, e:Ljava/lang/NumberFormatException;
    iput-boolean v7, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iput-boolean v7, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    goto :goto_0
.end method

.method public notifyLocationListeners(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 667
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 670
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/util/SensorHelper$LocationChangeListener;

    .line 671
    .local v0, listener:Lcom/layar/util/SensorHelper$LocationChangeListener;
    invoke-interface {v0, p1}, Lcom/layar/util/SensorHelper$LocationChangeListener;->locationChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyScreenRotationListeners()V
    .locals 4

    .prologue
    .line 697
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    monitor-exit v1

    .line 702
    return-void

    .line 698
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/RotationListener;

    .line 699
    .local v0, listener:Lcom/layar/ui/RotationListener;
    iget v3, p0, Lcom/layar/util/SensorHelper;->mScreenState:I

    invoke-interface {v0, v3}, Lcom/layar/ui/RotationListener;->rotationChanged(I)V

    goto :goto_0

    .line 697
    .end local v0           #listener:Lcom/layar/ui/RotationListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 412
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .parameter "location"

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 261
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 262
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 263
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 260
    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 268
    .local v0, magneticField:Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v6, v1

    .line 269
    .local v6, declination:F
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    const/4 v2, 0x0

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 270
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    const/4 v2, 0x1

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 271
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    const/4 v2, 0x4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 272
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    const/4 v2, 0x5

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 274
    invoke-virtual {p0, p1}, Lcom/layar/util/SensorHelper;->setNewLocation(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->notifyLocationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 281
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 285
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 470
    iget-object v9, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 471
    .local v9, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    .line 472
    .local v11, type:I
    packed-switch v11, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mags:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/util/SensorHelper;->accels:[F

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/layar/util/SensorHelper;->isReady:Z

    if-eqz v0, :cond_1

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/util/SensorHelper;->isReady:Z

    .line 495
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->I:[F

    iget-object v2, p0, Lcom/layar/util/SensorHelper;->accels:[F

    iget-object v3, p0, Lcom/layar/util/SensorHelper;->mags:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 496
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    const/4 v1, 0x2

    .line 497
    const/16 v2, 0x81

    iget-object v3, p0, Lcom/layar/util/SensorHelper;->Rcorrected:[F

    .line 496
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 500
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layar/util/SensorHelper;->Rcorrected:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layar/util/SensorHelper;->magneticDeclination:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 502
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v0, 0x10

    if-lt v7, v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    const/4 v1, 0x1

    .line 515
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/layar/util/SensorHelper;->outR:[F

    .line 514
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 516
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->outR:[F

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 517
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/layar/util/SensorHelper;->radToDeg(F)F

    move-result v0

    iput v0, p0, Lcom/layar/util/SensorHelper;->azimuth:F

    .line 518
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/layar/util/SensorHelper;->radToDeg(F)F

    move-result v0

    iput v0, p0, Lcom/layar/util/SensorHelper;->pitch:F

    .line 519
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/layar/util/SensorHelper;->radToDeg(F)F

    move-result v0

    iput v0, p0, Lcom/layar/util/SensorHelper;->roll:F

    .line 521
    iget v0, p0, Lcom/layar/util/SensorHelper;->pitch:F

    float-to-int v0, v0

    iget v1, p0, Lcom/layar/util/SensorHelper;->roll:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/layar/util/SensorHelper;->_isScreenRotationStateChanged(II)Z

    move-result v8

    .line 522
    .local v8, rotationChanged:Z
    if-eqz v8, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/layar/util/SensorHelper;->notifyScreenRotationListeners()V

    .line 525
    .end local v7           #i:I
    .end local v8           #rotationChanged:Z
    :cond_1
    return-void

    .line 474
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/layar/util/SensorHelper;->mags:[F

    .line 475
    sget-boolean v0, Lcom/layar/util/MyConfig;->IS_LANDSCAPE_DEVICE:Z

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mags:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mags:[F

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 480
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/util/SensorHelper;->isReady:Z

    goto/16 :goto_0

    .line 483
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/layar/util/SensorHelper;->accels:[F

    .line 484
    sget-boolean v0, Lcom/layar/util/MyConfig;->IS_LANDSCAPE_DEVICE:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->accels:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 486
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->accels:[F

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    goto/16 :goto_0

    .line 503
    .restart local v7       #i:I
    :cond_3
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    aget v1, v1, v7

    sub-float v10, v0, v1

    .line 504
    .local v10, t:F
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    move v6, v10

    .line 505
    .local v6, diff:F
    :goto_2
    const v0, 0x3ba3d70a

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    .line 506
    const v6, 0x3ba3d70a

    .line 507
    :cond_4
    const/high16 v0, 0x4000

    cmpl-float v0, v6, v0

    if-lez v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->Rcorrected:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 502
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 504
    .end local v6           #diff:F
    :cond_5
    neg-float v0, v10

    move v6, v0

    goto :goto_2

    .line 510
    .restart local v6       #diff:F
    :cond_6
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    const/high16 v1, 0x4000

    sub-float/2addr v1, v6

    iget-object v2, p0, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    .line 511
    iget-object v2, p0, Lcom/layar/util/SensorHelper;->Rraw:[F

    aget v2, v2, v7

    mul-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 510
    aput v1, v0, v7

    goto :goto_3

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 289
    return-void
.end method

.method public registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-boolean v1, p0, Lcom/layar/util/SensorHelper;->useFixedLocation:Z

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->fixedLocation:Landroid/location/Location;

    invoke-interface {p1, v1}, Lcom/layar/util/SensorHelper$LocationChangeListener;->locationChanged(Landroid/location/Location;)V

    .line 636
    :cond_0
    monitor-exit v0

    .line 644
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    invoke-interface {p1, v1}, Lcom/layar/util/SensorHelper$LocationChangeListener;->locationChanged(Landroid/location/Location;)V

    .line 632
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerRotationListener(Lcom/layar/ui/RotationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 684
    monitor-exit v0

    .line 687
    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNewLocation(Landroid/location/Location;)Z
    .locals 5
    .parameter "loc"

    .prologue
    .line 654
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 655
    .local v0, res:Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    .line 656
    :cond_1
    return v0

    .line 654
    .end local v0           #res:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public startSensor(Lcom/layar/data/layer/LayerManager$LayarView;)V
    .locals 5
    .parameter "liveView"

    .prologue
    const/4 v4, 0x1

    .line 318
    iget-boolean v1, p0, Lcom/layar/util/SensorHelper;->active:Z

    if-eqz v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 323
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 322
    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 325
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 326
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 325
    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 329
    iput v4, p0, Lcom/layar/util/SensorHelper;->mode:I

    .line 330
    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {p1, v1}, Lcom/layar/data/layer/LayerManager$LayarView;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    const/4 v1, 0x0

    iput v1, p0, Lcom/layar/util/SensorHelper;->mode:I

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/layar/util/SensorHelper;->registerForLocationUpdates()V

    .line 353
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/layar/util/SensorHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 355
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_3

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_1
    iput-object v1, p0, Lcom/layar/util/SensorHelper;->currentLocation:Landroid/location/Location;

    .line 372
    .end local v0           #loc:Landroid/location/Location;
    :cond_2
    iput-boolean v4, p0, Lcom/layar/util/SensorHelper;->active:Z

    goto :goto_0

    .line 355
    .restart local v0       #loc:Landroid/location/Location;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopSensor()V
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    check-cast v0, Landroid/location/LocationManager;

    .line 394
    .local v0, lm:Landroid/location/LocationManager;
    invoke-direct {p0, v0}, Lcom/layar/util/SensorHelper;->unregisterForLocationUpdates(Landroid/location/LocationManager;)V

    .line 395
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 396
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/util/SensorHelper;->active:Z

    .line 399
    return-void
.end method

.method public unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 647
    :cond_0
    monitor-exit v0

    .line 651
    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRotationListener(Lcom/layar/ui/RotationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/SensorHelper;->mScreenRotationListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 690
    monitor-exit v0

    .line 693
    return-void

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
