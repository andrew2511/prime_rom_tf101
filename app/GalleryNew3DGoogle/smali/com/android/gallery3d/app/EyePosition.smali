.class public Lcom/android/gallery3d/app/EyePosition;
.super Ljava/lang/Object;
.source "EyePosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/EyePosition$1;,
        Lcom/android/gallery3d/app/EyePosition$PositionListener;,
        Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
    }
.end annotation


# static fields
.field private static final USER_ANGEL:D

.field private static final USER_ANGEL_COS:F

.field private static final USER_ANGEL_SIN:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscopeCountdown:I

.field private final mLimit:F

.field private mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

.field private mPositionListener:Lcom/android/gallery3d/app/EyePosition$PositionListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mStartTime:J

.field private final mUserDistance:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/high16 v0, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL:D

    .line 44
    sget-wide v0, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    .line 45
    sget-wide v0, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    .line 64
    new-instance v2, Lcom/android/gallery3d/app/EyePosition$PositionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/EyePosition$PositionListener;-><init>(Lcom/android/gallery3d/app/EyePosition;Lcom/android/gallery3d/app/EyePosition$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mPositionListener:Lcom/android/gallery3d/app/EyePosition$PositionListener;

    .line 66
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    .line 71
    const v2, 0x3e99999a

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->meterToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    .line 72
    iget v2, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    .line 74
    iget-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 76
    .local v1, wManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    .line 78
    iget-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 80
    .local v0, sManager:Landroid/hardware/SensorManager;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    .line 82
    const-string v2, "EyePosition"

    const-string v3, "no gyroscope, use accelerometer instead"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    .line 86
    const-string v2, "EyePosition"

    const-string v3, "no sensor available"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/EyePosition;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/EyePosition;->onGyroscopeChanged(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/EyePosition;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/EyePosition;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method private onAccelerometerChanged(FFF)V
    .locals 15
    .parameter "gx"
    .parameter "gy"
    .parameter "gz"

    .prologue
    .line 109
    move/from16 v8, p1

    .local v8, x:F
    move/from16 v9, p2

    .local v9, y:F
    move/from16 v10, p3

    .line 111
    .local v10, z:F
    iget-object v11, p0, Lcom/android/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 117
    :goto_0
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-float v12, v10, v10

    add-float v4, v11, v12

    .line 118
    .local v4, temp:F
    neg-float v11, v9

    div-float v3, v11, v4

    .line 120
    .local v3, t:F
    mul-float v5, v3, v8

    .line 121
    .local v5, tx:F
    const/high16 v11, -0x4080

    mul-float v12, v3, v9

    add-float v6, v11, v12

    .line 122
    .local v6, ty:F
    mul-float v7, v3, v10

    .line 124
    .local v7, tz:F
    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v2, v11

    .line 125
    .local v2, length:F
    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 127
    .local v1, glength:F
    sget v11, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v8

    div-float/2addr v11, v1

    sget v12, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v5

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v11

    iput v11, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    .line 130
    sget v11, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr v11, v9

    div-float/2addr v11, v1

    sget v12, Lcom/android/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v12, v6

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    neg-float v12, v12

    iget v13, p0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    invoke-static {v11, v12, v13}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    .line 133
    iget v11, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    iget v13, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iget v13, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    iput v11, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    .line 135
    iget-object v11, p0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    iget v12, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    iget v13, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iget v14, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v11, v12, v13, v14}, Lcom/android/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 136
    return-void

    .line 112
    .end local v1           #glength:F
    .end local v2           #length:F
    .end local v3           #t:F
    .end local v4           #temp:F
    .end local v5           #tx:F
    .end local v6           #ty:F
    .end local v7           #tz:F
    :pswitch_0
    move/from16 v0, p2

    neg-float v0, v0

    move v8, v0

    move/from16 v9, p1

    goto/16 :goto_0

    .line 113
    :pswitch_1
    move/from16 v0, p1

    neg-float v0, v0

    move v8, v0

    move/from16 v0, p2

    neg-float v0, v0

    move v9, v0

    goto/16 :goto_0

    .line 114
    :pswitch_2
    move/from16 v8, p2

    move/from16 v0, p1

    neg-float v0, v0

    move v9, v0

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGyroscopeChanged(FFF)V
    .locals 18
    .parameter "gx"
    .parameter "gy"
    .parameter "gz"

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 140
    .local v5, now:J
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-lez v10, :cond_3

    move/from16 v10, p1

    :goto_0
    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_4

    move/from16 v11, p2

    :goto_1
    add-float v3, v10, v11

    .line 141
    .local v3, distance:F
    const v10, 0x3e19999a

    cmpg-float v10, v3, v10

    if-ltz v10, :cond_0

    const/high16 v10, 0x4120

    cmpl-float v10, v3, v10

    if-gtz v10, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    move v10, v0

    if-lez v10, :cond_5

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    move v10, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 144
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v10, v0

    const/high16 v11, 0x41a0

    div-float v4, v10, v11

    .line 146
    .local v4, limit:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v10, v0

    cmpl-float v10, v10, v4

    if-gtz v10, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v10, v0

    neg-float v11, v4

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v10, v0

    cmpl-float v10, v10, v4

    if-gtz v10, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v10, v0

    neg-float v11, v4

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v10, v0

    const v11, 0x3f7eb852

    mul-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mX:F

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v10, v0

    const v11, 0x3f7eb852

    mul-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mY:F

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v11, v0

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v12, v0

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v12, v0

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    move v13, v0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 174
    .end local v4           #limit:F
    :cond_2
    :goto_2
    return-void

    .line 140
    .end local v3           #distance:F
    :cond_3
    move/from16 v0, p1

    neg-float v0, v0

    move v10, v0

    goto/16 :goto_0

    :cond_4
    move/from16 v0, p2

    neg-float v0, v0

    move v11, v0

    goto/16 :goto_1

    .line 156
    .restart local v3       #distance:F
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    move-wide v10, v0

    sub-long v10, v5, v10

    long-to-float v10, v10

    const/high16 v11, 0x447a

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v11, v0

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    move v11, v0

    neg-float v11, v11

    mul-float v7, v10, v11

    .line 157
    .local v7, t:F
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    .line 159
    move/from16 v0, p2

    neg-float v0, v0

    move v8, v0

    .local v8, x:F
    move/from16 v0, p1

    neg-float v0, v0

    move v9, v0

    .line 160
    .local v9, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 166
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v10, v0

    float-to-double v10, v10

    mul-float v12, v8, v7

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    move v14, v0

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    move v11, v0

    neg-float v11, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    move v12, v0

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v10

    const v11, 0x3f7eb852

    mul-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mX:F

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v10, v0

    float-to-double v10, v10

    mul-float v12, v9, v7

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    move v14, v0

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    move v11, v0

    neg-float v11, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mLimit:F

    move v12, v0

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v10

    const v11, 0x3f7eb852

    mul-float/2addr v10, v11

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mY:F

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    move v11, v0

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v12, v0

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v12, v0

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    move v13, v0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    goto/16 :goto_2

    .line 161
    :pswitch_0
    move/from16 v0, p1

    neg-float v0, v0

    move v8, v0

    move/from16 v9, p2

    goto/16 :goto_3

    .line 162
    :pswitch_1
    move/from16 v8, p2

    move/from16 v9, p1

    goto/16 :goto_3

    .line 163
    :pswitch_2
    move/from16 v8, p1

    move/from16 v0, p2

    neg-float v0, v0

    move v9, v0

    goto/16 :goto_3

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 199
    .local v0, sManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mPositionListener:Lcom/android/gallery3d/app/EyePosition$PositionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    .end local v0           #sManager:Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method public resetPosition()V
    .locals 4

    .prologue
    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iput v0, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    .line 93
    iget v0, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    iget v1, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    iget v2, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iget v3, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 95
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 207
    .local v0, sManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mPositionListener:Lcom/android/gallery3d/app/EyePosition$PositionListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 211
    .end local v0           #sManager:Landroid/hardware/SensorManager;
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/gallery3d/app/EyePosition;->mStartTime:J

    .line 212
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 213
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iput v1, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    .line 214
    iget v1, p0, Lcom/android/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/app/EyePosition;->mListener:Lcom/android/gallery3d/app/EyePosition$EyePositionListener;

    iget v2, p0, Lcom/android/gallery3d/app/EyePosition;->mX:F

    iget v3, p0, Lcom/android/gallery3d/app/EyePosition;->mY:F

    iget v4, p0, Lcom/android/gallery3d/app/EyePosition;->mZ:F

    invoke-interface {v1, v2, v3, v4}, Lcom/android/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    .line 216
    return-void
.end method
