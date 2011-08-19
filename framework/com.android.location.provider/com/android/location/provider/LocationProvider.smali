.class public abstract Lcom/android/location/provider/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProvider"


# instance fields
.field private mLocationManager:Landroid/location/ILocationManager;

.field private mProvider:Landroid/location/ILocationProvider$Stub;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lcom/android/location/provider/LocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/location/provider/LocationProvider$1;-><init>(Lcom/android/location/provider/LocationProvider;)V

    iput-object v1, p0, Lcom/android/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    .line 138
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 139
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/location/provider/LocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 140
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    return-object v0
.end method

.method getInterface()Landroid/location/ILocationProvider;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    return-object v0
.end method

.method public abstract onAddListener(ILandroid/os/WorkSource;)V
.end method

.method public abstract onDisable()V
.end method

.method public abstract onEnable()V
.end method

.method public abstract onEnableLocationTracking(Z)V
.end method

.method public abstract onGetAccuracy()I
.end method

.method public abstract onGetInternalState()Ljava/lang/String;
.end method

.method public abstract onGetPowerRequirement()I
.end method

.method public abstract onGetStatus(Landroid/os/Bundle;)I
.end method

.method public abstract onGetStatusUpdateTime()J
.end method

.method public abstract onHasMonetaryCost()Z
.end method

.method public abstract onMeetsCriteria(Landroid/location/Criteria;)Z
.end method

.method public abstract onRemoveListener(ILandroid/os/WorkSource;)V
.end method

.method public abstract onRequiresCell()Z
.end method

.method public abstract onRequiresNetwork()Z
.end method

.method public abstract onRequiresSatellite()Z
.end method

.method public abstract onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract onSetMinTime(JLandroid/os/WorkSource;)V
.end method

.method public abstract onSupportsAltitude()Z
.end method

.method public abstract onSupportsBearing()Z
.end method

.method public abstract onSupportsSpeed()Z
.end method

.method public abstract onUpdateLocation(Landroid/location/Location;)V
.end method

.method public abstract onUpdateNetworkState(ILandroid/net/NetworkInfo;)V
.end method

.method public reportLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/LocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 173
    :goto_6
    return-void

    .line 170
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProvider"

    const-string v2, "RemoteException in reportLocation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
