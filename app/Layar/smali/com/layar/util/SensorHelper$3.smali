.class Lcom/layar/util/SensorHelper$3;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 610
    :goto_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_1
    invoke-virtual {p0}, Lcom/layar/util/SensorHelper$3;->setFakeLocation()V

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public setFakeLocation()V
    .locals 5

    .prologue
    const-wide v3, 0x3ee4f8b580000000L

    .line 620
    iget-object v0, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 621
    iget-object v0, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 622
    iget-object v0, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 623
    iget-object v0, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    iget-object v1, p0, Lcom/layar/util/SensorHelper$3;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$10(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/util/SensorHelper;->onLocationChanged(Landroid/location/Location;)V

    .line 624
    return-void
.end method
