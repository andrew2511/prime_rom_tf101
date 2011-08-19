.class public Lcom/asus/mygazine/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final EVENT_URI:Landroid/net/Uri;

.field public static mEventTime:Ljava/lang/String;

.field public static mEventTitle:Ljava/lang/String;

.field public static sCalendarUitls:Lcom/asus/mygazine/CalendarUtils;


# instance fields
.field private mCalendarObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.android.calendar/notify/mygazine_widget"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/CalendarUtils;->EVENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/asus/mygazine/CalendarUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/CalendarUtils$1;-><init>(Lcom/asus/mygazine/CalendarUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/CalendarUtils;->mCalendarObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static buildMarkedEvents(Landroid/database/Cursor;J)Lcom/asus/mygazine/MarkedEvents;
    .locals 9
    .parameter "cursor"
    .parameter "now"

    .prologue
    .line 76
    new-instance v6, Lcom/asus/mygazine/MarkedEvents;

    invoke-direct {v6}, Lcom/asus/mygazine/MarkedEvents;-><init>()V

    .line 77
    .local v6, events:Lcom/asus/mygazine/MarkedEvents;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 79
    .local v7, recycle:Landroid/text/format/Time;
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 80
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 82
    .local v8, row:I
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 83
    .local v0, eventId:J
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #eventId:J
    move-result-wide v1

    .line 84
    .local v1, start:J
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 85
    .local v3, end:J
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    .line 88
    .local v5, allDay:Z
    :goto_1
    if-eqz v5, :cond_1

    .line 89
    invoke-static {v7, v1, v2}, Lcom/asus/mygazine/CalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v1

    .line 90
    invoke-static {v7, v3, v4}, Lcom/asus/mygazine/CalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v3

    :cond_1
    move-object v0, p0

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/asus/mygazine/CalendarUtils;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v3

    .line 102
    .local v3, eventFlip:J
    cmp-long v0, v3, p1

    if-ltz v0, :cond_0

    .line 106
    iget v0, v6, Lcom/asus/mygazine/MarkedEvents;->primaryRow:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 108
    .end local v3           #eventFlip:J
    iput v8, v6, Lcom/asus/mygazine/MarkedEvents;->primaryRow:I

    .line 109
    iput-wide v1, v6, Lcom/asus/mygazine/MarkedEvents;->primaryTime:J

    .line 110
    const/4 v0, 0x1

    iput v0, v6, Lcom/asus/mygazine/MarkedEvents;->primaryCount:I

    goto :goto_0

    .line 85
    .end local v5           #allDay:Z
    .local v3, end:J
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 111
    .end local v3           #end:J
    .restart local v5       #allDay:Z
    :cond_3
    iget-wide v3, v6, Lcom/asus/mygazine/MarkedEvents;->primaryTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 113
    iget v0, v6, Lcom/asus/mygazine/MarkedEvents;->primaryConflictRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 114
    .end local v1           #start:J
    iput v8, v6, Lcom/asus/mygazine/MarkedEvents;->primaryConflictRow:I

    .line 116
    :cond_4
    iget v0, v6, Lcom/asus/mygazine/MarkedEvents;->primaryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/asus/mygazine/MarkedEvents;->primaryCount:I

    goto :goto_0

    .line 117
    .restart local v1       #start:J
    :cond_5
    iget v0, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryRow:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 119
    iput v8, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryRow:I

    .line 120
    iput-wide v1, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryTime:J

    .line 121
    const/4 v0, 0x1

    iput v0, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryCount:I

    goto :goto_0

    .line 122
    :cond_6
    iget-wide v3, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    .line 124
    iget v0, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/asus/mygazine/MarkedEvents;->secondaryCount:I

    goto :goto_0

    .line 130
    .end local v1           #start:J
    .end local v5           #allDay:Z
    .end local v8           #row:I
    :cond_7
    return-object v6
.end method

