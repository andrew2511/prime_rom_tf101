.class public Lcom/android/providers/calendar/CalendarAlarmManager;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarAlarmManager;->initializeWithContext(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 53
    return-void
.end method

.method protected initializeWithContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 45
    return-void
.end method

.method public rescheduleMissedAlarms(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "cr"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1, v0, v1}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 61
    return-void
.end method

.method public scheduleAlarm(J)V
    .locals 2
    .parameter "alarmTime"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 57
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 49
    return-void
.end method
