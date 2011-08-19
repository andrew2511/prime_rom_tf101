.class Lcom/android/location/provider/LocationProvider$1;
.super Landroid/location/ILocationProvider$Stub;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/LocationProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/LocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-direct {p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/LocationProvider;->onAddListener(ILandroid/os/WorkSource;)V

    .line 130
    return-void
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onDisable()V

    .line 94
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onEnable()V

    .line 90
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onEnableLocationTracking(Z)V

    .line 110
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetAccuracy()I

    move-result v0

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetInternalState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetPowerRequirement()I

    move-result v0

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onGetStatus(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onGetStatusUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onHasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 3
    .parameter "criteria"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onMeetsCriteria(Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public removeListener(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/location/provider/LocationProvider;->onRemoveListener(ILandroid/os/WorkSource;)V

    .line 134
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresCell()Z

    move-result v0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresNetwork()Z

    move-result v0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onRequiresSatellite()Z

    move-result v0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProvider;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 5
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/location/provider/LocationProvider;->onSetMinTime(JLandroid/os/WorkSource;)V

    .line 114
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsAltitude()Z

    move-result v0

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsBearing()Z

    move-result v0

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/LocationProvider;->onSupportsSpeed()Z

    move-result v0

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProvider;->onUpdateLocation(Landroid/location/Location;)V

    .line 122
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 4
    .parameter "state"
    .parameter "info"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/location/provider/LocationProvider$1;->this$0:Lcom/android/location/provider/LocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProvider;->onUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 118
    return-void
.end method
