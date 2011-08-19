.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x1e

.field private static final FILTER_CUTOFF_FREQUENCY_HZ:F = 1.0f

.field private static final FILTER_GAIN:F = 0.999f

.field private static final FILTER_TIME_CONSTANT_MS:F = 31.830988f

#the value of this static final field might be set in the static constructor
.field private static final MAGNITUDE_CONFIDENCE_SCALE:F = 0.0f

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 14.709975f

.field private static final MAX_FILTER_DELTA_TIME_MS:F = 1000.0f

.field private static final MAX_TILT:I = 0x3c

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 4.903325f

#the value of this static final field might be set in the static constructor
.field private static final ORIENTATION_ANGLE_CONFIDENCE_SCALE:F = 0.0f

.field private static final ORIENTATION_SETTLE_TIME_MS:F = 50.0f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final ROTATION_UNKNOWN:I = -0x1

.field private static final TILT_ANGLE_CONFIDENCE_SCALE:F

.field private static final TILT_TOLERANCE:[[I


# instance fields
.field private mConfidence:[F

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mLastTimestamp:J

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 301
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_50

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    .line 322
    const/high16 v0, 0x41f0

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidenceScaleFromDelta(F)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ORIENTATION_ANGLE_CONFIDENCE_SCALE:F

    .line 326
    const/high16 v0, 0x4234

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidenceScaleFromDelta(F)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_ANGLE_CONFIDENCE_SCALE:F

    .line 329
    const v0, 0x401ce80a

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidenceScaleFromDelta(F)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAGNITUDE_CONFIDENCE_SCALE:F

    return-void

    .line 301
    nop

    :array_40
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_50
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x4
        0xd0t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .registers 4
    .parameter "orientationListener"

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 237
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    .line 343
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 344
    return-void
.end method

.method private static confidence(FFF)F
    .registers 5
    .parameter "value"
    .parameter "target"
    .parameter "scale"

    .prologue
    .line 618
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static confidenceScaleFromDelta(F)F
    .registers 3
    .parameter "cutoffDelta"

    .prologue
    .line 627
    const-wide/high16 v0, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    div-float/2addr v0, p0

    return v0
.end method

.method private isOrientationAngleAcceptable(II)Z
    .registers 12
    .parameter "proposedOrientation"
    .parameter "orientationAngle"

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0xf

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 564
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 567
    .local v0, currentOrientation:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4e

    .line 572
    if-eq p1, v0, :cond_14

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_2e

    .line 574
    :cond_14
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v8

    add-int/lit8 v1, v3, 0xf

    .line 576
    .local v1, lowerBound:I
    if-eq p1, v5, :cond_1d

    if-ne p1, v6, :cond_1e

    .line 577
    :cond_1d
    sub-int/2addr v1, v7

    .line 578
    :cond_1e
    if-nez p1, :cond_2a

    .line 579
    const/16 v3, 0x13b

    if-lt p2, v3, :cond_2e

    add-int/lit16 v3, v1, 0x168

    if-ge p2, v3, :cond_2e

    move v3, v4

    .line 610
    .end local v1           #lowerBound:I
    :goto_29
    return v3

    .line 583
    .restart local v1       #lowerBound:I
    :cond_2a
    if-ge p2, v1, :cond_2e

    move v3, v4

    .line 584
    goto :goto_29

    .line 593
    .end local v1           #lowerBound:I
    :cond_2e
    if-eq p1, v0, :cond_36

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_4e

    .line 595
    :cond_36
    mul-int/lit8 v3, p1, 0x5a

    add-int/lit8 v3, v3, 0x2d

    sub-int v2, v3, v7

    .line 597
    .local v2, upperBound:I
    if-eq p1, v5, :cond_40

    if-ne p1, v6, :cond_42

    .line 598
    :cond_40
    add-int/lit8 v2, v2, 0xf

    .line 599
    :cond_42
    if-nez p1, :cond_4a

    .line 600
    if-gt p2, v8, :cond_4e

    if-le p2, v2, :cond_4e

    move v3, v4

    .line 601
    goto :goto_29

    .line 604
    :cond_4a
    if-le p2, v2, :cond_4e

    move v3, v4

    .line 605
    goto :goto_29

    .end local v2           #upperBound:I
    :cond_4e
    move v3, v5

    .line 610
    goto :goto_29
.end method

.method private isTiltAngleAcceptable(II)Z
    .registers 6
    .parameter "proposedOrientation"
    .parameter "tiltAngle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 552
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    if-lt p2, v0, :cond_14

    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v0, v0, p1

    aget v0, v0, v2

    if-gt p2, v0, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method


# virtual methods
.method public getCurrentRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 347
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    :goto_7
    return v0

    :cond_8
    move v0, p1

    goto :goto_7
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 352
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 33
    .parameter "event"

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    move v11, v0

    .line 360
    .local v11, log:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v24, v27, v28

    .line 361
    .local v24, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v25, v27, v28

    .line 362
    .local v25, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget v26, v27, v28

    .line 364
    .local v26, z:F
    if-eqz v11, :cond_63

    .line 365
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Raw acceleration vector: x="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", y="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", z="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_63
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    move-wide/from16 v29, v0

    sub-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x358637bd

    mul-float v23, v27, v28

    .line 375
    .local v23, timeDeltaMS:F
    const/16 v27, 0x0

    cmpg-float v27, v23, v27

    if-lez v27, :cond_99

    const/high16 v27, 0x447a

    cmpl-float v27, v23, v27

    if-gtz v27, :cond_99

    const/16 v27, 0x0

    cmpl-float v27, v24, v27

    if-nez v27, :cond_18a

    const/16 v27, 0x0

    cmpl-float v27, v25, v27

    if-nez v27, :cond_18a

    const/16 v27, 0x0

    cmpl-float v27, v26, v27

    if-nez v27, :cond_18a

    .line 377
    :cond_99
    if-eqz v11, :cond_a2

    .line 378
    const-string v27, "WindowOrientationListener"

    const-string v28, "Resetting orientation listener."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_a2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a3
    const/16 v27, 0x4

    move v0, v7

    move/from16 v1, v27

    if-ge v0, v1, :cond_b7

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v7

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 383
    :cond_b7
    const/16 v20, 0x1

    .line 396
    .end local v7           #i:I
    .local v20, skipSample:Z
    :goto_b9
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 397
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 398
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 399
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 401
    const/16 v17, 0x0

    .line 402
    .local v17, orientationChanged:Z
    if-nez v20, :cond_3e3

    .line 404
    const/16 v19, -0x1

    .line 405
    .local v19, proposedOrientation:I
    const/high16 v5, 0x3f80

    .line 408
    .local v5, combinedConfidence:F
    mul-float v27, v24, v24

    mul-float v28, v25, v25

    add-float v27, v27, v28

    mul-float v28, v26, v26

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move v12, v0

    .line 409
    .local v12, magnitude:F
    const v27, 0x409ce80a

    cmpg-float v27, v12, v27

    if-ltz v27, :cond_104

    const v27, 0x416b5c0f

    cmpl-float v27, v12, v27

    if-lez v27, :cond_20a

    .line 411
    :cond_104
    if-eqz v11, :cond_121

    .line 412
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Ignoring sensor data, magnitude out of range: magnitude="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_121
    :goto_121
    mul-float v27, v5, v23

    const/high16 v28, 0x4248

    div-float v6, v27, v28

    .line 507
    .local v6, confidenceAmount:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_128
    const/16 v27, 0x4

    move v0, v7

    move/from16 v1, v27

    if-ge v0, v1, :cond_3e3

    .line 508
    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_3bd

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    aget v28, v27, v7

    add-float v28, v28, v6

    aput v28, v27, v7

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    aget v27, v27, v7

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_187

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    const/high16 v28, 0x3f80

    aput v28, v27, v7

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    move/from16 v27, v0

    move v0, v7

    move/from16 v1, v27

    if-eq v0, v1, :cond_187

    .line 514
    if-eqz v11, :cond_180

    .line 515
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Orientation changed!  rotation="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_180
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 518
    const/16 v17, 0x1

    .line 507
    :cond_187
    :goto_187
    add-int/lit8 v7, v7, 0x1

    goto :goto_128

    .line 385
    .end local v5           #combinedConfidence:F
    .end local v6           #confidenceAmount:F
    .end local v7           #i:I
    .end local v12           #magnitude:F
    .end local v17           #orientationChanged:Z
    .end local v19           #proposedOrientation:I
    .end local v20           #skipSample:Z
    :cond_18a
    const v27, 0x41fea5dd

    add-float v27, v27, v23

    div-float v27, v23, v27

    const v28, 0x3f7fbe77

    mul-float v4, v27, v28

    .line 387
    .local v4, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v27, v0

    sub-float v27, v24, v27

    mul-float v27, v27, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v28, v0

    add-float v24, v27, v28

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    mul-float v27, v27, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v28, v0

    add-float v25, v27, v28

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    mul-float v27, v27, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v28, v0

    add-float v26, v27, v28

    .line 390
    if-eqz v11, :cond_206

    .line 391
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Filtered acceleration vector: x="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", y="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", z="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_206
    const/16 v20, 0x0

    .restart local v20       #skipSample:Z
    goto/16 :goto_b9

    .line 422
    .end local v4           #alpha:F
    .restart local v5       #combinedConfidence:F
    .restart local v12       #magnitude:F
    .restart local v17       #orientationChanged:Z
    .restart local v19       #proposedOrientation:I
    :cond_20a
    div-float v27, v26, v12

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->asin(D)D

    move-result-wide v27

    const-wide v29, 0x404ca5dc20000000L

    mul-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->round(D)J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v21, v0

    .line 427
    .local v21, tiltAngle:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v27

    const/16 v28, 0x3c

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25e

    .line 428
    if-eqz v11, :cond_121

    .line 429
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Ignoring sensor data, tilt angle too high: magnitude="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", tiltAngle="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 436
    :cond_25e
    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    move-wide/from16 v0, v27

    neg-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x404ca5dc20000000L

    mul-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->round(D)J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v16, v0

    .line 438
    .local v16, orientationAngle:I
    if-gez v16, :cond_28e

    .line 440
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    .line 448
    :cond_28e
    add-int/lit8 v27, v16, 0x2d

    div-int/lit8 v14, v27, 0x5a

    .line 449
    .local v14, nearestOrientation:I
    mul-int/lit8 v15, v14, 0x5a

    .line 450
    .local v15, nearestOrientationAngle:I
    const/16 v27, 0x4

    move v0, v14

    move/from16 v1, v27

    if-ne v0, v1, :cond_29c

    .line 451
    const/4 v14, 0x0

    .line 458
    :cond_29c
    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v27

    if-eqz v27, :cond_382

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v27

    if-eqz v27, :cond_382

    .line 461
    move/from16 v19, v14

    .line 463
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_2c4

    const/16 v27, 0x3

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_37a

    .line 464
    :cond_2c4
    const/high16 v27, 0x4234

    invoke-static/range {v27 .. v27}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidenceScaleFromDelta(F)F

    move-result v3

    .line 467
    .local v3, ORIENTATION_ANGLE_CONFIDENCE_SCALE_CHANGE:F
    :goto_2ca
    int-to-float v9, v15

    .line 468
    .local v9, idealOrientationAngle:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v9

    move v2, v3

    invoke-static {v0, v1, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidence(FFF)F

    move-result v18

    .line 471
    .local v18, orientationConfidence:F
    const/4 v10, 0x0

    .line 472
    .local v10, idealTiltAngle:F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    sget v29, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_ANGLE_CONFIDENCE_SCALE:F

    invoke-static/range {v27 .. v29}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidence(FFF)F

    move-result v22

    .line 475
    .local v22, tiltConfidence:F
    const v8, 0x411ce80a

    .line 476
    .local v8, idealMagnitude:F
    const v27, 0x411ce80a

    sget v28, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAGNITUDE_CONFIDENCE_SCALE:F

    move v0, v12

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidence(FFF)F

    move-result v13

    .line 479
    .local v13, magnitudeConfidence:F
    mul-float v27, v18, v22

    mul-float v5, v27, v13

    .line 482
    if-eqz v11, :cond_121

    .line 483
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Proposal: magnitude="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", tiltAngle="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", orientationAngle="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", proposedOrientation="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", combinedConfidence="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", orientationConfidence="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", tiltConfidence="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", magnitudeConfidence="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 466
    .end local v3           #ORIENTATION_ANGLE_CONFIDENCE_SCALE_CHANGE:F
    .end local v8           #idealMagnitude:F
    .end local v9           #idealOrientationAngle:F
    .end local v10           #idealTiltAngle:F
    .end local v13           #magnitudeConfidence:F
    .end local v18           #orientationConfidence:F
    .end local v22           #tiltConfidence:F
    :cond_37a
    const/high16 v27, 0x41f0

    invoke-static/range {v27 .. v27}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->confidenceScaleFromDelta(F)F

    move-result v3

    .restart local v3       #ORIENTATION_ANGLE_CONFIDENCE_SCALE_CHANGE:F
    goto/16 :goto_2ca

    .line 494
    .end local v3           #ORIENTATION_ANGLE_CONFIDENCE_SCALE_CHANGE:F
    :cond_382
    if-eqz v11, :cond_121

    .line 495
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Ignoring sensor data, no proposal: magnitude="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", tiltAngle="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", orientationAngle="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_121

    .line 522
    .end local v14           #nearestOrientation:I
    .end local v15           #nearestOrientationAngle:I
    .end local v16           #orientationAngle:I
    .end local v21           #tiltAngle:I
    .restart local v6       #confidenceAmount:F
    .restart local v7       #i:I
    :cond_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    aget v28, v27, v7

    sub-float v28, v28, v6

    aput v28, v27, v7

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    aget v27, v27, v7

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-gez v27, :cond_187

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v7

    goto/16 :goto_187

    .line 531
    .end local v5           #combinedConfidence:F
    .end local v6           #confidenceAmount:F
    .end local v7           #i:I
    .end local v12           #magnitude:F
    .end local v19           #proposedOrientation:I
    :cond_3e3
    if-eqz v11, :cond_461

    .line 532
    const-string v27, "WindowOrientationListener"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Result: rotation="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", confidence=["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mConfidence:[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "], timeDeltaMS="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_461
    if-eqz v17, :cond_472

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    .line 544
    :cond_472
    return-void
.end method
