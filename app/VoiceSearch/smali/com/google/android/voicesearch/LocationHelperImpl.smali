.class public Lcom/google/android/voicesearch/LocationHelperImpl;
.super Ljava/lang/Object;
.source "LocationHelperImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/LocationHelper;


# static fields
.field private static final LOCATION_UPDATES_MIN_DISTANCE_METERS:F = 500.0f

.field private static final LOCATION_UPDATES_MIN_TIME_INTERVAL_MILLIS:J = 0x1d4c0L

.field private static final NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/android/voicesearch/LocationHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/google/android/voicesearch/LocationHelperImpl$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/LocationHelperImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static hasGoogleSettingsProvider(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 118
    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x43fa

    sget-object v5, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getGeoPosition()Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LocationHelperImpl;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, " epu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LocationHelperImpl;->shouldSendLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 69
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationInitialized()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSendLocation()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLocationService()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 98
    :try_start_0
    const-string v1, "network"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/LocationHelperImpl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    sget-object v1, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    const-string v2, "no network location provider, switching to gps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_1
    const-string v1, "gps"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/LocationHelperImpl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    sget-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->TAG:Ljava/lang/String;

    const-string v1, "no network or gps location provider, can\'t get a location"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopLocationService()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/LocationHelperImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    sget-object v0, Lcom/google/android/voicesearch/LocationHelperImpl;->NOOP_LOCATION_LISTENER:Landroid/location/LocationListener;

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 112
    return-void
.end method
