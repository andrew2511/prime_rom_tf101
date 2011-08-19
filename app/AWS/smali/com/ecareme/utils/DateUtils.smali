.class public Lcom/ecareme/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final COMPACT_DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final COMPACT_LONG_DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final ONE_DAY:I = 0x5265c00

.field public static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_MILLIS:I = 0x1

.field public static final ONE_MINUTE:I = 0xea60

.field public static final ONE_SECOND:I = 0x3e8

.field public static final ONE_WEEK:J = 0x240c8400L

.field private static final SIMPLE_DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/utils/DateUtils;->COMPACT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/utils/DateUtils;->COMPACT_LONG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final formatCompatDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 244
    sget-object v0, Lcom/ecareme/utils/DateUtils;->COMPACT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->formatDate(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatCompatDateTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 267
    sget-object v0, Lcom/ecareme/utils/DateUtils;->COMPACT_LONG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->formatDate(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "dateformat"

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final formatDate(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 1
    .parameter "date"
    .parameter "formatter"

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 180
    monitor-enter p2

    .line 182
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p2

    .line 185
    :goto_0
    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "dateformat"

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ecareme/utils/DateUtils;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatDate(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "formatter"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/ecareme/utils/DateUtils;->formatDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 233
    sget-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->formatDate(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatDateTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 278
    sget-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->formatDate(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatDuration(J)Ljava/lang/String;
    .locals 14
    .parameter "millis"

    .prologue
    const-wide/32 v12, 0x36ee80

    const-wide/32 v10, 0xea60

    const-wide/16 v8, 0x3e8

    const/16 v7, 0x3a

    const/4 v6, 0x2

    .line 37
    rem-long v4, p0, v8

    long-to-int v2, v4

    .line 38
    .local v2, ms:I
    rem-long v4, p0, v10

    div-long/2addr v4, v8

    long-to-int v3, v4

    .line 39
    .local v3, s:I
    rem-long v4, p0, v12

    div-long/2addr v4, v10

    long-to-int v1, v4

    .line 40
    .local v1, m:I
    const-wide/32 v4, 0x5265c00

    rem-long v4, p0, v4

    div-long/2addr v4, v12

    long-to-int v0, v4

    .line 41
    .local v0, h:I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    invoke-static {v0, v6}, Lcom/ecareme/utils/StringUtils;->padLeadingZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 43
    invoke-static {v1, v6}, Lcom/ecareme/utils/StringUtils;->padLeadingZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 44
    invoke-static {v3, v6}, Lcom/ecareme/utils/StringUtils;->padLeadingZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 45
    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/ecareme/utils/StringUtils;->padLeadingZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    return-object v4
.end method

.method public static final getCalendarInstance(J)Ljava/util/Calendar;
    .locals 1
    .parameter "millis"

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 62
    return-object v0
.end method

.method public static final getCalendarInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2
    .parameter "date"

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->getCalendarInstance(J)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrenSQLDate()Ljava/sql/Date;
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLDate(J)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrenSQLTime()Ljava/sql/Time;
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLTime(J)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrentTimestamp()Ljava/sql/Timestamp;
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLTimestamp(J)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateField(Ljava/util/Date;I)I
    .locals 2
    .parameter "date"
    .parameter "field"

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->getCalendarInstance(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static final isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 77
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isLeapYear(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ecareme/utils/DateUtils;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public static final isLeapYear(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/ecareme/utils/DateUtils;->getCalendarInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/DateUtils;->isLeapYear(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public static final isValidDate(III)Z
    .locals 6
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v3, 0x0

    .line 106
    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/ecareme/utils/DateUtils;->isValidDate(IIIIII)Z

    move-result v0

    return v0
.end method

.method public static final isValidDate(IIIIII)Z
    .locals 5
    .parameter "year"
    .parameter "month"
    .parameter "date"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 136
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 137
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 139
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 140
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 141
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v2, 0xd

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 145
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 150
    :goto_0
    return v2

    .line 148
    :catch_0
    move-exception v1

    .local v1, iae:Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 150
    goto :goto_0
.end method

.method public static final isValidDate(Ljava/util/Date;)Z
    .locals 3
    .parameter "date"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 84
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v2, 0x1

    .line 92
    :goto_0
    return v2

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static final isValidTime(III)Z
    .locals 6
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 119
    const/16 v0, 0x7b8

    const/4 v1, 0x1

    const/4 v2, 0x7

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ecareme/utils/DateUtils;->isValidDate(IIIIII)Z

    move-result v0

    return v0
.end method

.method public static final parseCompatDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/ecareme/utils/DateUtils;->COMPACT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->parseDateString(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->parseDateString(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final parseDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .parameter "dateformat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final parseDateString(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .parameter "formatter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 204
    monitor-enter p1

    .line 206
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit p1

    .line 209
    :goto_0
    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/ecareme/utils/DateUtils;->SIMPLE_DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, v0}, Lcom/ecareme/utils/DateUtils;->parseDateString(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final toSQLDate(J)Ljava/sql/Date;
    .locals 1
    .parameter "millis"

    .prologue
    .line 326
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public static final toSQLDate(Ljava/util/Date;)Ljava/sql/Date;
    .locals 2
    .parameter "date"

    .prologue
    .line 306
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLDate(J)Ljava/sql/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static final toSQLTime(J)Ljava/sql/Time;
    .locals 1
    .parameter "millis"

    .prologue
    .line 321
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p0, p1}, Ljava/sql/Time;-><init>(J)V

    return-object v0
.end method

.method public static final toSQLTime(Ljava/util/Date;)Ljava/sql/Time;
    .locals 2
    .parameter "date"

    .prologue
    .line 311
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLTime(J)Ljava/sql/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public static final toSQLTimestamp(J)Ljava/sql/Timestamp;
    .locals 1
    .parameter "millis"

    .prologue
    .line 331
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public static final toSQLTimestamp(Ljava/util/Date;)Ljava/sql/Timestamp;
    .locals 2
    .parameter "date"

    .prologue
    .line 316
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/utils/DateUtils;->toSQLTimestamp(J)Ljava/sql/Timestamp;

    move-result-object v0

    goto :goto_0
.end method
