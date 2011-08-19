.class Lcom/android/calendar/widget/CalendarAppWidgetModel;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;,
        Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;,
        Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mEventInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeTZName:Ljava/lang/String;

.field final mMaxJulianDay:I

.field final mNow:J

.field final mRowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTZ:Z

.field final mTodayJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "timeZone"

    .prologue
    const/16 v5, 0x32

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    .line 244
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 246
    iget-wide v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    .line 247
    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    .line 251
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    .line 252
    return-void
.end method

.method private populateDayInfo(ILandroid/text/format/Time;)Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    .locals 8
    .parameter "julianDay"
    .parameter "recycle"

    .prologue
    .line 396
    invoke-virtual {p2, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 397
    .local v1, millis:J
    const v5, 0x80002

    .line 400
    .local v5, flags:I
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0087

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, label:Ljava/lang/String;
    :goto_0
    const v5, 0x80010

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 411
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    invoke-direct {v0, p1, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 403
    .end local v6           #label:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #label:Ljava/lang/String;
    goto :goto_0
.end method

.method private populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    .locals 12
    .parameter "eventId"
    .parameter "allDay"
    .parameter "start"
    .parameter "end"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "title"
    .parameter "location"
    .parameter "color"

    .prologue
    .line 345
    new-instance v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    invoke-direct {v9}, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;-><init>()V

    .line 348
    .local v9, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v11, whenString:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 351
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 352
    const/16 v10, 0x8

    .line 369
    .local v10, visibWhen:I
    :goto_0
    iput-wide p1, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    .line 370
    move-wide/from16 v0, p4

    move-object v2, v9

    iput-wide v0, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 371
    move-wide/from16 v0, p6

    move-object v2, v9

    iput-wide v0, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 372
    iput-boolean p3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    .line 373
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    .line 374
    iput v10, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    .line 375
    move/from16 v0, p12

    move-object v1, v9

    iput v0, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    .line 378
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 379
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    .line 383
    :goto_1
    const/4 v3, 0x0

    iput v3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    .line 386
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 387
    const/4 v3, 0x0

    iput v3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    .line 388
    move-object/from16 v0, p11

    move-object v1, v9

    iput-object v0, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    .line 392
    :goto_2
    return-object v9

    .line 354
    .end local v10           #visibWhen:I
    :cond_0
    const/high16 v8, 0x8

    .line 355
    .local v8, flags:I
    or-int/lit8 v8, v8, 0x1

    .line 356
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    or-int/lit16 v8, v8, 0x80

    .line 359
    :cond_1
    move/from16 v0, p9

    move/from16 v1, p8

    if-le v0, v1, :cond_2

    .line 360
    or-int/lit8 v8, v8, 0x10

    .line 362
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-boolean v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    if-eqz v3, :cond_3

    .line 365
    const-string v3, " "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_3
    const/4 v10, 0x0

    .restart local v10       #visibWhen:I
    goto :goto_0

    .line 381
    .end local v8           #flags:I
    :cond_4
    move-object/from16 v0, p10

    move-object v1, v9

    iput-object v0, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    goto :goto_1

    .line 390
    :cond_5
    const/16 v3, 0x8

    iput v3, v9, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    goto :goto_2
.end method


# virtual methods
.method public buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 33
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 255
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 256
    .local v26, recycle:Landroid/text/format/Time;
    new-instance v25, Ljava/util/ArrayList;

    const/4 v4, 0x7

    move-object/from16 v0, v25

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v25, mBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;>;"
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    const/4 v4, 0x7

    move/from16 v0, v23

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 259
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->setToNow()V

    .line 262
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    .line 263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mShowTZ:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 264
    invoke-static/range {p2 .. p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v26

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move v5, v0

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mHomeTZName:Ljava/lang/String;

    .line 268
    :cond_1
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v30

    .line 270
    .local v30, tz:Ljava/lang/String;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 271
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    .line 272
    .local v27, rowId:I
    const/4 v4, 0x5

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 273
    .local v5, eventId:J
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v7, v4

    .line 274
    .local v7, allDay:Z
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 275
    .local v8, start:J
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 276
    .local v10, end:J
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, title:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, location:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 282
    .local v12, startDay:I
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 283
    .local v13, endDay:I
    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 286
    .local v16, color:I
    if-eqz v7, :cond_3

    .line 287
    move-object/from16 v0, v26

    move-wide v1, v8

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 288
    move-object/from16 v0, v26

    move-wide v1, v10

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v10

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    move-wide/from16 v31, v0

    cmp-long v4, v10, v31

    if-ltz v4, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->populateEventInfo(JZJJIILjava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move v4, v0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 307
    .local v22, from:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    move v4, v0

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 308
    .local v29, to:I
    move/from16 v19, v22

    .local v19, day:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v29

    if-gt v0, v1, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move v4, v0

    sub-int v4, v19, v4

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/LinkedList;

    .line 310
    .local v17, bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    new-instance v28, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move v1, v4

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    .line 311
    .local v28, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    if-eqz v7, :cond_7

    .line 312
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 308
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 262
    .end local v5           #eventId:J
    .end local v7           #allDay:Z
    .end local v8           #start:J
    .end local v10           #end:J
    .end local v12           #startDay:I
    .end local v13           #endDay:I
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #location:Ljava/lang/String;
    .end local v16           #color:I
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v19           #day:I
    .end local v22           #from:I
    .end local v27           #rowId:I
    .end local v28           #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29           #to:I
    .end local v30           #tz:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 264
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 273
    .restart local v5       #eventId:J
    .restart local v27       #rowId:I
    .restart local v30       #tz:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_3

    .line 314
    .restart local v7       #allDay:Z
    .restart local v8       #start:J
    .restart local v10       #end:J
    .restart local v12       #startDay:I
    .restart local v13       #endDay:I
    .restart local v14       #title:Ljava/lang/String;
    .restart local v15       #location:Ljava/lang/String;
    .restart local v16       #color:I
    .restart local v17       #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .restart local v19       #day:I
    .restart local v22       #from:I
    .restart local v28       #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .restart local v29       #to:I
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 319
    .end local v5           #eventId:J
    .end local v7           #allDay:Z
    .end local v8           #start:J
    .end local v10           #end:J
    .end local v12           #startDay:I
    .end local v13           #endDay:I
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #location:Ljava/lang/String;
    .end local v16           #color:I
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    .end local v19           #day:I
    .end local v22           #from:I
    .end local v27           #rowId:I
    .end local v28           #rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    .end local v29           #to:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move/from16 v19, v0

    .line 320
    .restart local v19       #day:I
    const/16 v18, 0x0

    .line 321
    .local v18, count:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/LinkedList;

    .line 322
    .restart local v17       #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_a

    .line 325
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->populateDayInfo(ILandroid/text/format/Time;)Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    move-result-object v21

    .line 327
    .local v21, dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    .line 328
    .local v20, dayIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object v4, v0

    new-instance v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    const/4 v6, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v20           #dayIndex:I
    .end local v21           #dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int v18, v18, v4

    .line 336
    :cond_b
    add-int/lit8 v19, v19, 0x1

    .line 337
    const/16 v4, 0x14

    move/from16 v0, v18

    move v1, v4

    if-lt v0, v1, :cond_9

    .line 341
    .end local v17           #bucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;>;"
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "\nCalendarAppWidgetModel [eventInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
