.class public LU/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:I

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:LU/f;

.field private h:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LU/e;->c:J

    iput p2, p0, LU/e;->b:I

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LU/e;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, LU/e;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/e;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LU/e;->h:Landroid/hardware/Sensor;

    :cond_0
    invoke-virtual {p0}, LU/e;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LU/e;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, LU/e;->h:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public a(LU/f;)V
    .locals 0

    iput-object p1, p0, LU/e;->g:LU/f;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LU/e;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, LU/e;->c:J

    sub-long v2, v0, v2

    iput-wide v0, p0, LU/e;->c:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float v5, v0, v1

    add-float/2addr v5, v4

    iget v6, p0, LU/e;->d:F

    sub-float/2addr v5, v6

    iget v6, p0, LU/e;->e:F

    sub-float/2addr v5, v6

    iget v6, p0, LU/e;->f:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v2, v2

    div-float v2, v5, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    iget v3, p0, LU/e;->b:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget-object v3, p0, LU/e;->g:LU/f;

    if-eqz v3, :cond_0

    iget-object v3, p0, LU/e;->g:LU/f;

    invoke-interface {v3, v2}, LU/f;->a(F)V

    :cond_0
    iput v0, p0, LU/e;->d:F

    iput v1, p0, LU/e;->e:F

    iput v4, p0, LU/e;->f:F

    :cond_1
    return-void
.end method
