.class Lcom/layar/util/SensorHelper$1;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/SensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/util/SensorHelper;


# direct methods
.method constructor <init>(Lcom/layar/util/SensorHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1
    .parameter "error"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$0(Lcom/layar/util/SensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto :goto_0
.end method

.method public handleWPSPeriodicLocation(Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x1

    .line 540
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$1(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v3}, Lcom/layar/util/SensorHelper;->access$1(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$0(Lcom/layar/util/SensorHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    .line 580
    :goto_0
    return-object v1

    .line 541
    :cond_0
    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto :goto_0

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    new-instance v2, Landroid/location/Location;

    const-string v3, "skyhook"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/layar/util/SensorHelper;->access$3(Lcom/layar/util/SensorHelper;Landroid/location/Location;)V

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 548
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 550
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 553
    :cond_3
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getHPE()I

    move-result v1

    if-ltz v1, :cond_4

    .line 554
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getHPE()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 555
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1, v7}, Lcom/layar/util/SensorHelper;->access$4(Lcom/layar/util/SensorHelper;Z)V

    .line 556
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getHPE()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/layar/util/SensorHelper;->access$5(Lcom/layar/util/SensorHelper;F)V

    .line 559
    :cond_4
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getSpeed()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 560
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getBearing()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    .line 561
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 564
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 565
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 566
    iget-object v2, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v2}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 567
    iget-object v3, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v3}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 564
    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 572
    .local v0, magneticField:Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v6, v1

    .line 573
    .local v6, declination:F
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$6(Lcom/layar/util/SensorHelper;)[F

    move-result-object v1

    const/4 v2, 0x0

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 574
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$6(Lcom/layar/util/SensorHelper;)[F

    move-result-object v1

    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v7

    .line 575
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$6(Lcom/layar/util/SensorHelper;)[F

    move-result-object v1

    const/4 v2, 0x4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 576
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$6(Lcom/layar/util/SensorHelper;)[F

    move-result-object v1

    const/4 v2, 0x5

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 578
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    iget-object v2, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v2}, Lcom/layar/util/SensorHelper;->access$2(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/util/SensorHelper;->setNewLocation(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 579
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$7(Lcom/layar/util/SensorHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    :cond_5
    iget-object v1, p0, Lcom/layar/util/SensorHelper$1;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$0(Lcom/layar/util/SensorHelper;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_0
.end method
