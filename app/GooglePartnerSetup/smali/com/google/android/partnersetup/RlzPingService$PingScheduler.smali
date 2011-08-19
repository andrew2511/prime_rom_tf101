.class public Lcom/google/android/partnersetup/RlzPingService$PingScheduler;
.super Ljava/lang/Object;
.source "RlzPingService.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingScheduler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/partnersetup/RlzPreferencesInterface;)V
    .locals 0
    .parameter "c"
    .parameter "prefs"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 150
    return-void
.end method

.method private schedulePing(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/partnersetup/RlzPingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1, p1, p2}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->setAlarmWakeTime(J)V

    .line 162
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting next ping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 165
    invoke-virtual {p0, v5, p1, p2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 166
    return-void
.end method


# virtual methods
.method public reschedulePing()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getAlarmWakeTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->schedulePing(J)V

    .line 219
    return-void
.end method

.method public scheduleActivationPing()V
    .locals 8

    .prologue
    .line 184
    iget-object v4, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v4}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getAlarmWakeTime()J

    move-result-wide v2

    .line 185
    .local v2, scheduledTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v6}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getDelayAfterActivation()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 187
    .local v0, delayTime:J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->schedulePing(J)V

    .line 188
    return-void
.end method

.method public scheduleEventPing()V
    .locals 8

    .prologue
    .line 196
    iget-object v4, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v4}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getAlarmWakeTime()J

    move-result-wide v2

    .line 197
    .local v2, scheduledTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v6}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getDelayAfterEvent()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 199
    .local v0, delayTime:J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->schedulePing(J)V

    .line 200
    return-void
.end method

.method public schedulePeriodicPing()V
    .locals 5

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getPingInterval()I

    move-result v0

    .line 174
    .local v0, secondsToAdd:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->schedulePing(J)V

    .line 176
    return-void
.end method

.method public scheduleRetryPing()V
    .locals 6

    .prologue
    .line 207
    iget-object v2, p0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->mPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v2}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getRetryInterval()I

    move-result v0

    .line 208
    .local v0, retryInterval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 210
    .local v1, retryTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;->schedulePing(J)V

    .line 211
    return-void
.end method
