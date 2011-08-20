.class public Lcom/asus/weather/WeatherService;
.super Landroid/app/Service;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherService$MyLocationListener;
    }
.end annotation


# instance fields
.field bIsGPSEnabled:Z

.field bIsWiFiEnabled:Z

.field cityQueryByLocale:I

.field counts:I

.field flagGetPositionDone:Z

.field handler:Landroid/os/Handler;

.field locationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field pref:Landroid/content/SharedPreferences;

.field serviceIntent:Landroid/content/Intent;

.field private timer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 35
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 36
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    .line 40
    iput v0, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 41
    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 42
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 43
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 204
    new-instance v0, Lcom/asus/weather/WeatherService$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$2;-><init>(Lcom/asus/weather/WeatherService;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    .line 415
    return-void
.end method

.method private _getWeatherUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string v1, "[WeatherService]"

    const-string v2, "_getWeatherUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 92
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v3}, Lcom/asus/weather/WeatherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, queryType:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v2, "QUERYTYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    const-string v1, "QUERYWEATHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->checkPreferences()V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    const-string v1, "CITYFIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iput v3, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 109
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v2, "CITYFIND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/weather/WeatherService;->loadFeed_cityfind(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _startService()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/asus/weather/WeatherService$1;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$1;-><init>(Lcom/asus/weather/WeatherService;)V

    .line 82
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->_getWeatherUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/weather/WeatherService;DDLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/asus/weather/WeatherService;->loadFeed(DDLjava/lang/String;)V

    return-void
.end method

.method private broadcastIntentAction(I)V
    .locals 3
    .parameter "iMsg"

    .prologue
    .line 400
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 402
    .local v0, broadcastintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    return-void
.end method

