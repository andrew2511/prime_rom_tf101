.class public final Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;
.super Landroid/app/Service;
.source "DigitalAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateService"
.end annotation


# static fields
.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private final mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMonthDayFormat:Ljava/lang/String;

.field private mWeekdayFormat:Ljava/lang/String;

.field private mYearFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    .line 79
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.appwidget.action.APPWIDGET_TEXT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 162
    new-instance v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService$1;

    invoke-direct {v0, p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService$1;-><init>(Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->update()V

    return-void
.end method

.method private getNextMidnightTimeMillis()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 204
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 205
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 206
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 207
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 208
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 210
    .local v0, midnight:J
    return-wide v0
.end method

.method private setAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getNextMidnightTimeMillis()J

    move-result-wide v1

    .line 190
    .local v1, midnight:J
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 191
    .local v0, alarm:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    .line 192
    .local v3, pendingUpdate:Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_TEXT_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, updateIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 194
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 196
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mCalendar:Ljava/util/Calendar;

    .line 138
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mYearFormat:Ljava/lang/String;

    .line 140
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mWeekdayFormat:Ljava/lang/String;

    .line 141
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mMonthDayFormat:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mYearFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mWeekdayFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mMonthDayFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000b

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 147
    const v4, 0x7f0e0026

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    const v0, 0x7f0e0027

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    const v0, 0x7f0e0028

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/alarmclock/DigitalAppWidgetProvider;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->setAlarm(Landroid/content/Context;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 95
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$UpdateService;->update()V

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
