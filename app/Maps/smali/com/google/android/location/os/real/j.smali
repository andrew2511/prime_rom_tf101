.class Lcom/google/android/location/os/real/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/location/os/real/r;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/r;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/j;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/j;-><init>(Lcom/google/android/location/os/real/r;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->i(Lcom/google/android/location/os/real/r;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    new-instance v2, Lcom/google/android/location/os/real/b;

    iget-object v3, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/location/os/real/b;-><init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V

    invoke-static {v1, v2}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->i(Lcom/google/android/location/os/real/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v2}, Lcom/google/android/location/os/real/r;->j(Lcom/google/android/location/os/real/r;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    new-instance v3, Lcom/google/android/location/os/real/d;

    iget-object v4, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/os/real/d;-><init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V

    invoke-static {v2, v3}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/d;)Lcom/google/android/location/os/real/d;

    iget-object v2, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v2}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v3}, Lcom/google/android/location/os/real/r;->k(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/d;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->b(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/k;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v5}, Lcom/google/android/location/os/real/r;->e(Lcom/google/android/location/os/real/r;)Lcom/google/android/location/os/real/e;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/location/os/real/j;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v7

    :goto_0
    invoke-interface {v1, v0}, Lw/y;->a(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-interface {v1, v0}, Lw/y;->b(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->g(Lcom/google/android/location/os/real/r;)Lw/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/j;->b:Lcom/google/android/location/os/real/r;

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/os/real/r;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lw/y;->c(Z)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
