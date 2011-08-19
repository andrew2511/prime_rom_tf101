.class Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;
.super Ljava/lang/Object;
.source "MotionRecognizerBase.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/MotionRecognizerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/motiongesture/MotionRecognizerBase;


# direct methods
.method private constructor <init>(Lcom/google/android/motiongesture/MotionRecognizerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;->this$0:Lcom/google/android/motiongesture/MotionRecognizerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/motiongesture/MotionRecognizerBase;Lcom/google/android/motiongesture/MotionRecognizerBase$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;-><init>(Lcom/google/android/motiongesture/MotionRecognizerBase;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;->this$0:Lcom/google/android/motiongesture/MotionRecognizerBase;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/high16 v2, 0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move v1, v4

    :goto_0
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/motiongesture/MotionRecognizerBase;->processProximityEvent(ZJ)V

    .line 177
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 175
    iget-object v6, p0, Lcom/google/android/motiongesture/MotionRecognizerBase$SensorHelper;->this$0:Lcom/google/android/motiongesture/MotionRecognizerBase;

    new-instance v0, Lcom/google/android/motiongesture/Acceleration;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/motiongesture/Acceleration;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Lcom/google/android/motiongesture/MotionRecognizerBase;->processAccelerometerEvent(Lcom/google/android/motiongesture/Acceleration;)V

    goto :goto_1
.end method
