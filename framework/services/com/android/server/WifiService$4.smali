.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .registers 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1052
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private shouldWifiStayAwake(II)Z
    .registers 8
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1020
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1024
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_16

    move v1, v3

    .line 1033
    :goto_15
    return v1

    .line 1027
    :cond_16
    if-ne v0, v3, :cond_1c

    if-eqz p2, :cond_1c

    move v1, v3

    .line 1030
    goto :goto_15

    .line 1033
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_15
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wifi_idle_ms"

    const-wide/32 v18, 0xdbba0

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 908
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "stay_on_while_plugged_in"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 911
    .local v13, stayAwakeConditions:I
    const-string v16, "android.intent.action.SCREEN_ON"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c9

    .line 912
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_49

    .line 913
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_ON"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;Z)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_b2

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 926
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 1009
    :cond_c8
    :goto_c8
    return-void

    .line 928
    :cond_c9
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20d

    .line 929
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_e1

    .line 930
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_OFF"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;Z)Z

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_11f

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 944
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_c8

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 946
    .local v10, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v16

    sget-object v17, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1af

    .line 951
    const-wide/32 v5, 0x1d4c0

    .line 953
    .local v5, Millisidle:J
    invoke-static {}, Lcom/android/server/WifiService;->access$800()Z

    move-result v16

    if-eqz v16, :cond_160

    .line 954
    const-string v16, "wifi.idle.millis"

    const-wide/32 v17, 0x1d4c0

    invoke-static/range {v16 .. v18}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 956
    :cond_160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v5

    .line 957
    .local v14, triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_18d

    .line 958
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-wide v2, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_c8

    .line 965
    .end local v5           #Millisidle:J
    .end local v14           #triggerTime:J
    :cond_1af
    invoke-static {}, Lcom/android/server/WifiService;->access$800()Z

    move-result v16

    if-eqz v16, :cond_1be

    .line 966
    const-string v16, "wifi.connected.millis"

    const-wide/32 v17, 0xdbba0

    invoke-static/range {v16 .. v18}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 968
    :cond_1be
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v8

    .line 969
    .restart local v14       #triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_1eb

    .line 970
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-wide v2, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_c8

    .line 976
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v14           #triggerTime:J
    :cond_20d
    const-string v16, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_244

    .line 977
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_225

    .line 978
    const-string v16, "WifiService"

    const-string v17, "got ACTION_DEVICE_IDLE"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    goto/16 :goto_c8

    .line 983
    :cond_244
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_304

    .line 991
    const-string v16, "plugged"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 992
    .local v11, pluggedType:I
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_27e

    .line 993
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v16

    if-eqz v16, :cond_2f6

    move-object/from16 v0, p0

    move v1, v13

    move v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_2f6

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v8

    .line 998
    .restart local v14       #triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$1900()Z

    move-result v16

    if-eqz v16, :cond_2d6

    .line 999
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-wide v2, v14

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1003
    .end local v14           #triggerTime:J
    :cond_2f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;I)I

    goto/16 :goto_c8

    .line 1004
    .end local v11           #pluggedType:I
    :cond_304
    const-string v16, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    .line 1005
    const-string v16, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1007
    .local v12, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_c8
.end method