.method private checkPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 116
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "UnitSpinner"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, unitStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Radiochoice"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 119
    .local v9, radioChoice:I
    const-string v0, "[WeatherService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreferences unitStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radioChoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    packed-switch v9, :pswitch_data_0

    .line 199
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 202
    :goto_0
    return-void

    .line 127
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isWiFiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 128
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isGPSEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 130
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 138
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v0, "SHOWTOAST"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v7}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v8, intent2:Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/16 v1, 0xb

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v8}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #intent2:Landroid/content/Intent;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 184
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "[WeatherService]"

    const-string v1, "Auto update current location:Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_0

    .line 150
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    .line 153
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 160
    :cond_2
    new-instance v0, Lcom/asus/weather/WeatherService$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asus/weather/WeatherService$MyLocationListener;-><init>(Lcom/asus/weather/WeatherService;Lcom/asus/weather/WeatherService$1;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 162
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-eqz v0, :cond_4

    .line 164
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.NETWORK_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 179
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_0

    .line 170
    :cond_4
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.GPS_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 193
    :pswitch_1
    const-string v0, "[WeatherService]"

    const-string v1, "Manual search location"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Manual_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/asus/weather/WeatherService;->loadFeed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCityParser(Lcom/asus/weather/accuWeather/CityFeedParser;)V
    .locals 10
    .parameter "parser"

    .prologue
    const/4 v9, 0x7

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/CityFeedParser;->parse()Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    if-nez v4, :cond_0

    .line 298
    const-string v6, "[WeatherService]"

    const-string v7, "List<MessageCityFind> messages is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 336
    .end local v4           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :goto_0
    return-void

    .line 303
    .restart local v4       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :cond_0
    const-string v6, "content://com.asus.weather.provider/cityfind"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    .local v0, CONTENT_URI:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v2, contentValue:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 307
    .local v1, content:Landroid/content/ContentResolver;
    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    const-string v6, "[WeatherService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messages.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 312
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 313
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    sget-object v7, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 315
    iget-object v6, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v7, "CITYFIND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->loadFeed_cityfind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0           #CONTENT_URI:Landroid/net/Uri;
    .end local v1           #content:Landroid/content/ContentResolver;
    .end local v2           #contentValue:Landroid/content/ContentValues;
    .end local v4           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 333
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "[WeatherService]"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-direct {p0, v9}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_0

    .line 320
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #CONTENT_URI:Landroid/net/Uri;
    .restart local v1       #content:Landroid/content/ContentResolver;
    .restart local v2       #contentValue:Landroid/content/ContentValues;
    .restart local v4       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 322
    const-string v7, "city"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "country"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v7, "adminArea"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v7, "location"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    :cond_2
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;Z)V
    .locals 11
    .parameter "parser"
    .parameter "bool"

    .prologue
    const/4 v10, 0x3

    .line 342
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;

    move-result-object v3

    .line 344
    .local v3, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    if-nez v3, :cond_0

    .line 346
    const-string v6, "[WeatherService]"

    const-string v7, "List<Message> messages is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 396
    .end local v3           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :goto_0
    return-void

    .line 351
    .restart local v3       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :cond_0
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [cityname]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [weathertext]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [temperature]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [weathericon]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [tempunits]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUnits_temp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v7, "[WeatherService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WeatherService [speedunits]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUnits_speed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v6, "content://com.asus.weather.provider/weather/1"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 364
    .local v0, CONTENT_URI:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v2, contentValue:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 368
    const-string v7, "cityname"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    const-string v7, "weathertext"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v7, "temperature"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v7, "realfeel"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getRealfeel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v7, "windspeed"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWindspeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWinddirection()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, strWinddirection:Ljava/lang/String;
    invoke-static {v4}, Lcom/asus/weather/WeatherService;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    invoke-direct {p0, v4}, Lcom/asus/weather/WeatherService;->transformWindDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    :cond_2
    const-string v6, "winddirection"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v7, "humidity"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getHumidity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v7, "weathericon"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v7, "url"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v6, "tempunits"

    iget-object v7, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v8, "UnitSpinner"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v7, "speedunits"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUnits_speed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v6, "lastupdate"

    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 388
    .local v1, content:Landroid/content/ContentResolver;
    const-string v6, "_id=1"

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 391
    .end local v0           #CONTENT_URI:Landroid/net/Uri;
    .end local v1           #content:Landroid/content/ContentResolver;
    .end local v2           #contentValue:Landroid/content/ContentValues;
    .end local v3           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    .end local v4           #strWinddirection:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 393
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "[WeatherService]"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    invoke-direct {p0, v10}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto/16 :goto_0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 448
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 449
    .local v1, mTime:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 450
    const-string v3, "%H"

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, hour:I
    const-string v2, ""

    .line 453
    .local v2, strAMPM:Ljava/lang/String;
    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 455
    add-int/lit8 v0, v0, -0xc

    .line 456
    const-string v2, "PM"

    .line 463
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%Y/%m/%d "

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":%M:%S"

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 460
    :cond_0
    const-string v2, "AM"

    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 470
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 476
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadFeed(DDLjava/lang/String;)V
    .locals 15
    .parameter "Lat"
    .parameter "Long"
    .parameter "unit"

    .prologue
    .line 235
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(DDLjava/lang/String;)V

    .line 237
    .local v0, parser:Lcom/asus/weather/accuWeather/BaseFeedParser;
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 238
    .local v1, geo:Landroid/location/Geocoder;
    const-string v14, ""

    .line 239
    .local v14, locality:Ljava/lang/String;
    const-string v10, ""

    .line 242
    .local v10, countryCode:Ljava/lang/String;
    const/4 v6, 0x1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v13

    .line 243
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v13, :cond_0

    .line 245
    const/4 v12, 0x0

    .end local p1
    .local v12, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 247
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    .line 248
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 245
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 251
    .end local v12           #i:I
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 252
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    .end local v11           #e:Ljava/io/IOException;
    :cond_0
    const-string v2, "TW"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    const-string v2, "content://com.asus.weather.provider/weather/1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 260
    .local v7, CONTENT_URI:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v9, contentValue:Landroid/content/ContentValues;
    const-string v2, "cityname"

    invoke-virtual {v9, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 263
    .local v8, content:Landroid/content/ContentResolver;
    const-string v2, "_id=1"

    const/4 v3, 0x0

    invoke-virtual {v8, v7, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;Z)V

    .line 276
    .end local v7           #CONTENT_URI:Landroid/net/Uri;
    .end local v8           #content:Landroid/content/ContentResolver;
    .end local v9           #contentValue:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 268
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;Z)V

    goto :goto_1

    .line 274
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;Z)V

    goto :goto_1
.end method

.method private loadFeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strLocationId"
    .parameter "unit"

    .prologue
    .line 280
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    invoke-direct {v0, p1, p2}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v0, parser:Lcom/asus/weather/accuWeather/BaseFeedParser;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;Z)V

    .line 282
    return-void
.end method

.method private loadFeed_cityfind(Ljava/lang/String;)V
    .locals 3
    .parameter "cityfind"

    .prologue
    .line 286
    new-instance v0, Lcom/asus/weather/accuWeather/CityFeedParser;

    sget-object v1, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    iget v2, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    aget v1, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/asus/weather/accuWeather/CityFeedParser;-><init>(Ljava/lang/String;I)V

    .line 287
    .local v0, parser:Lcom/asus/weather/accuWeather/CityFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doCityParser(Lcom/asus/weather/accuWeather/CityFeedParser;)V

    .line 288
    return-void
.end method

.method private transformWindDirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strWindDirection"

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 483
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    :goto_1
    return-object v1

    .line 481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public isGPSEnabled()Z
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled()Z
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 71
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 52
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->_startService()V

    .line 53
    return-void
.end method
