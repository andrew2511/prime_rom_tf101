.class Lcom/asus/weather/WeatherService$2;
.super Ljava/lang/Object;
.source "WeatherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherService;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherService;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget v2, v1, Lcom/asus/weather/WeatherService;->counts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/asus/weather/WeatherService;->counts:I

    .line 204
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-boolean v1, v1, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget v1, v1, Lcom/asus/weather/WeatherService;->counts:I

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    .line 209
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    invoke-virtual {v1, v0}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v2, v2, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 216
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
