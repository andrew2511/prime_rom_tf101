.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static cancelPendingAlarms(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    return-void
.end method

.method public static refreshWidgetAsync(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f08006d

    .line 72
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 73
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 79
    :cond_0
    const-string v0, "No widgets found, ignoring refresh request"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->cancelPendingAlarms(Landroid/content/Context;)V

    .line 86
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 87
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newTeaserRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 88
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v3, v6, v6, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    aget v4, v0, v1

    invoke-virtual {v2, v4, v5, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 90
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v0, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 34
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->cancelPendingAlarms(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 28
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 59
    const-string v0, "com.google.android.youtube.action.widget_update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "Received our own update action"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->refreshWidgetAsync(Landroid/content/Context;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 45
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 46
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->refreshWidgetAsync(Landroid/content/Context;)V

    .line 47
    return-void
.end method
