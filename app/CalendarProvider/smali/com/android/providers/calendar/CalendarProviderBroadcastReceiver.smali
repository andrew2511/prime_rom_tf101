.class public Lcom/android/providers/calendar/CalendarProviderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarProviderBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    const-string v0, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProviderBroadcastReceiver;->setResultCode(I)V

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->getInstance()Lcom/android/providers/calendar/CalendarProvider2;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider2;->acquireScheduleNextAlarmWakeLock()V

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProviderBroadcastReceiver;->setResultCode(I)V

    .line 39
    const-class v0, Lcom/android/providers/calendar/CalendarProviderIntentService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
