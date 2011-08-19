.class public Lcom/android/calendar/alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 98
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 102
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 114
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 120
    :cond_0
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZJZ)Landroid/app/Notification;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 134
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 135
    const-class v6, Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 140
    const-class v7, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v7, "delete"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 144
    :cond_0
    const p1, 0x7f0a000a

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_1
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v10, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 149
    const p1, 0x7f02002f

    invoke-virtual {v10, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 151
    const/4 p1, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p1, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 153
    invoke-virtual {v10, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 155
    if-eqz p4, :cond_2

    .line 156
    const/16 p4, 0x1

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 159
    :cond_2
    const/4 p1, 0x1

    move/from16 v0, p3

    move v1, p1

    if-le v0, v1, :cond_3

    .line 160
    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 170
    :cond_3
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance p3, Landroid/text/format/Time;

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/text/format/Time;->setToNow()V

    .line 173
    const/16 p4, 0x0

    invoke-virtual/range {p3 .. p4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p4

    .line 174
    move-object/from16 v0, p3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 175
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 177
    const/high16 v4, 0x8

    .line 178
    if-nez p7, :cond_7

    .line 179
    or-int/lit8 v4, v4, 0x1

    .line 180
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 181
    or-int/lit16 v4, v4, 0x80

    move-object v12, p1

    move p1, v4

    .line 187
    :goto_0
    add-int/lit8 v4, p4, 0x1

    if-le v11, v4, :cond_9

    .line 188
    or-int/lit8 p1, p1, 0x10

    move v9, p1

    .line 191
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    move-object v4, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p5

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    if-nez p7, :cond_4

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p7

    move-object v0, v12

    move-object/from16 v1, p7

    if-eq v0, v1, :cond_4

    .line 196
    move-object/from16 v0, p3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 197
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move/from16 p3, v0

    if-eqz p3, :cond_8

    const/16 p3, 0x1

    .line 198
    :goto_2
    const-string p5, " "

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p6

    const/16 p7, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v0, p6

    move/from16 v1, p3

    move/from16 v2, p7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    add-int/lit8 p3, p4, 0x1

    move v0, v11

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 204
    const-string p3, ", "

    move-object v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const p3, 0x7f0a0087

    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_5
    if-eqz p2, :cond_6

    .line 209
    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 214
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    .line 184
    :cond_7
    const-string p1, "UTC"

    move-object v12, p1

    move p1, v4

    goto/16 :goto_0

    .line 197
    :cond_8
    const/16 p3, 0x0

    goto :goto_2

    :cond_9
    move v9, p1

    goto/16 :goto_1

    :cond_a
    move-object v12, p1

    move p1, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    const-string v0, "AlertReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/DismissAllAlarmsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    const-class v1, Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 80
    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    const-string v2, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_1
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
