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

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 29
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 30
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 31
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    .line 34
    iput v0, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 35
    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 36
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 37
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 198
    new-instance v0, Lcom/asus/weather/WeatherService$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$2;-><init>(Lcom/asus/weather/WeatherService;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    .line 367
    return-void
.end method

.method private _getWeatherUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const-string v1, "[WeatherService]"

    const-string v2, "_getWeatherUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 86
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v3}, Lcom/asus/weather/WeatherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, queryType:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v2, "QUERYTYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    if-eqz v0, :cond_1

    .line 96
    const-string v1, "QUERYWEATHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->checkPreferences()V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    const-string v1, "CITYFIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iput v3, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 103
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
    .line 69
    new-instance v0, Lcom/asus/weather/WeatherService$1;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$1;-><init>(Lcom/asus/weather/WeatherService;)V

    .line 76
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
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
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/asus/weather/WeatherService;->loadFeed(DDLjava/lang/String;)V

    return-void
.end method

.method private broadcastIntentAction(I)V
    .locals 3
    .parameter "iMsg"

    .prologue
    .line 352
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, broadcastintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method private checkPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 110
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "UnitSpinner"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, unitStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Radiochoice"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 113
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

    .line 115
    packed-switch v9, :pswitch_data_0

    .line 193
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 196
    :goto_0
    return-void

    .line 121
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isWiFiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 122
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isGPSEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 124
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 132
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v0, "SHOWTOAST"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v7}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v8, intent2:Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/16 v1, 0xb

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v8}, Lcom/asus/weather/WeatherService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #intent2:Landroid/content/Intent;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 178
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "[WeatherService]"

    const-string v1, "Auto update current location:Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_0

    .line 144
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    .line 147
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 154
    :cond_2
    new-instance v0, Lcom/asus/weather/WeatherService$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asus/weather/WeatherService$MyLocationListener;-><init>(Lcom/asus/weather/WeatherService;Lcom/asus/weather/WeatherService$1;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 156
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-eqz v0, :cond_4

    .line 158
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.NETWORK_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 173
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.GPS_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 187
    :pswitch_1
    const-string v0, "[WeatherService]"

    const-string v1, "Manual search location"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Manual_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/asus/weather/WeatherService;->loadFeed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
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

    .line 249
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/CityFeedParser;->parse()Ljava/util/List;

    move-result-object v4

    .line 251
    .local v4, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    if-nez v4, :cond_0

    .line 253
    const-string v6, "[WeatherService]"

    const-string v7, "List<MessageCityFind> messages is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 291
    .end local v4           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :goto_0
    return-void

    .line 258
    .restart local v4       #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :cond_0
    const-string v6, "content://com.asus.weather.provider/cityfind"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    .local v0, CONTENT_URI:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v2, contentValue:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 262
    .local v1, content:Landroid/content/ContentResolver;
    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
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

    .line 265
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 267
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 268
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    sget-object v7, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 270
    iget-object v6, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v7, "CITYFIND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->loadFeed_cityfind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v0           #CONTENT_URI:Landroid/net/Uri;
    .end local v1           #content:Landroid/content/ContentResolver;
    .end local v2           #contentValue:Landroid/content/ContentValues;
    .end local v4           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 288
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "[WeatherService]"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    invoke-direct {p0, v9}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_0

    .line 275
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

    .line 277
    const-string v7, "city"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v7, "country"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "adminArea"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v7, "location"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_2
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;)V
    .locals 11
    .parameter "parser"

    .prologue
    const/4 v10, 0x3

    .line 297
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    if-nez v3, :cond_0

    .line 301
    const-string v6, "[WeatherService]"

    const-string v7, "List<Message> messages is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 348
    .end local v3           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :goto_0
    return-void

    .line 306
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

    .line 307
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

    .line 308
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

    .line 313
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

    .line 315
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

    .line 316
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

    .line 318
    const-string v6, "content://com.asus.weather.provider/weather/1"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    .local v0, CONTENT_URI:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v2, contentValue:Landroid/content/ContentValues;
    const-string v7, "cityname"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v7, "weathertext"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "temperature"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v7, "realfeel"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getRealfeel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v7, "windspeed"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWindspeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWinddirection()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, strWinddirection:Ljava/lang/String;
    invoke-static {v4}, Lcom/asus/weather/WeatherService;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    invoke-direct {p0, v4}, Lcom/asus/weather/WeatherService;->transformWindDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    :cond_1
    const-string v6, "winddirection"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v7, "humidity"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getHumidity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v7, "weathericon"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v7, "url"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "tempunits"

    iget-object v7, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v8, "UnitSpinner"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v7, "speedunits"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/Message;->getUnits_speed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v6, "lastupdate"

    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    .local v1, content:Landroid/content/ContentResolver;
    const-string v6, "_id=1"

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 343
    .end local v0           #CONTENT_URI:Landroid/net/Uri;
    .end local v1           #content:Landroid/content/ContentResolver;
    .end local v2           #contentValue:Landroid/content/ContentValues;
    .end local v3           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    .end local v4           #strWinddirection:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 345
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "[WeatherService]"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-direct {p0, v10}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto/16 :goto_0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 401
    .local v1, mTime:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 402
    const-string v3, "%H"

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, hour:I
    const-string v2, ""

    .line 405
    .local v2, strAMPM:Ljava/lang/String;
    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 407
    add-int/lit8 v0, v0, -0xc

    .line 408
    const-string v2, "PM"

    .line 415
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

    .line 412
    :cond_0
    const-string v2, "AM"

    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadFeed(DDLjava/lang/String;)V
    .locals 6
    .parameter "Lat"
    .parameter "Long"
    .parameter "unit"

    .prologue
    .line 229
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(DDLjava/lang/String;)V

    .line 230
    .local v0, parser:Lcom/asus/weather/accuWeather/BaseFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;)V

    .line 231
    return-void
.end method

.method private loadFeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "strLocationId"
    .parameter "unit"

    .prologue
    .line 235
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    invoke-direct {v0, p1, p2}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v0, parser:Lcom/asus/weather/accuWeather/BaseFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;)V

    .line 237
    return-void
.end method

.method private loadFeed_cityfind(Ljava/lang/String;)V
    .locals 3
    .parameter "cityfind"

    .prologue
    .line 241
    new-instance v0, Lcom/asus/weather/accuWeather/CityFeedParser;

    sget-object v1, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    iget v2, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    aget v1, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/asus/weather/accuWeather/CityFeedParser;-><init>(Ljava/lang/String;I)V

    .line 242
    .local v0, parser:Lcom/asus/weather/accuWeather/CityFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doCityParser(Lcom/asus/weather/accuWeather/CityFeedParser;)V

    .line 243
    return-void
.end method

.method private transformWindDirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strWindDirection"

    .prologue
    .line 433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 435
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    :goto_1
    return-object v1

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
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
    .line 359
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled()Z
    .locals 2

    .prologue
    .line 364
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
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 65
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 44
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 46
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->_startService()V

    .line 47
    return-void
.end method
