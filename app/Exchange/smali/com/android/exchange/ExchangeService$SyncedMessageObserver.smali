.class Lcom/android/exchange/ExchangeService$SyncedMessageObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncedMessageObserver"
.end annotation


# instance fields
.field alarmManager:Landroid/app/AlarmManager;

.field syncAlarmIntent:Landroid/content/Intent;

.field syncAlarmPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 897
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 898
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 892
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const-class v2, Lcom/android/exchange/EmailSyncAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->syncAlarmIntent:Landroid/content/Intent;

    .line 893
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->syncAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 895
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->alarmManager:Landroid/app/AlarmManager;

    .line 899
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 905
    return-void
.end method
