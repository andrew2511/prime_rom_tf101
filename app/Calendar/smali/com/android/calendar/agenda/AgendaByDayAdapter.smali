.class public Lcom/android/calendar/agenda/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaByDayAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter;

    const v1, 0x7f040003

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/agenda/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 75
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/agenda/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 21
    .parameter "dayAdapterInfo"

    .prologue
    .line 207
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object v5, v0

    .line 208
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v15, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;>;"
    const/4 v14, -0x1

    .line 210
    .local v14, prevStartDay:I
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 211
    .local v17, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 212
    .local v11, now:J
    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 213
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide v0, v11

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 214
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 215
    .local v10, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/4 v13, 0x0

    .local v13, position:I
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 216
    const/16 v18, 0xa

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 219
    .local v16, startDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 221
    move/from16 v0, v16

    move v1, v14

    if-eq v0, v1, :cond_1

    .line 223
    const/16 v18, -0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 224
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    :goto_1
    move/from16 v14, v16

    .line 262
    :cond_1
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/16 v18, 0xb

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 269
    .local v7, endDay:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 270
    move v0, v7

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 271
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v18

    move v1, v13

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 229
    .end local v7           #endDay:I
    :cond_3
    const/4 v6, 0x0

    .line 230
    .local v6, dayHeaderAdded:Z
    add-int/lit8 v4, v14, 0x1

    .local v4, currentDay:I
    :goto_2
    move v0, v4

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 231
    const/4 v6, 0x0

    .line 232
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 233
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 234
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 237
    .local v8, info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 238
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 244
    :cond_4
    if-nez v6, :cond_5

    .line 245
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v6, 0x1

    .line 248
    :cond_5
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 230
    .end local v8           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 254
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_7
    if-nez v6, :cond_0

    .line 255
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 277
    .end local v4           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v16           #startDay:I
    :cond_8
    if-lez v14, :cond_c

    .line 278
    add-int/lit8 v4, v14, 0x1

    .restart local v4       #currentDay:I
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    move v0, v4

    move/from16 v1, v18

    if-gt v0, v1, :cond_c

    .line 280
    const/4 v6, 0x0

    .line 281
    .restart local v6       #dayHeaderAdded:Z
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 282
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 283
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 286
    .restart local v8       #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_9

    .line 287
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 293
    :cond_9
    if-nez v6, :cond_a

    .line 294
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const/4 v6, 0x1

    .line 297
    :cond_a
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/16 v19, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 279
    .end local v8           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 301
    .end local v4           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_c
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 302
    return-void
.end method

.method public changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 204
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11
    .parameter "time"

    .prologue
    const/4 v10, 0x0

    .line 339
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    move v9, v10

    .line 363
    :goto_0
    return v9

    .line 342
    :cond_0
    invoke-virtual {p1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 343
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 344
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 345
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 346
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 347
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 348
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 349
    .local v8, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_2

    .line 350
    iget v9, v8, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 351
    .local v0, distance:I
    if-nez v0, :cond_1

    move v9, v1

    .line 352
    goto :goto_0

    .line 354
    :cond_1
    if-ge v0, v6, :cond_2

    .line 355
    move v6, v0

    .line 356
    move v7, v1

    .line 347
    .end local v0           #distance:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v8           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_3
    move v9, v7

    .line 363
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 399
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 400
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    .line 411
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 402
    .restart local v1       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 403
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 405
    if-ltz v0, :cond_1

    .line 406
    neg-int v2, v0

    goto :goto_0

    .line 411
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 89
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    move-object v1, v0

    .line 95
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v1

    .line 92
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 95
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 101
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 102
    neg-int v1, p1

    int-to-long v1, v1

    .line 107
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 104
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 107
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    move v1, v4

    if-le v0, v1, :cond_1

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 190
    .end local p0
    .end local p1
    :goto_0
    return-object v4

    .line 127
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 128
    .local v16, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move v4, v0

    if-nez v4, :cond_6

    .line 129
    const/4 v15, 0x0

    .line 130
    .local v15, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    const/4 v12, 0x0

    .line 131
    .local v12, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 135
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    move v4, v0

    if-eqz v4, :cond_2

    .line 136
    move-object/from16 v12, p2

    .line 137
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    move-object v15, v0

    .line 141
    .end local v17           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v15, :cond_3

    .line 144
    new-instance v15, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .end local v15           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    invoke-direct {v15}, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 145
    .restart local v15       #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    const v5, 0x7f040001

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p3

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 146
    const v4, 0x7f0e0004

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v15

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v12, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    .line 155
    .local v18, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    move-object v4, v0

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 156
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 157
    new-instance v4, Landroid/text/format/Time;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 159
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    move-object v13, v0

    .line 160
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    move v4, v0

    invoke-virtual {v13, v4}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v6

    .line 161
    .local v6, millis:J
    const/16 v10, 0x14

    .line 164
    .local v10, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move v5, v0

    if-ne v4, v5, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    .end local v13           #date:Landroid/text/format/Time;
    const v14, 0x7f0a0047

    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object v11, v0

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v17

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, dateViewText:Ljava/lang/String;
    :goto_1
    iget-object v4, v15, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v12

    .line 180
    goto/16 :goto_0

    .line 170
    .end local v14           #dateViewText:Ljava/lang/String;
    .restart local v13       #date:Landroid/text/format/Time;
    .restart local v16       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_5
    or-int/lit8 v10, v10, 0x2

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object v11, v0

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #dateViewText:Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v6           #millis:J
    .end local v10           #flags:I
    .end local v12           #agendaDayView:Landroid/view/View;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v14           #dateViewText:Ljava/lang/String;
    .end local v15           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v18           #tz:Ljava/lang/String;
    .restart local p1
    :cond_6
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move-object v4, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mData:I

    move v5, v0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 183
    .local v19, x:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 187
    .local v20, y:Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v4, v19

    .line 190
    goto/16 :goto_0

    .line 193
    .end local v19           #x:Landroid/view/View;
    .end local v20           #y:Landroid/widget/TextView;
    .restart local p0
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 421
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 423
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 425
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v1

    .line 423
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    move v1, v2

    .line 425
    goto :goto_0
.end method
