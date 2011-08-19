.class public Lcom/android/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field private static final ALERT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 362
    return-void
.end method

.method private doTimeChanged()V
    .locals 5

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/calendar/alerts/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 356
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/calendar/alerts/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 357
    .local v3, service:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroid/app/AlarmManager;

    move-object v2, v0

    .line 358
    .local v2, manager:Landroid/app/AlarmManager;
    invoke-static {v1, p0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 359
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 360
    return-void
.end method

.method private static postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJZ)V
    .locals 9
    .parameter "context"
    .parameter "prefs"
    .parameter "eventName"
    .parameter "location"
    .parameter "numReminders"
    .parameter "quietUpdate"
    .parameter "highPriority"
    .parameter "startMillis"
    .parameter "allDay"

    .prologue
    .line 282
    const-string v0, "AlertService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### creating new alarm notification, numReminders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    const-string v2, " QUIET"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p6, :cond_1

    const-string v2, " high-priority"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 290
    .local v8, nm:Landroid/app/NotificationManager;
    if-nez p4, :cond_2

    .line 291
    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 352
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    :goto_2
    return-void

    .line 282
    .end local v8           #nm:Landroid/app/NotificationManager;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_0
    const-string v2, " loud"

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .restart local v8       #nm:Landroid/app/NotificationManager;
    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p6

    move-wide/from16 v5, p7

    move/from16 v7, p9

    .line 295
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/alerts/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZJZ)Landroid/app/Notification;

    move-result-object p4

    .line 297
    .local p4, notification:Landroid/app/Notification;
    iget p6, p4, Landroid/app/Notification;->defaults:I

    .end local p6
    or-int/lit8 p6, p6, 0x4

    iput p6, p4, Landroid/app/Notification;->defaults:I

    .line 300
    if-nez p5, :cond_6

    .line 302
    iput-object p2, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    .end local p5
    if-nez p5, :cond_3

    .line 304
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string p5, " - "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 315
    :cond_3
    const-string p2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 318
    const-string p2, "preferences_alerts_vibrateWhen"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p3
    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    move-object p3, p2

    .line 331
    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    :goto_3
    const-string p2, "always"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 332
    .local p2, vibrateAlways:Z
    const-string p5, "silent"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 333
    .local p3, vibrateSilent:Z
    const-string p5, "audio"

    invoke-virtual {p0, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    .line 335
    .local p0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    .end local p0           #audioManager:Landroid/media/AudioManager;
    const/4 p5, 0x1

    if-ne p0, p5, :cond_a

    const/4 p0, 0x1

    .line 339
    .local p0, nowSilent:Z
    :goto_4
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    if-eqz p0, :cond_5

    .line 340
    :cond_4
    iget p0, p4, Landroid/app/Notification;->defaults:I

    .end local p0           #nowSilent:Z
    or-int/lit8 p0, p0, 0x2

    iput p0, p4, Landroid/app/Notification;->defaults:I

    .line 345
    :cond_5
    const-string p0, "preferences_alerts_ringtone"

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p2           #vibrateAlways:Z
    move-result-object p0

    .line 347
    .local p0, reminderRingtone:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_b

    const/4 p0, 0x0

    .end local p0           #reminderRingtone:Ljava/lang/String;
    :goto_5
    iput-object p0, p4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 351
    .end local p3           #vibrateSilent:Z
    :cond_6
    const/4 p0, 0x0

    invoke-virtual {v8, p0, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 320
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p3, location:Ljava/lang/String;
    :cond_7
    const-string p2, "preferences_alerts_vibrate"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 322
    const-string p2, "preferences_alerts_vibrate"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local p3           #location:Ljava/lang/String;
    move-result p2

    .line 324
    .local p2, vibrate:Z
    if-eqz p2, :cond_8

    const p2, 0x7f0a0082

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #vibrate:Z
    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    :goto_6
    move-object p3, p2

    .line 327
    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    goto :goto_3

    .line 324
    .end local p3           #vibrateWhen:Ljava/lang/String;
    .local p2, vibrate:Z
    :cond_8
    const p2, 0x7f0a0083

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #vibrate:Z
    move-result-object p2

    goto :goto_6

    .line 329
    .local p3, location:Ljava/lang/String;
    :cond_9
    const p2, 0x7f0a0081

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    move-object p3, p2

    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    goto :goto_3

    .line 335
    .end local p0           #context:Landroid/content/Context;
    .local p2, vibrateAlways:Z
    .local p3, vibrateSilent:Z
    :cond_a
    const/4 p0, 0x0

    goto :goto_4

    .line 347
    .end local p1
    .end local p2           #vibrateAlways:Z
    .local p0, reminderRingtone:Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_5
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 44
    .parameter "context"

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 122
    .local v25, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 124
    .local v26, currentTime:J
    sget-object v10, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(state=? OR state=?) AND alarmTime<="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v13, "begin DESC, end DESC"

    move-object/from16 v0, v25

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 127
    .local v10, alertCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 128
    :cond_0
    if-eqz v10, :cond_1

    .line 129
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    const-string v10, "AlertService"

    .end local v10           #alertCursor:Landroid/database/Cursor;
    const-string v11, "No fired or scheduled alerts"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v10, "notification"

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 135
    .local p0, nm:Landroid/app/NotificationManager;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 136
    const/16 p0, 0x0

    .line 275
    .end local p0           #nm:Landroid/app/NotificationManager;
    :goto_0
    return p0

    .line 140
    .restart local v10       #alertCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const-string v11, "AlertService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "alert count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v11, 0x0

    .line 144
    .local v11, notificationEventName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 145
    .local v12, notificationEventLocation:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 146
    .local v16, notificationEventBegin:J
    const/4 v14, 0x0

    .line 147
    .local v14, notificationEventStatus:I
    const/16 v18, 0x1

    .line 148
    .local v18, notificationEventAllDay:Z
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v33, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 150
    .local v13, numReminders:I
    const/4 v15, 0x0

    .local v15, numFired:I
    move/from16 v38, v15

    .end local v15           #numFired:I
    .local v38, numFired:I
    move/from16 v37, v14

    .line 152
    .end local v14           #notificationEventStatus:I
    .local v37, notificationEventStatus:I
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 153
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 154
    .local v19, alertId:J
    const/4 v14, 0x1

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 155
    .local v31, eventId:J
    const/16 v14, 0x8

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 156
    .local v36, minutes:I
    const/4 v14, 0x3

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 157
    .local v34, eventName:Ljava/lang/String;
    const/4 v14, 0x4

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 158
    .local v35, location:Ljava/lang/String;
    const/4 v14, 0x5

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 159
    .local v40, status:I
    const/4 v14, 0x2

    move/from16 v0, v40

    move v1, v14

    if-ne v0, v1, :cond_6

    const/4 v14, 0x1

    move/from16 v28, v14

    .line 160
    .local v28, declined:Z
    :goto_2
    const/16 v14, 0x9

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 161
    .local v23, beginTime:J
    const/16 v14, 0xa

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 162
    .local v29, endTime:J
    sget-object v14, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v14

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 164
    .local v21, alertUri:Landroid/net/Uri;
    const/4 v14, 0x7

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 165
    .local v14, alarmTime:J
    const/16 v22, 0x2

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 166
    .local v39, state:I
    const/16 v22, 0x6

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0x1

    .line 169
    .local v22, allDay:Z
    :goto_3
    const-string v41, "AlertService"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "alarmTime:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .end local v14           #alarmTime:J
    const-string v15, " alertId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " eventId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " minutes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " declined:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " beginTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " endTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v41

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v19, Landroid/content/ContentValues;

    .end local v19           #alertId:J
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v19, values:Landroid/content/ContentValues;
    const/4 v14, -0x1

    .line 186
    .local v14, newState:I
    if-nez v28, :cond_8

    .line 188
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v33

    move-object v1, v15

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    if-nez v15, :cond_3

    .line 189
    add-int/lit8 v13, v13, 0x1

    .line 192
    :cond_3
    if-nez v39, :cond_13

    .line 193
    const/4 v14, 0x1

    .line 194
    add-int/lit8 v15, v38, 0x1

    .line 199
    .end local v38           #numFired:I
    .restart local v15       #numFired:I
    :try_start_1
    const-string v20, "receivedTime"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .end local v28           #declined:Z
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    :goto_4
    const/16 v20, -0x1

    move v0, v14

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    .line 207
    const-string v20, "state"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    move v14, v14

    .line 211
    .end local v39           #state:I
    .local v14, state:I
    :goto_5
    const/16 v20, 0x1

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 214
    const-string v20, "notifyTime"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-lez v20, :cond_5

    const/16 v20, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :cond_5
    const/16 v19, 0x1

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .end local v19           #values:Landroid/content/ContentValues;
    move/from16 v38, v15

    .line 221
    .end local v15           #numFired:I
    .restart local v38       #numFired:I
    goto/16 :goto_1

    .line 159
    .end local v14           #state:I
    .end local v21           #alertUri:Landroid/net/Uri;
    .end local v22           #allDay:Z
    .end local v23           #beginTime:J
    .end local v29           #endTime:J
    .local v19, alertId:J
    :cond_6
    const/4 v14, 0x0

    move/from16 v28, v14

    goto/16 :goto_2

    .line 166
    .local v14, alarmTime:J
    .restart local v21       #alertUri:Landroid/net/Uri;
    .restart local v23       #beginTime:J
    .restart local v28       #declined:Z
    .restart local v29       #endTime:J
    .restart local v39       #state:I
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 202
    .local v14, newState:I
    .local v19, values:Landroid/content/ContentValues;
    .restart local v22       #allDay:Z
    :cond_8
    const/4 v14, 0x2

    move/from16 v15, v38

    .end local v38           #numFired:I
    .restart local v15       #numFired:I
    goto :goto_4

    .line 227
    .end local v19           #values:Landroid/content/ContentValues;
    .end local v28           #declined:Z
    .end local v39           #state:I
    .local v14, state:I
    :cond_9
    packed-switch v40, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v14, 0x0

    .line 240
    .local v14, newStatus:I
    :goto_6
    if-eqz v11, :cond_a

    cmp-long v19, v16, v23

    if-gtz v19, :cond_11

    move/from16 v0, v37

    move v1, v14

    if-ge v0, v1, :cond_11

    .line 243
    :cond_a
    move-object/from16 v11, v34

    .line 244
    move-object/from16 v12, v35

    .line 245
    move-wide/from16 v16, v23

    .line 246
    move v14, v14

    .line 247
    .end local v37           #notificationEventStatus:I
    .local v14, notificationEventStatus:I
    move/from16 v18, v22

    :goto_7
    move/from16 v38, v15

    .end local v15           #numFired:I
    .restart local v38       #numFired:I
    move/from16 v37, v14

    .line 249
    .end local v14           #notificationEventStatus:I
    .restart local v37       #notificationEventStatus:I
    goto/16 :goto_1

    .line 229
    .end local v38           #numFired:I
    .local v14, state:I
    .restart local v15       #numFired:I
    :pswitch_1
    const/4 v14, 0x2

    .line 230
    .local v14, newStatus:I
    goto :goto_6

    .line 232
    .local v14, state:I
    :pswitch_2
    const/4 v14, 0x1

    .line 233
    .local v14, newStatus:I
    goto :goto_6

    .line 251
    .end local v14           #newStatus:I
    .end local v15           #numFired:I
    .end local v21           #alertUri:Landroid/net/Uri;
    .end local v22           #allDay:Z
    .end local v23           #beginTime:J
    .end local v29           #endTime:J
    .end local v31           #eventId:J
    .end local v34           #eventName:Ljava/lang/String;
    .end local v35           #location:Ljava/lang/String;
    .end local v36           #minutes:I
    .end local v40           #status:I
    .restart local v38       #numFired:I
    :cond_b
    if-eqz v10, :cond_c

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 258
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v14, "preferences_alerts"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 259
    .local v14, doAlert:Z
    const-string v15, "preferences_alerts_popup"

    const/16 v19, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 262
    .local v15, doPopup:Z
    if-nez v14, :cond_e

    .line 264
    const-string p0, "AlertService"

    .end local p0           #context:Landroid/content/Context;
    const-string v10, "alert preference is OFF"

    .end local v10           #prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 251
    .end local v14           #doAlert:Z
    .end local v15           #doPopup:Z
    .local v10, alertCursor:Landroid/database/Cursor;
    .restart local p0       #context:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move-object/from16 v11, p0

    move/from16 p0, v38

    .end local v11           #notificationEventName:Ljava/lang/String;
    .end local v38           #numFired:I
    .local p0, numFired:I
    :goto_8
    if-eqz v10, :cond_d

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v11

    .line 269
    .local v10, prefs:Landroid/content/SharedPreferences;
    .restart local v11       #notificationEventName:Ljava/lang/String;
    .restart local v14       #doAlert:Z
    .restart local v15       #doPopup:Z
    .restart local v38       #numFired:I
    .local p0, context:Landroid/content/Context;
    :cond_e
    if-nez v38, :cond_f

    const/4 v14, 0x1

    .line 270
    .local v14, quietUpdate:Z
    :goto_9
    if-lez v38, :cond_10

    if-eqz v15, :cond_10

    const/4 v15, 0x1

    .line 271
    .local v15, highPriority:Z
    :goto_a
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move-wide/from16 v7, v16

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/android/calendar/alerts/AlertService;->postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJZ)V

    .line 275
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 269
    .local v14, doAlert:Z
    .local v15, doPopup:Z
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 270
    .local v14, quietUpdate:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_a

    .line 251
    .end local v14           #quietUpdate:Z
    .end local v38           #numFired:I
    .local v10, alertCursor:Landroid/database/Cursor;
    .local v15, numFired:I
    .restart local v19       #values:Landroid/content/ContentValues;
    .restart local v21       #alertUri:Landroid/net/Uri;
    .restart local v22       #allDay:Z
    .restart local v23       #beginTime:J
    .restart local v29       #endTime:J
    .restart local v31       #eventId:J
    .restart local v34       #eventName:Ljava/lang/String;
    .restart local v35       #location:Ljava/lang/String;
    .restart local v36       #minutes:I
    .restart local v40       #status:I
    :catchall_1
    move-exception p0

    move-object/from16 v11, p0

    move/from16 p0, v15

    .end local v15           #numFired:I
    .local p0, numFired:I
    goto :goto_8

    .end local v19           #values:Landroid/content/ContentValues;
    .local v14, newStatus:I
    .restart local v15       #numFired:I
    .local p0, context:Landroid/content/Context;
    :cond_11
    move/from16 v14, v37

    .end local v37           #notificationEventStatus:I
    .local v14, notificationEventStatus:I
    goto :goto_7

    .local v14, newState:I
    .restart local v19       #values:Landroid/content/ContentValues;
    .restart local v37       #notificationEventStatus:I
    .restart local v39       #state:I
    :cond_12
    move/from16 v14, v39

    .end local v39           #state:I
    .local v14, state:I
    goto/16 :goto_5

    .end local v15           #numFired:I
    .local v14, newState:I
    .restart local v28       #declined:Z
    .restart local v38       #numFired:I
    .restart local v39       #state:I
    :cond_13
    move/from16 v15, v38

    .end local v38           #numFired:I
    .restart local v15       #numFired:I
    goto/16 :goto_4

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 380
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 382
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 383
    new-instance v1, Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    .line 384
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 400
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 95
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 99
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, action:Ljava/lang/String;
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "alarmTime"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService;->doTimeChanged()V

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_0
.end method
