.class Lcom/google/android/location/NetworkLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.google.android.location.ALARM_WAKEUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 454
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$300(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$400(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    :cond_0
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$500(Lcom/google/android/location/NetworkLocationProvider;)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v9}, Lcom/google/android/location/NetworkLocationProvider;->access$600(Lcom/google/android/location/NetworkLocationProvider;Z)V

    goto :goto_0

    .line 459
    :cond_3
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 460
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v8}, Lcom/google/android/location/NetworkLocationProvider;->access$702(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 461
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$800(Lcom/google/android/location/NetworkLocationProvider;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 463
    .local v4, wifiScanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    .line 467
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v4}, Lcom/google/android/location/NetworkLocationProvider;->access$900(Lcom/google/android/location/NetworkLocationProvider;Ljava/util/List;)V

    .line 468
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$1000(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/LocationCollector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/location/LocationCollector;->updateWifiScanResults(Ljava/util/List;)V

    goto :goto_0

    .line 469
    .end local v4           #wifiScanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 470
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 473
    .local v3, state:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 474
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v9}, Lcom/google/android/location/NetworkLocationProvider;->access$1102(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 475
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v8}, Lcom/google/android/location/NetworkLocationProvider;->access$402(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 484
    :goto_1
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$300(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$400(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 485
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$1300(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_0

    .line 476
    :cond_5
    if-ne v3, v9, :cond_1

    .line 477
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5, v8}, Lcom/google/android/location/NetworkLocationProvider;->access$1102(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 478
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/location/NetworkLocationProvider;->access$402(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    goto :goto_1

    .line 487
    .end local v3           #state:I
    :cond_6
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 488
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 489
    .local v2, scale:I
    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 490
    .local v1, level:I
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v9

    :goto_2
    invoke-static {v5, v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1402(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 493
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$1000(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/LocationCollector;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1400(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, v2, v1, v6}, Lcom/google/android/location/LocationCollector;->updateBatteryState(IIZ)V

    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 490
    goto :goto_2

    .line 494
    .end local v1           #level:I
    .end local v2           #scale:I
    :cond_8
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1500(Lcom/google/android/location/NetworkLocationProvider;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_9

    move v6, v9

    :goto_3
    invoke-static {v5, v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1202(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 497
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1100(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v9

    :goto_4
    invoke-static {v5, v6}, Lcom/google/android/location/NetworkLocationProvider;->access$402(Lcom/google/android/location/NetworkLocationProvider;Z)Z

    .line 499
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$1000(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/LocationCollector;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v6}, Lcom/google/android/location/NetworkLocationProvider;->access$1200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v9

    :goto_5
    invoke-virtual {v5, v6}, Lcom/google/android/location/LocationCollector;->updateNetworkProviderStatus(Z)V

    .line 500
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$300(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$400(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 501
    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider$1;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v5}, Lcom/google/android/location/NetworkLocationProvider;->access$1300(Lcom/google/android/location/NetworkLocationProvider;)V

    goto/16 :goto_0

    :cond_9
    move v6, v8

    .line 495
    goto :goto_3

    :cond_a
    move v6, v8

    .line 497
    goto :goto_4

    :cond_b
    move v6, v8

    .line 499
    goto :goto_5
.end method
