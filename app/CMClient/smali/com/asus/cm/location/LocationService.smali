.class public Lcom/asus/cm/location/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/location/LocationService$NetworkHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationService"

.field private static final UPDATE_LOCATION:I

.field private static mId:Ljava/lang/String;


# instance fields
.field private fixCount:I

.field private mHandler:Lcom/asus/cm/location/LocationService$NetworkHandler;

.field private mIsGPSOpenedByUs:Z

.field private mIsWifiOpenedByUs:Z

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mScheduleLoopder:Landroid/os/Looper;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/asus/cm/location/LocationService;->mIsGPSOpenedByUs:Z

    .line 49
    iput-boolean v0, p0, Lcom/asus/cm/location/LocationService;->mIsWifiOpenedByUs:Z

    .line 117
    new-instance v0, Lcom/asus/cm/location/LocationService$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/location/LocationService$1;-><init>(Lcom/asus/cm/location/LocationService;)V

    iput-object v0, p0, Lcom/asus/cm/location/LocationService;->mLocationListener:Landroid/location/LocationListener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/asus/cm/location/LocationService;)Lcom/asus/cm/location/LocationService$NetworkHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mHandler:Lcom/asus/cm/location/LocationService$NetworkHandler;

    return-object v0
.end method

.method private isAGPSProviderEnabled()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGPSProviderEnabled()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isWifiEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAGPSProviderEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method private setGPSProviderEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method private setWifiEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 81
    const-string v1, "LocationService"

    const-string v2, "LocationService.onCreate()"

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/asus/cm/location/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/asus/cm/location/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 84
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/asus/cm/location/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/asus/cm/location/LocationService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 86
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/cm/location/LocationService;->mScheduleLoopder:Landroid/os/Looper;

    .line 88
    new-instance v1, Lcom/asus/cm/location/LocationService$NetworkHandler;

    iget-object v2, p0, Lcom/asus/cm/location/LocationService;->mScheduleLoopder:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/asus/cm/location/LocationService$NetworkHandler;-><init>(Lcom/asus/cm/location/LocationService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/asus/cm/location/LocationService;->mHandler:Lcom/asus/cm/location/LocationService$NetworkHandler;

    .line 89
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/cm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/cm/util/UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/cm/util/UniqueId;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/cm/location/LocationService;->mId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "LocationService"

    const-string v1, "============ onDestroy() ==========="

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mScheduleLoopder:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 151
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/cm/location/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 152
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    .line 95
    invoke-direct {p0}, Lcom/asus/cm/location/LocationService;->isAGPSProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "LocationService"

    const-string v2, "use NETWORK_PROVIDER"

    invoke-static {v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "network"

    .line 98
    .local v1, locationProvider:Ljava/lang/String;
    invoke-direct {p0}, Lcom/asus/cm/location/LocationService;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "LocationService"

    const-string v2, "tune on  Wifi"

    invoke-static {v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v6}, Lcom/asus/cm/location/LocationService;->setWifiEnable(Z)V

    .line 101
    iput-boolean v6, p0, Lcom/asus/cm/location/LocationService;->mIsWifiOpenedByUs:Z

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/asus/cm/location/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/cm/location/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/cm/location/LocationService;->fixCount:I

    .line 114
    return v6

    .line 104
    .end local v1           #locationProvider:Ljava/lang/String;
    :cond_1
    const-string v1, "gps"

    .line 105
    .restart local v1       #locationProvider:Ljava/lang/String;
    const-string v0, "LocationService"

    const-string v2, "use GPS_PROVIDER"

    invoke-static {v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/asus/cm/location/LocationService;->isGPSProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "LocationService"

    const-string v2, "tune on  GPS"

    invoke-static {v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v6}, Lcom/asus/cm/location/LocationService;->setGPSProviderEnable(Z)V

    .line 109
    iput-boolean v6, p0, Lcom/asus/cm/location/LocationService;->mIsGPSOpenedByUs:Z

    goto :goto_0
.end method

.method protected report(Landroid/location/Location;)V
    .locals 12
    .parameter "loc"

    .prologue
    .line 178
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 179
    .local v3, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v9, "LocationReportServiceV0.1"

    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 180
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    const/4 v4, 0x0

    .line 182
    .local v4, reportURL:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v9

    const-string v10, "./LOCMO/ReportURL"

    invoke-virtual {v9, v10}, Lcom/asus/dmlib/tree/DMTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 187
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/asus/cm/location/LocationService;->mId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&latitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&longitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&accuracy="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, url:Ljava/lang/String;
    const-string v9, "LocationService"

    invoke-static {v9, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, req:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 197
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 199
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 200
    .local v7, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_0

    .line 201
    const-string v9, "LocationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "response status code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    iget v9, p0, Lcom/asus/cm/location/LocationService;->fixCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/asus/cm/location/LocationService;->fixCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 205
    const-string v9, "LocationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fixCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/asus/cm/location/LocationService;->fixCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v9, 0x0

    iput v9, p0, Lcom/asus/cm/location/LocationService;->fixCount:I

    .line 207
    iget-boolean v9, p0, Lcom/asus/cm/location/LocationService;->mIsGPSOpenedByUs:Z

    if-eqz v9, :cond_1

    .line 208
    const-string v9, "LocationService"

    const-string v10, "tune off  GPS"

    invoke-static {v9, v10}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/asus/cm/location/LocationService;->setGPSProviderEnable(Z)V

    .line 210
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/asus/cm/location/LocationService;->mIsGPSOpenedByUs:Z

    .line 212
    :cond_1
    iget-boolean v9, p0, Lcom/asus/cm/location/LocationService;->mIsWifiOpenedByUs:Z

    if-eqz v9, :cond_2

    .line 213
    const-string v9, "LocationService"

    const-string v10, "tune off  Wifi"

    invoke-static {v9, v10}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/asus/cm/location/LocationService;->setWifiEnable(Z)V

    .line 215
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/asus/cm/location/LocationService;->mIsWifiOpenedByUs:Z

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/asus/cm/location/LocationService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #statusLine:Lorg/apache/http/StatusLine;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 225
    return-void

    .line 183
    .end local v5           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #url:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 184
    .local v2, e1:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    .end local v2           #e1:Lcom/asus/dmlib/vdm/VdmException;
    .restart local v5       #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #url:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 221
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 223
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v9
.end method
