.class public Lcom/android/deskclock/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J
    .locals 6
    .parameter "context"
    .parameter "alarm"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 100
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/android/deskclock/Alarm;->id:I

    .line 104
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 105
    .local v0, timeInMillis:J
    iget-boolean v4, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 109
    return-wide v0
.end method

.method private static calculateAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 3
    .parameter "alarm"

    .prologue
    .line 499
    iget v0, p0, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p0, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 512
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 514
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 515
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 518
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 520
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 522
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 523
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 524
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 525
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 527
    invoke-virtual {p2, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 528
    .local v0, addDays:I
    if-lez v0, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 529
    :cond_2
    return-object v1
.end method

.method public static calculateNextAlert(Landroid/content/Context;)Lcom/android/deskclock/Alarm;
    .locals 11
    .parameter "context"

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    const-wide v3, 0x7fffffffffffffffL

    .line 283
    .local v3, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 284
    .local v5, now:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/deskclock/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 285
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    :cond_0
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, v2}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 291
    .local v0, a:Lcom/android/deskclock/Alarm;
    iget-wide v7, v0, Lcom/android/deskclock/Alarm;->time:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 292
    invoke-static {v0}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/deskclock/Alarm;->time:J

    .line 300
    :cond_1
    iget-wide v7, v0, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 301
    iget-wide v3, v0, Lcom/android/deskclock/Alarm;->time:J

    .line 302
    move-object v1, v0

    .line 304
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 306
    .end local v0           #a:Lcom/android/deskclock/Alarm;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_4
    return-object v1

    .line 293
    .restart local v0       #a:Lcom/android/deskclock/Alarm;
    :cond_5
    iget-wide v7, v0, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_1

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disabling expired alarm set for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {v8, v9}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 297
    const/4 v7, 0x0

    invoke-static {p0, v0, v7}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_0
.end method

.method private static clearSnoozeIfNeeded(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "alarmTime"

    .prologue
    .line 174
    const-string v3, "AlarmClock"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "snooze_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 177
    .local v1, snoozeTime:J
    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 178
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 180
    :cond_0
    return-void
.end method

.method private static clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "context"
    .parameter "prefs"

    .prologue
    const/4 v4, -0x1

    .line 448
    const-string v3, "snooze_id"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 449
    .local v0, alarmId:I
    if-eq v0, v4, :cond_0

    .line 450
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 452
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 455
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 456
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "snooze_id"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string v3, "snooze_time"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 459
    return-void
.end method

.method private static createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;
    .locals 5
    .parameter "alarm"

    .prologue
    .line 148
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 151
    .local v2, values:Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .line 152
    .local v0, time:J
    iget-object v3, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 156
    :cond_0
    const-string v3, "enabled"

    iget-boolean v4, p0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v3, "hour"

    iget v4, p0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v3, "minutes"

    iget v4, p0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v3, "alarmtime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v3, "daysofweek"

    iget-object v4, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v3, "vibrate"

    iget-boolean v4, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string v3, "message"

    iget-object v4, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "alert"

    iget-object v4, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v4, :cond_2

    const-string v4, "silent"

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v2

    .line 156
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static deleteAlarm(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 117
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 123
    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, uri:Landroid/net/Uri;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 401
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 403
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 406
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 407
    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 408
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 317
    .local v1, cur:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 319
    .local v2, now:J
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    :cond_0
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 324
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget-wide v4, v0, Lcom/android/deskclock/Alarm;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling expired alarm set for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {v5, v6}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 327
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 329
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    return-void
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, -0x1

    .line 431
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 434
    .local v1, snoozeId:I
    if-ne v1, v4, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-ne v1, p1, :cond_0

    .line 439
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 244
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 245
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 251
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V
    .locals 8
    .parameter "context"
    .parameter "alarm"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 261
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "enabled"

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    if-eqz p2, :cond_3

    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .local v1, time:J
    iget-object v4, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 268
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .line 270
    :cond_1
    const-string v4, "alarmtime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    .end local v1           #time:J
    :goto_2
    sget-object v4, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/deskclock/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 273
    :cond_3
    iget v4, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/android/deskclock/Alarm;J)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v8, 0x0

    .line 359
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 366
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 378
    .local v3, out:Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/android/deskclock/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 380
    const-string v6, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 382
    const/high16 v6, 0x1000

    invoke-static {p0, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 385
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v8, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 387
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 390
    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 391
    invoke-static {p0, v1}, Lcom/android/deskclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, timeString:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private static enableSnoozeAlert(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 466
    const-string v5, "AlarmClock"

    invoke-virtual {p0, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 469
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "snooze_id"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 470
    .local v1, id:I
    if-ne v1, v6, :cond_0

    move v5, v8

    .line 486
    :goto_0
    return v5

    .line 473
    :cond_0
    const-string v5, "snooze_time"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 476
    .local v3, time:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 477
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-nez v0, :cond_1

    move v5, v8

    .line 478
    goto :goto_0

    .line 483
    :cond_1
    iput-wide v3, v0, Lcom/android/deskclock/Alarm;->time:J

    .line 485
    invoke-static {p0, v0, v3, v4}, Lcom/android/deskclock/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/deskclock/Alarm;J)V

    .line 486
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 548
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "E kk:mm"

    move-object v0, v1

    .line 549
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    .end local p0
    :goto_1
    return-object v1

    .line 548
    .end local v0           #format:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-string v1, "E h:mm aa"

    move-object v0, v1

    goto :goto_0

    .line 549
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_1
.end method

.method static formatTime(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 534
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 535
    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 540
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kk:mm"

    move-object v0, v1

    .line 541
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    .end local p0
    :goto_1
    return-object v1

    .line 540
    .end local v0           #format:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-string v1, "h:mm aa"

    move-object v0, v1

    goto :goto_0

    .line 541
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 568
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;
    .locals 8
    .parameter "contentResolver"
    .parameter "alarmId"

    .prologue
    const/4 v3, 0x0

    .line 187
    sget-object v0, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 191
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 192
    .local v6, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v7, :cond_1

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v6, Lcom/android/deskclock/Alarm;

    .end local v6           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v6, v7}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 196
    .restart local v6       #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return-object v6
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v3, 0x0

    .line 134
    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 142
    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "timeString"

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, alarmRefresh:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "time"

    .prologue
    .line 413
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 416
    invoke-static {p0, v1}, Lcom/android/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 424
    :goto_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 425
    return-void

    .line 418
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J
    .locals 8
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v7, 0x0

    .line 208
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 209
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/deskclock/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .line 216
    .local v1, timeInMillis:J
    iget-boolean v4, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    .line 221
    iget v4, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 226
    invoke-static {p0, v1, v2}, Lcom/android/deskclock/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    .line 229
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 231
    return-wide v1
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 340
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->enableSnoozeAlert(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 342
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 343
    iget-wide v1, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/deskclock/Alarm;J)V

    .line 348
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v0       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->disableAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    return-void
.end method
