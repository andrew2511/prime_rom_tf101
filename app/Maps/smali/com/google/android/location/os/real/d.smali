.class Lcom/google/android/location/os/real/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/r;

.field private final b:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/r;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/d;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/r;Lcom/google/android/location/os/real/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/d;-><init>(Lcom/google/android/location/os/real/r;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v2, 0xf

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0, v2, v5, v4}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    goto :goto_0

    :cond_2
    const-string v1, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;I)V

    goto :goto_0

    :cond_3
    const-string v1, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;I)V

    goto :goto_0

    :cond_4
    const-string v1, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;I)V

    goto :goto_0

    :cond_5
    const-string v1, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    invoke-static {v0}, Lcom/google/android/location/os/real/r;->h(Lcom/google/android/location/os/real/r;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;I)V

    goto :goto_0

    :cond_6
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/os/real/d;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, v2}, Lcom/google/android/location/os/real/i;->a(JLjava/util/List;)Lcom/google/android/location/os/real/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v2, 0xb

    invoke-static {v1, v2, v0}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v2, 0xc

    if-eqz v0, :cond_9

    move v0, v3

    :goto_2
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v3, :cond_0

    move v0, v5

    goto :goto_1

    :cond_9
    move v0, v5

    goto :goto_2

    :cond_a
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v1, 0xd

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/google/android/location/os/real/d;->a:Lcom/google/android/location/os/real/r;

    const/16 v1, 0x11

    invoke-static {p1}, Lcom/google/android/location/os/real/r;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_3
    invoke-static {v0, v1, v2, v4}, Lcom/google/android/location/os/real/r;->a(Lcom/google/android/location/os/real/r;III)V

    goto/16 :goto_0

    :cond_c
    move v2, v5

    goto :goto_3

    :cond_d
    const-string v1, "NetworkLocationCallbackRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lw/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
