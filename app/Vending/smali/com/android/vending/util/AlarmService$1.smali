.class Lcom/android/vending/util/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/AlarmService;->restartAlarmAfterBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/vending/util/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/vending/util/AlarmService$1;->this$0:Lcom/android/vending/util/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 95
    sget-object v10, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 96
    .local v8, startTime:J
    cmp-long v10, v8, v11

    if-nez v10, :cond_0

    .line 119
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v10, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_TIMEOUT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 104
    .local v2, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    .local v4, now:J
    sub-long v0, v4, v8

    .line 106
    .local v0, elapsed:J
    cmp-long v10, v0, v11

    if-gez v10, :cond_1

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current time is wrong? current time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alarm start time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 110
    const-wide/16 v0, 0x0

    .line 112
    :cond_1
    sub-long v6, v2, v0

    .line 115
    .local v6, remaining:J
    const-wide/16 v10, 0x4e20

    cmp-long v10, v6, v10

    if-gez v10, :cond_2

    .line 116
    const-wide/16 v6, 0x4e20

    .line 118
    :cond_2
    iget-object v10, p0, Lcom/android/vending/util/AlarmService$1;->this$0:Lcom/android/vending/util/AlarmService;

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/vending/util/AlarmService;->setMarketAlarm(Landroid/content/Context;JJ)V

    goto :goto_0
.end method
