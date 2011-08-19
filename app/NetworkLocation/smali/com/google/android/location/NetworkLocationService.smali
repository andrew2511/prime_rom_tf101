.class public Lcom/google/android/location/NetworkLocationService;
.super Landroid/app/Service;
.source "NetworkLocationService.java"


# instance fields
.field private mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

.field private mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v1, "NetworkLocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "com.google.android.location.NetworkLocationProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    invoke-virtual {v1}, Lcom/google/android/location/NetworkLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-string v1, "com.google.android.location.GeocodeProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    invoke-virtual {v1}, Lcom/google/android/location/GeocodeProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "NetworkLocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind: unknown action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 39
    const-string v1, "NetworkLocationService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/google/android/location/LocationMasfClient;

    invoke-direct {v0, p0}, Lcom/google/android/location/LocationMasfClient;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, client:Lcom/google/android/location/LocationMasfClient;
    new-instance v1, Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {v1, p0, v0}, Lcom/google/android/location/NetworkLocationProvider;-><init>(Landroid/content/Context;Lcom/google/android/location/LocationMasfClient;)V

    iput-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    .line 43
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    invoke-virtual {v1}, Lcom/google/android/location/NetworkLocationProvider;->start()V

    .line 44
    new-instance v1, Lcom/google/android/location/GeocodeProvider;

    invoke-direct {v1, v0}, Lcom/google/android/location/GeocodeProvider;-><init>(Lcom/google/android/location/LocationMasfClient;)V

    iput-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/location/NetworkLocationProvider;->cleanup()V

    .line 50
    iput-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mNetworkLocationProvider:Lcom/google/android/location/NetworkLocationProvider;

    .line 51
    iput-object v1, p0, Lcom/google/android/location/NetworkLocationService;->mGeocodeProvider:Lcom/google/android/location/GeocodeProvider;

    .line 52
    return-void
.end method
