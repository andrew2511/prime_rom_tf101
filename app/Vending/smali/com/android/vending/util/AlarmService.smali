.class public Lcom/android/vending/util/AlarmService;
.super Lcom/android/vending/compat/VendingService;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/AlarmService$AsynchAckNotifications;,
        Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/vending/compat/VendingService;-><init>()V

    .line 258
    return-void
.end method

.method public static cancelMarketAlarm(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 190
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 191
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 192
    return-void
.end method

.method private static createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-class v1, Lcom/android/vending/util/AlarmService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method private handleAlarm()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;

    invoke-direct {v1}, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 82
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->rescheduleMarketAlarm(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public static rescheduleMarketAlarm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/util/AlarmService$2;

    invoke-direct {v1, p0}, Lcom/android/vending/util/AlarmService$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method private restartAlarmAfterBoot()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/util/AlarmService$1;

    invoke-direct {v1, p0}, Lcom/android/vending/util/AlarmService$1;-><init>(Lcom/android/vending/util/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "duration"

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, startTime:J
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/vending/util/AlarmService;->setMarketAlarm(Landroid/content/Context;JJ)V

    .line 152
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "duration"
    .parameter "startTime"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 178
    .local v3, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, p1

    .line 179
    .local v1, alarmTime:J
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 181
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_TIMEOUT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 61
    if-nez p1, :cond_0

    move v1, v3

    .line 73
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.vending.billing.ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/android/vending/util/AlarmService;->handleAlarm()V

    :goto_1
    move v1, v3

    .line 73
    goto :goto_0

    .line 68
    :cond_1
    const-string v1, "com.android.vending.billing.RESTART_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/android/vending/util/AlarmService;->restartAlarmAfterBoot()V

    goto :goto_1

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
