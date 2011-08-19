.class public Lcom/android/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEndMillis:J

.field private mExitWhenDone:Z

.field private mModel:Lcom/android/calendar/CalendarEventModel;

.field private final mParent:Landroid/app/Activity;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichDelete:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .locals 2
    .parameter "context"
    .parameter "parentActivity"
    .parameter "exitWhenDone"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$2;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$3;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$4;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$5;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentActivity is required to exit when done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 95
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$1;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DeleteEventHelper$1;-><init>(Lcom/android/calendar/DeleteEventHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 108
    iput-boolean p3, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DeleteEventHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DeleteEventHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/DeleteEventHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/DeleteEventHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/DeleteEventHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/CalendarEventModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/AsyncQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/DeleteEventHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/DeleteEventHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteExceptionEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private deleteExceptionEvent()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v9, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 330
    .local v9, id:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "eventStatus"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 334
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 336
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 30
    .parameter "which"

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 340
    .local v27, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v17, v0

    .line 341
    .local v17, allDay:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v21, v0

    .line 342
    .local v21, dtstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide/from16 v24, v0

    .line 355
    .local v24, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v26

    .line 356
    .local v26, isPCSyncAccount:Z
    if-eqz v26, :cond_3

    .line 357
    add-int/lit8 p1, p1, 0x2

    .line 362
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 436
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 439
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 442
    :cond_2
    return-void

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 359
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 367
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide v3, v0

    cmp-long v3, v21, v3

    if-nez v3, :cond_4

    .line 373
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v7, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 378
    .local v29, title:Ljava/lang/String;
    const-string v3, "title"

    move-object v0, v7

    move-object v1, v3

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 381
    .local v28, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    move-wide/from16 v18, v0

    .line 382
    .local v18, calendarId:J
    const-string v3, "eventTimezone"

    move-object v0, v7

    move-object v1, v3

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v3, "allDay"

    if-eqz v17, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v3, "calendar_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string v3, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v3, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v3, "originalEvent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v3, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v3, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/calendar/AsyncQueryService;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    goto/16 :goto_1

    .line 383
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 396
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v18           #calendarId:J
    .end local v28           #timezone:Ljava/lang/String;
    .end local v29           #title:Ljava/lang/String;
    :pswitch_1
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 397
    .local v11, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 404
    .end local v11           #uri:Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide v3, v0

    cmp-long v3, v21, v3

    if-nez v3, :cond_6

    .line 405
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 406
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 412
    .end local v11           #uri:Landroid/net/Uri;
    :cond_6
    new-instance v23, Landroid/pim/EventRecurrence;

    invoke-direct/range {v23 .. v23}, Landroid/pim/EventRecurrence;-><init>()V

    .line 413
    .local v23, eventRecurrence:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 414
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 415
    .local v20, date:Landroid/text/format/Time;
    if-eqz v17, :cond_7

    .line 416
    const-string v3, "UTC"

    move-object v0, v3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 418
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide v3, v0

    move-object/from16 v0, v20

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 419
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 420
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 424
    const-string v3, "UTC"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 427
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 428
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v3, "dtstart"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    const-string v3, "rrule"

    invoke-virtual/range {v23 .. v23}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 431
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v16}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public delete(JJJI)V
    .locals 8
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 196
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 199
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 200
    iput p7, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 201
    return-void
.end method

.method public delete(JJJILjava/lang/Runnable;)V
    .locals 0
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"
    .parameter "callback"

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 205
    iput-object p8, p0, Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    .line 206
    return-void
.end method

.method public delete(JJLcom/android/calendar/CalendarEventModel;I)V
    .locals 9
    .parameter "begin"
    .parameter "end"
    .parameter "model"
    .parameter "which"

    .prologue
    .line 243
    iput p6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 244
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 245
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 246
    iput-object p5, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 247
    iget-object v6, p5, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 252
    iget-object v5, p5, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 253
    .local v5, rRule:Ljava/lang/String;
    iget-object v4, p5, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    .line 256
    .local v4, originalEvent:Ljava/lang/String;
    invoke-static {p5}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v1

    .line 258
    .local v1, isPCSyncAccount:Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0064

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0063

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 264
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v4, :cond_1

    .line 266
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 324
    :cond_0
    :goto_1
    return-void

    .line 271
    :cond_1
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 279
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_2
    const v2, 0x7f07000d

    .line 296
    .local v2, labelsArrayId:I
    if-eqz v1, :cond_4

    .line 297
    const v2, 0x7f070010

    .line 298
    const/4 v6, 0x1

    if-le p6, v6, :cond_3

    .line 299
    add-int/lit8 p6, p6, -0x2

    .line 300
    iget v6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 310
    :cond_3
    :goto_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0064

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v2, p6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    iget-object v8, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 315
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 317
    const/4 v6, -0x1

    if-ne p6, v6, :cond_0

    .line 320
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 321
    .local v3, ok:Landroid/widget/Button;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 302
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v3           #ok:Landroid/widget/Button;
    :cond_4
    iget-object v6, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 303
    const v2, 0x7f07000e

    .line 304
    if-lez p6, :cond_3

    .line 305
    add-int/lit8 p6, p6, -0x1

    .line 306
    iget v6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    goto :goto_2
.end method
