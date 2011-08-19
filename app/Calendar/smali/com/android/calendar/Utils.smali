.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static mAllowWeekForDetailView:Z

.field private static final mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Landroid/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "localTime"
    .parameter "tz"

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 476
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 477
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 478
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "tz"

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 464
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 466
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 467
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 468
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 512
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 154
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 315
    const/16 v5, 0x34

    .line 317
    .local v5, flags:I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .local v1, millis:J
    move-object v0, p0

    move-wide v3, v1

    .line 318
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .locals 1

    .prologue
    .line 520
    sget-boolean v0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 424
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 386
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 387
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, pref:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 397
    .local v2, startDay:I
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 398
    const/4 v3, 0x6

    .line 402
    :goto_1
    return v3

    .line 394
    .end local v2           #startDay:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #startDay:I
    goto :goto_0

    .line 399
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 400
    const/4 v3, 0x1

    goto :goto_1

    .line 402
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 419
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .parameter "week"

    .prologue
    .line 377
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 410
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 411
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static getTardis()J
    .locals 2

    .prologue
    .line 189
    sget-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 139
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x2

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x5

    .line 106
    :goto_0
    return v3

    .line 94
    :cond_0
    if-eqz v0, :cond_2

    .line 95
    const-string v3, "DETAIL_VIEW"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "preferred_detailedView"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 99
    :cond_1
    const-string v3, "DAY"

    const-string v4, "VIEW"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 101
    goto :goto_0

    .line 106
    :cond_2
    const-string v3, "preferred_startView"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .parameter "julianDay"
    .parameter "firstDayOfWeek"

    .prologue
    .line 357
    const/4 v2, 0x4

    sub-int v0, v2, p1

    .line 358
    .local v0, diff:I
    if-gez v0, :cond_0

    .line 359
    add-int/lit8 v0, v0, 0x7

    .line 361
    :cond_0
    const v2, 0x253d8c

    sub-int v1, v2, v0

    .line 362
    .local v1, refDay:I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static isSaturday(II)Z
    .locals 3
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    .line 436
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 449
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 332
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 333
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 338
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 340
    .end local v3           #thing:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 235
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 236
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 237
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 238
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 241
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static setAllowWeekForDetailView(Z)V
    .locals 0
    .parameter "allowWeekView"

    .prologue
    .line 516
    sput-boolean p0, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    .line 517
    return-void
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "viewId"

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 214
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 217
    .local v2, validDetailView:Z
    sget-boolean v3, Lcom/android/calendar/Utils;->mAllowWeekForDetailView:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 218
    const/4 v2, 0x1

    .line 224
    :goto_0
    if-eqz v2, :cond_0

    .line 226
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    :cond_0
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    return-void

    .line 220
    :cond_1
    if-eq p1, v4, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_2
    move v2, v4

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 200
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 120
    sget-object v0, Lcom/android/calendar/Utils;->mTZUtils:Landroid/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Landroid/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected static tardis()V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/Utils;->mTardis:J

    .line 186
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 288
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 289
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 290
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v5, "time"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 301
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    :cond_1
    return-wide v2

    .line 295
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 296
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
