.class Lcom/asus/weather/WeatherService$MyLocationListener;
.super Ljava/lang/Object;
.source "WeatherService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherService;


# direct methods
.method private constructor <init>(Lcom/asus/weather/WeatherService;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/weather/WeatherService;Lcom/asus/weather/WeatherService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherService$MyLocationListener;-><init>(Lcom/asus/weather/WeatherService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter "loc"

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    .line 422
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 423
    .local v1, geoLatitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 424
    .local v3, geoLongitude:D
    iget-object v0, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v0, v0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v5, v5, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 426
    const-string v0, "[WeatherService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyLocationListener geoLatitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", geoLongitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v5, p0, Lcom/asus/weather/WeatherService$MyLocationListener;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v5, v5, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v6, "UnitSpinner"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/asus/weather/WeatherService;->access$200(Lcom/asus/weather/WeatherService;DDLjava/lang/String;)V

    .line 430
    .end local v1           #geoLatitude:D
    .end local v3           #geoLongitude:D
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 434
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 438
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 443
    return-void
.end method
