.class Lcom/google/googlenav/friend/android/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-wide v2, v2, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c()V

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iput-wide v0, v2, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c:J

    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F

    move-result v0

    const/high16 v1, -0x3d38

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-static {v1}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c(Lcom/google/googlenav/friend/android/AccelerometerObserverService;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-object v1, v1, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a:[F

    iget-object v2, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget v2, v2, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b:I

    aput v0, v1, v2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget v1, v1, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b:I

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->a(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F

    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->b(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F

    iget-object v0, p0, Lcom/google/googlenav/friend/android/y;->a:Lcom/google/googlenav/friend/android/AccelerometerObserverService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c(Lcom/google/googlenav/friend/android/AccelerometerObserverService;F)F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
