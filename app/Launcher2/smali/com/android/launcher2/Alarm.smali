.class public Lcom/android/launcher2/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 58
    iget-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 71
    .end local v0           #currentTime:J
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0       #currentTime:J
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/android/launcher2/OnAlarmListener;->onAlarm(Lcom/android/launcher2/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 5
    .parameter "millisecondsInFuture"

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    .local v0, currentTime:J
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    .line 45
    iget-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/launcher2/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/launcher2/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Alarm;->mWaitingForCallback:Z

    .line 49
    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V
    .locals 0
    .parameter "alarmListener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/launcher2/Alarm;->mAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 38
    return-void
.end method
