.class public Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sLastUpdateTime:J


# instance fields
.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mLoader:Landroid/content/CursorLoader;

.field private mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

.field private mResources:Landroid/content/res/Resources;

.field private mTimezoneChanged:Ljava/lang/Runnable;

.field private mUpdateLoader:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    .line 148
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 336
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    .local v0, model:Lcom/android/calendar/widget/CalendarAppWidgetModel;
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 338
    return-object v0
.end method

.method private calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J
    .locals 10
    .parameter "model"
    .parameter "now"
    .parameter "timeZone"

    .prologue
    .line 346
    invoke-static {p4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getNextMidnightTimeMillis(Ljava/lang/String;)J

    move-result-wide v5

    .line 347
    .local v5, minUpdateTime:J
    iget-object v9, p1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 348
    .local v3, event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    iget-boolean v0, v3, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    .line 351
    .local v0, allDay:Z
    iget-wide v7, v3, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 352
    .local v7, start:J
    iget-wide v1, v3, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 355
    .local v1, end:J
    cmp-long v9, p2, v7

    if-gez v9, :cond_1

    .line 356
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 357
    :cond_1
    cmp-long v9, p2, v1

    if-gez v9, :cond_0

    .line 358
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 361
    .end local v0           #allDay:Z
    .end local v1           #end:J
    .end local v3           #event:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    .end local v7           #start:J
    :cond_2
    return-wide v5
.end method

.method private createLoaderUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 326
    .local v4, now:J
    sub-long v0, v4, v9

    .line 327
    .local v0, begin:J
    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v4

    add-long v2, v7, v9

    .line 329
    .local v2, end:J
    sget-object v7, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 330
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method private static getNextMidnightTimeMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "timezone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 366
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 367
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 368
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 369
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 370
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 371
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 373
    .local v0, midnightDeviceTz:J
    iput-object p0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 374
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 375
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 376
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 377
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 378
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 379
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 381
    .local v2, midnightHomeTz:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    return-wide v5
.end method

.method static updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 0
    .parameter "views"
    .parameter "id"
    .parameter "visibility"
    .parameter "string"

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 386
    if-nez p2, :cond_0

    .line 387
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 389
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 243
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 13
    .parameter "position"

    .prologue
    const/16 v12, 0x20

    .line 248
    iget-object v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    const-wide/16 v6, 0x0

    .line 260
    :goto_0
    return-wide v6

    .line 251
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 252
    .local v5, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v6, :cond_1

    .line 253
    iget v6, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    int-to-long v6, v6

    goto :goto_0

    .line 255
    :cond_1
    iget-object v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    iget-object v6, v6, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    iget v7, v5, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 256
    .local v0, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    const-wide/16 v1, 0x1f

    .line 257
    .local v1, prime:J
    const-wide/16 v3, 0x1

    .line 258
    .local v3, result:J
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    .line 259
    mul-long v6, v1, v3

    iget-wide v8, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v10, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    ushr-long/2addr v10, v12

    xor-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    add-long v3, v6, v8

    move-wide v6, v3

    .line 260
    goto :goto_0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v0, views:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 20
    .parameter "position"

    .prologue
    .line 178
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v4

    move/from16 v0, p1

    move v1, v4

    if-lt v0, v1, :cond_1

    .line 179
    :cond_0
    const/4 v4, 0x0

    .line 230
    :goto_0
    return-object v4

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    :cond_2
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000b

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 185
    .local v19, views:Landroid/widget/RemoteViews;
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(JJJ)Landroid/content/Intent;

    move-result-object v13

    .line 186
    .local v13, intent:Landroid/content/Intent;
    const v4, 0x7f0e0021

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    move-object/from16 v4, v19

    .line 187
    goto :goto_0

    .line 190
    .end local v13           #intent:Landroid/content/Intent;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move-object v0, v4

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;

    .line 191
    .local v17, rowInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    move v4, v0

    if-nez v4, :cond_4

    .line 192
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040009

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 194
    .restart local v19       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    move v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    .line 195
    .local v10, dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    const v4, 0x7f0e0004

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    move-object/from16 v4, v19

    .line 196
    goto/16 :goto_0

    .line 198
    .end local v10           #dayInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_4
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000c

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 200
    .restart local v19       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    move v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;

    .line 202
    .local v11, eventInfo:Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 203
    .local v14, now:J
    iget-boolean v4, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v4, :cond_6

    iget-wide v4, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v4, v4, v14

    if-gtz v4, :cond_6

    iget-wide v4, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v4, v14, v4

    if-gtz v4, :cond_6

    .line 204
    const v4, 0x7f0e0023

    const-string v5, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 211
    :goto_1
    const v4, 0x7f0e0008

    iget v5, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget-object v6, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 212
    const v4, 0x7f0e0009

    iget v5, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget-object v6, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 213
    const v4, 0x7f0e0007

    iget v5, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget-object v6, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 215
    const v4, 0x7f0e0024

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    const v4, 0x7f0e0024

    const-string v5, "setBackgroundColor"

    iget v6, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->color:I

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 218
    iget-wide v6, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 219
    .local v6, start:J
    iget-wide v8, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 221
    .local v8, end:J
    iget-boolean v4, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v4, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, tz:Ljava/lang/String;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 224
    .local v16, recycle:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide v1, v6

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 225
    move-object/from16 v0, v16

    move-wide v1, v8

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 227
    .end local v16           #recycle:Landroid/text/format/Time;
    .end local v18           #tz:Ljava/lang/String;
    :cond_5
    iget-wide v4, v11, Lcom/android/calendar/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(JJJ)Landroid/content/Intent;

    move-result-object v12

    .line 229
    .local v12, fillInIntent:Landroid/content/Intent;
    const v4, 0x7f0e0023

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    move-object/from16 v4, v19

    .line 230
    goto/16 :goto_0

    .line 207
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v12           #fillInIntent:Landroid/content/Intent;
    :cond_6
    const v4, 0x7f0e0023

    const-string v5, "setBackgroundResource"

    const v6, 0x7f020003

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public initLoader()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 286
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.calendar.APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v0, "content"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    const-string v0, "com.android.calendar"

    invoke-virtual {v8, v0, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_0
    const-string v0, "vnd.android.data/update"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #filter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .restart local v8       #filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v0, "content"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 300
    const-string v0, "com.android.calendar"

    invoke-virtual {v8, v0, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #filter:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .restart local v8       #filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v2

    .line 312
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/calendar/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "selected=1 AND selfAttendeeStatus!=2"

    const-string v6, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 503"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    .line 314
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 315
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 316
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 318
    return-void

    .line 292
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 293
    .local v7, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v0, "CalendarWidget"

    invoke-virtual {v7}, Landroid/content/IntentFilter$MalformedMimeTypeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->initLoader()V

    .line 155
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 15
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 401
    .local v1, matrixCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 404
    .local v2, now:J
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_0

    .line 405
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_0
    iput-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    .line 408
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    invoke-static {v11, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, tz:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-static {v11, v12, v9}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/calendar/widget/CalendarAppWidgetModel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    .line 415
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/android/calendar/widget/CalendarAppWidgetModel;

    invoke-direct {p0, v11, v2, v3, v9}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JLjava/lang/String;)J

    move-result-wide v7

    .line 420
    .local v7, triggerTime:J
    cmp-long v11, v7, v2

    if-gez v11, :cond_1

    .line 421
    const-string v11, "CalendarWidget"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encountered bad trigger time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7, v8, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-wide/32 v11, 0x1499700

    add-long v7, v2, v11

    .line 426
    :cond_1
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 428
    .local v0, alertManager:Landroid/app/AlarmManager;
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 430
    .local v4, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 431
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v7, v8, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 432
    const-string v11, "CalendarWidget"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Scheduled next update at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7, v8, v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v5, Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 434
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 436
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    sget-wide v13, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    .line 437
    new-instance v6, Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 438
    .local v6, time2:Landroid/text/format/Time;
    sget-wide v11, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    invoke-virtual {v6, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 439
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 440
    iget v11, v5, Landroid/text/format/Time;->year:I

    iget v12, v6, Landroid/text/format/Time;->year:I

    if-ne v11, v12, :cond_2

    iget v11, v5, Landroid/text/format/Time;->yearDay:I

    iget v12, v6, Landroid/text/format/Time;->yearDay:I

    if-eq v11, v12, :cond_3

    .line 441
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.calendar.APPWIDGET_UPDATE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v10, updateIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    .end local v10           #updateIntent:Landroid/content/Intent;
    :cond_3
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sput-wide v11, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 449
    .end local v6           #time2:Landroid/text/format/Time;
    :cond_4
    iget-object v11, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    iget v12, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    const v13, 0x7f0e001d

    invoke-virtual {v11, v12, v13}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 451
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method