.method public static calculateUpdateTime(Landroid/database/Cursor;Lcom/asus/mygazine/MarkedEvents;)J
    .locals 14
    .parameter "cursor"
    .parameter "events"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 233
    const-wide/16 v9, -0x1

    .line 235
    .local v9, result:J
    iget v0, p1, Lcom/asus/mygazine/MarkedEvents;->primaryRow:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_1

    .line 236
    iget v0, p1, Lcom/asus/mygazine/MarkedEvents;->primaryRow:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    invoke-interface {p0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 238
    .local v1, start:J
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 239
    .local v3, end:J
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v5, v13

    .line 242
    .local v5, allDay:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 243
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 244
    .local v8, recycle:Landroid/text/format/Time;
    invoke-static {v8, v1, v2}, Lcom/asus/mygazine/CalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v1

    .line 245
    invoke-static {v8, v3, v4}, Lcom/asus/mygazine/CalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v3

    .end local v8           #recycle:Landroid/text/format/Time;
    :cond_0
    move-object v0, p0

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/asus/mygazine/CalendarUtils;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v9

    .line 251
    invoke-static {}, Lcom/asus/mygazine/CalendarUtils;->getNextMidnightTimeMillis()J

    move-result-wide v6

    .line 252
    .local v6, midnight:J
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 254
    .end local v1           #start:J
    .end local v3           #end:J
    .end local v5           #allDay:Z
    .end local v6           #midnight:J
    :cond_1
    return-wide v9

    .restart local v1       #start:J
    .restart local v3       #end:J
    :cond_2
    move v5, v12

    .line 239
    goto :goto_0
.end method

.method public static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 269
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 271
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEventFlip(Landroid/database/Cursor;JJZ)J
    .locals 6
    .parameter "cursor"
    .parameter "start"
    .parameter "end"
    .parameter "allDay"

    .prologue
    .line 334
    sub-long v0, p3, p1

    .line 335
    .local v0, duration:J
    if-nez p5, :cond_0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    move-wide v2, p1

    .line 338
    :goto_0
    return-wide v2

    :cond_1
    add-long v2, p1, p3

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getEventNumber(Landroid/content/ContentResolver;JJ)I
    .locals 8
    .parameter "resolver"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 277
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "begin"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "end"

    aput-object v4, v2, v0

    .line 281
    .local v2, EVENT_PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 284
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 286
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 290
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_0
    return v6

    .line 292
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMidnightTimeMillis()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 313
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 314
    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 315
    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 316
    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 317
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 318
    .local v0, midnight:J
    return-wide v0
.end method

.method public static getNearestEventInfo(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cur"

    .prologue
    .line 136
    const-string v10, "title"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, title:Ljava/lang/String;
    const-string v10, "begin"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 138
    .local v6, start:J
    const-string v10, "end"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 140
    .local v2, end:J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 142
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 143
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, eventDay:Ljava/lang/String;
    const-string v10, "HH:mm"

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, startTime:Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 148
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, endTime:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/asus/mygazine/CalendarUtils;->mEventTime:Ljava/lang/String;

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/asus/mygazine/CalendarUtils;->mEventTitle:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static getNextMidnightTimeMillis()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 301
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 302
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 303
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 304
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 305
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 306
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 307
    .local v0, midnight:J
    return-wide v0
.end method

.method public static getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;
    .locals 9
    .parameter "resolver"
    .parameter "searchDuration"
    .parameter "now"

    .prologue
    .line 161
    add-long v6, p3, p1

    .line 162
    .local v6, end:J
    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    .line 164
    .local v5, EVENT_SORT_ORDER:Ljava/lang/String;
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "allDay"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "begin"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "end"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "color"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "title"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "rrule"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "hasAlarm"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "eventLocation"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "calendar_id"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "event_id"

    aput-object v4, v2, v0

    .line 177
    .local v2, EVENT_PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "selected=1 AND selfAttendeeStatus!=2"

    .line 183
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateDateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getUpdateEventIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.mygazine.UPDATE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static startAlarm(Landroid/content/Context;JI)V
    .locals 4
    .parameter "context"
    .parameter "triggerTime"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 202
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 203
    .local v0, alarm:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 205
    .local v1, pendingUpdate:Landroid/app/PendingIntent;
    if-ne p3, v3, :cond_1

    .line 206
    invoke-static {p0}, Lcom/asus/mygazine/CalendarUtils;->getUpdateEventIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 211
    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 212
    return-void

    .line 207
    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 208
    invoke-static {p0}, Lcom/asus/mygazine/CalendarUtils;->getUpdateDateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method public static stopAlarm(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 218
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 219
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 221
    .local v1, pendingUpdate:Landroid/app/PendingIntent;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 222
    invoke-static {p0}, Lcom/asus/mygazine/CalendarUtils;->getUpdateEventIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    return-void

    .line 223
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 224
    invoke-static {p0}, Lcom/asus/mygazine/CalendarUtils;->getUpdateDateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method
