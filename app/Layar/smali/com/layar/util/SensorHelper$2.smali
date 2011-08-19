.class Lcom/layar/util/SensorHelper$2;
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
    iput-object p1, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 586
    iget-object v2, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    invoke-virtual {v2}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 594
    .local v1, newLocation:Landroid/location/Location;
    iget-object v2, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v2}, Lcom/layar/util/SensorHelper;->access$8(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 595
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v2}, Lcom/layar/util/SensorHelper;->access$8(Lcom/layar/util/SensorHelper;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 599
    .local v0, needUpdate:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 600
    iget-object v2, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    invoke-virtual {v2, v1}, Lcom/layar/util/SensorHelper;->notifyLocationListeners(Landroid/location/Location;)V

    .line 601
    iget-object v2, p0, Lcom/layar/util/SensorHelper$2;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v2, v1}, Lcom/layar/util/SensorHelper;->access$9(Lcom/layar/util/SensorHelper;Landroid/location/Location;)V

    .line 603
    :cond_0
    return-void

    .line 596
    .end local v0           #needUpdate:Z
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method
