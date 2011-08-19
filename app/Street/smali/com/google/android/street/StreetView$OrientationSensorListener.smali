.class Lcom/google/android/street/StreetView$OrientationSensorListener;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationSensorListener"
.end annotation


# instance fields
.field private final mAcceleration:[F

.field private final mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

.field private final mMagneticField:[F

.field private final mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

.field private final mRemappedRotationMatrix:[F

.field private final mRotationMatrix:[F

.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method private constructor <init>(Lcom/google/android/street/StreetView;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/high16 v2, 0x3f00

    const/4 v1, 0x3

    .line 330
    iput-object p1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    .line 342
    new-instance v0, Lcom/google/android/street/ExponentialFilter;

    invoke-direct {v0, v2, v1}, Lcom/google/android/street/ExponentialFilter;-><init>(FI)V

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

    .line 346
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    .line 349
    new-instance v0, Lcom/google/android/street/ExponentialFilter;

    invoke-direct {v0, v2, v1}, Lcom/google/android/street/ExponentialFilter;-><init>(FI)V

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

    .line 353
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    .line 354
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;)V

    return-void
.end method

.method private orientedRotationMatrix()[F
    .locals 5

    .prologue
    .line 398
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v3}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/street/Street;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 408
    .local v2, orientation:I
    packed-switch v2, :pswitch_data_0

    .line 422
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    .line 426
    :goto_0
    return-object v3

    .line 410
    :pswitch_0
    const/4 v0, 0x2

    .line 411
    .local v0, deviceXAxis:I
    const/16 v1, 0x81

    .line 424
    .local v1, deviceYAxis:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    invoke-static {v3, v0, v1, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 426
    iget-object v3, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRemappedRotationMatrix:[F

    goto :goto_0

    .line 414
    .end local v0           #deviceXAxis:I
    .end local v1           #deviceYAxis:I
    :pswitch_1
    const/16 v0, 0x81

    .line 415
    .restart local v0       #deviceXAxis:I
    const/16 v1, 0x82

    .line 416
    .restart local v1       #deviceYAxis:I
    goto :goto_1

    .line 418
    .end local v0           #deviceXAxis:I
    .end local v1           #deviceYAxis:I
    :pswitch_2
    const/16 v0, 0x82

    .line 419
    .restart local v0       #deviceXAxis:I
    const/4 v1, 0x1

    .line 420
    .restart local v1       #deviceYAxis:I
    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOrientation()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x3f80

    const/4 v11, 0x0

    .line 430
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$800(Lcom/google/android/street/StreetView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mRotationMatrix:[F

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    iget-object v5, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    invoke-static {v1, v2, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v13

    .line 438
    .local v13, gotRotationMatrix:Z
    if-nez v13, :cond_1

    .line 439
    const-string v1, "SV couldn\'t get an orientation reading"

    invoke-static {v1}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->orientedRotationMatrix()[F

    move-result-object v7

    .line 447
    .local v7, rotationMatrix:[F
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/street/Street;->getApproximateLocation()Landroid/location/Location;

    move-result-object v14

    .line 448
    .local v14, location:Landroid/location/Location;
    if-eqz v14, :cond_2

    .line 449
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v14}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 454
    .local v0, geomagneticField:Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v3

    .local v3, declination:F
    move-object v1, v7

    move v2, v8

    move v4, v11

    move v5, v11

    .line 455
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 462
    .end local v0           #geomagneticField:Landroid/hardware/GeomagneticField;
    .end local v3           #declination:F
    :cond_2
    const/high16 v9, 0x42b4

    move v10, v6

    move v12, v11

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 464
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$900(Lcom/google/android/street/StreetView;)V

    .line 465
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$1000(Lcom/google/android/street/StreetView;)Lcom/google/android/street/UserOrientation;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/street/UserOrientation;->setRotationMatrix([F)V

    .line 466
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$1100(Lcom/google/android/street/StreetView;)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 390
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 372
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAccelerationFilter:Lcom/google/android/street/ExponentialFilter;

    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mAcceleration:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/ExponentialFilter;->filter([F[F)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticFieldFilter:Lcom/google/android/street/ExponentialFilter;

    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->mMagneticField:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/ExponentialFilter;->filter([F[F)V

    .line 382
    invoke-direct {p0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->updateOrientation()V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-object v1, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/street/Street;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 358
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 361
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 364
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/street/StreetView$OrientationSensorListener;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/Street;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 368
    return-void
.end method
