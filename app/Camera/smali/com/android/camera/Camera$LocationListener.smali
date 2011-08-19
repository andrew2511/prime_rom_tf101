.class Lcom/android/camera/Camera$LocationListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 632
    iput-object p2, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    .line 633
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 634
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 637
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;Z)V

    .line 651
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    if-nez v0, :cond_3

    .line 652
    const-string v0, "camera"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 655
    iput-boolean v2, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 663
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 659
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 670
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 671
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;Z)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
