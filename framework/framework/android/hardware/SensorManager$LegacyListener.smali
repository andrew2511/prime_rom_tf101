.class Landroid/hardware/SensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    .registers 5
    .parameter
    .parameter "target"

    .prologue
    .line 1792
    iput-object p1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1789
    new-instance v0, Landroid/hardware/SensorManager$LmsFilter;

    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {v0, v1}, Landroid/hardware/SensorManager$LmsFilter;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    .line 1793
    iput-object p2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 1794
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1795
    return-void
.end method

.method private mapSensorDataToWindow(I[FI)V
    .registers 12
    .parameter "sensor"
    .parameter "values"
    .parameter "orientation"

    .prologue
    const/high16 v7, 0x4334

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1851
    aget v0, p2, v4

    .line 1852
    .local v0, x:F
    aget v1, p2, v5

    .line 1853
    .local v1, y:F
    aget v2, p2, v6

    .line 1855
    .local v2, z:F
    sparse-switch p1, :sswitch_data_72

    .line 1870
    :goto_e
    aput v0, p2, v4

    .line 1871
    aput v1, p2, v5

    .line 1872
    aput v2, p2, v6

    .line 1873
    const/4 v3, 0x3

    aput v0, p2, v3

    .line 1874
    const/4 v3, 0x4

    aput v1, p2, v3

    .line 1875
    const/4 v3, 0x5

    aput v2, p2, v3

    .line 1877
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_24

    .line 1879
    sparse-switch p1, :sswitch_data_84

    .line 1894
    :cond_24
    :goto_24
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_31

    .line 1895
    aget v0, p2, v4

    .line 1896
    aget v1, p2, v5

    .line 1897
    aget v2, p2, v6

    .line 1899
    sparse-switch p1, :sswitch_data_96

    .line 1914
    :cond_31
    :goto_31
    return-void

    .line 1858
    :sswitch_32
    neg-float v2, v2

    .line 1859
    goto :goto_e

    .line 1861
    :sswitch_34
    neg-float v0, v0

    .line 1862
    neg-float v1, v1

    .line 1863
    neg-float v2, v2

    .line 1864
    goto :goto_e

    .line 1866
    :sswitch_38
    neg-float v0, v0

    .line 1867
    neg-float v1, v1

    goto :goto_e

    .line 1882
    :sswitch_3b
    neg-float v3, v1

    aput v3, p2, v4

    .line 1883
    aput v0, p2, v5

    .line 1884
    aput v2, p2, v6

    goto :goto_24

    .line 1888
    :sswitch_43
    const/high16 v3, 0x4387

    cmpg-float v3, v0, v3

    if-gez v3, :cond_54

    const/16 v3, 0x5a

    :goto_4b
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    .line 1889
    aput v2, p2, v5

    .line 1890
    aput v1, p2, v6

    goto :goto_24

    .line 1888
    :cond_54
    const/16 v3, -0x10e

    goto :goto_4b

    .line 1902
    :sswitch_57
    neg-float v3, v0

    aput v3, p2, v4

    .line 1903
    neg-float v3, v1

    aput v3, p2, v5

    .line 1904
    aput v2, p2, v6

    goto :goto_31

    .line 1908
    :sswitch_60
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_6f

    sub-float v3, v0, v7

    :goto_66
    aput v3, p2, v4

    .line 1909
    neg-float v3, v1

    aput v3, p2, v5

    .line 1910
    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_31

    .line 1908
    :cond_6f
    add-float v3, v0, v7

    goto :goto_66

    .line 1855
    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_34
        0x8 -> :sswitch_38
        0x80 -> :sswitch_32
    .end sparse-switch

    .line 1879
    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_3b
        0x8 -> :sswitch_3b
        0x80 -> :sswitch_43
    .end sparse-switch

    .line 1899
    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_57
        0x8 -> :sswitch_57
        0x80 -> :sswitch_60
    .end sparse-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1813
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_9
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_9} :catch_a

    .line 1818
    :goto_9
    return-void

    .line 1814
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1822
    iget-object v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mValues:[F

    .line 1823
    .local v1, v:[F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 1824
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 1825
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 1826
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v0

    .line 1827
    .local v0, legacyType:I
    invoke-static {}, Landroid/hardware/SensorManager;->getRotation()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/SensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 1828
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_52

    .line 1829
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3a

    .line 1830
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v3, 0x80

    invoke-interface {v2, v3, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1832
    :cond_3a
    iget v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_51

    .line 1833
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mYawfilter:Landroid/hardware/SensorManager$LmsFilter;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v5, v1, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager$LmsFilter;->filter(JF)F

    move-result v2

    aput v2, v1, v6

    .line 1834
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v7, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 1839
    :cond_51
    :goto_51
    return-void

    .line 1837
    :cond_52
    iget-object v2, p0, Landroid/hardware/SensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v2, v0, v1}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_51
.end method

.method registerSensor(I)V
    .registers 3
    .parameter "legacyType"

    .prologue
    .line 1798
    iget v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1799
    return-void
.end method

.method unregisterSensor(I)Z
    .registers 5
    .parameter "legacyType"

    .prologue
    .line 1802
    iget v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    .line 1803
    const/16 v0, 0x81

    .line 1804
    .local v0, mask:I
    and-int v1, p1, v0

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/hardware/SensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 1805
    const/4 v1, 0x0

    .line 1807
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method
