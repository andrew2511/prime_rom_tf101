.class public abstract Lcom/google/android/motiongesture/MotionRecognizerBase;
.super Ljava/lang/Object;
.source "MotionRecognizerBase.java"

# interfaces
.implements Lcom/google/android/motiongesture/MotionRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/motiongesture/MotionRecognizerBase$1;,
        Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;
    }
.end annotation


# static fields
.field private static final PROXIMITY_DISTANCE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "MotionRecognizerBase"


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorHelper:Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

    .line 40
    iput-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    .line 41
    iput-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    .line 45
    iput-object p1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;-><init>(Lcom/google/android/motiongesture/MotionRecognizerBase;Lcom/google/android/motiongesture/MotionRecognizerBase$1;)V

    iput-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mSensorHelper:Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;

    .line 47
    return-void
.end method


# virtual methods
.method protected angleWithinRange(FFF)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase;->normalize(F)F

    move-result v0

    .line 80
    invoke-virtual {p0, p2}, Lcom/google/android/motiongesture/MotionRecognizerBase;->normalize(F)F

    move-result v1

    .line 81
    invoke-virtual {p0, p3}, Lcom/google/android/motiongesture/MotionRecognizerBase;->normalize(F)F

    move-result v2

    .line 82
    cmpl-float v3, v1, v2

    if-lez v3, :cond_4

    .line 88
    :goto_0
    sub-float v3, v1, v2

    const/high16 v4, 0x4334

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 90
    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    move v0, v6

    .line 93
    :goto_1
    return v0

    :cond_1
    move v0, v5

    .line 90
    goto :goto_1

    .line 93
    :cond_2
    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0
.end method

.method protected angleWithinTolerance(FFF)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    sub-float v0, p2, p3

    add-float v1, p2, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/motiongesture/MotionRecognizerBase;->angleWithinRange(FFF)Z

    move-result v0

    return v0
.end method

.method protected dispatchGesture(Lcom/google/android/motiongesture/GestureEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

    invoke-interface {v0, p1}, Lcom/google/android/motiongesture/MotionRecognizerListener;->gestureNotification(Lcom/google/android/motiongesture/GestureEvent;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "MotionRecognizerBase"

    const-string v1, "Gesture dispatched after recognizer stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected normalize(F)F
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xb4

    const/high16 v3, 0x43b4

    .line 101
    const/high16 v0, 0x4334

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 102
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x168

    add-int/lit8 v0, v0, 0x1

    .line 103
    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, p1, v0

    .line 105
    :goto_0
    const/high16 v1, -0x3ccc

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 106
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int v1, v4, v1

    div-int/lit16 v1, v1, 0x168

    .line 107
    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 109
    :cond_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method protected abstract processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V
.end method

.method protected abstract processProximityEvent(ZJ)V
.end method

.method public start(Lcom/google/android/motiongesture/MotionRecognizerListener;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    iput-object p1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

    .line 122
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 124
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 128
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 129
    iput-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    .line 130
    iget-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mSensorHelper:Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;

    iget-object v3, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 133
    iput-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    .line 134
    iget-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mSensorHelper:Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;

    iget-object v3, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    move v0, v6

    :goto_1
    return v0

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 151
    iget-object v1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mSensorHelper:Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 152
    iput-object v2, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mProximitySensor:Landroid/hardware/Sensor;

    .line 153
    iput-object v2, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mAccelerometer:Landroid/hardware/Sensor;

    .line 154
    iput-object v2, p0, Lcom/google/android/motiongesture/MotionRecognizerBase;->mListener:Lcom/google/android/motiongesture/MotionRecognizerListener;

    .line 155
    return-void
.end method
