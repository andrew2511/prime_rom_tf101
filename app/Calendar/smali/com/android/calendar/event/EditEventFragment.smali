.class public Lcom/android/calendar/event/EditEventFragment;
.super Landroid/app/Fragment;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventFragment$EventBundle;,
        Lcom/android/calendar/event/EditEventFragment$Done;,
        Lcom/android/calendar/event/EditEventFragment$QueryHandler;
    }
.end annotation


# instance fields
.field private mBegin:J

.field private mContext:Landroid/app/Activity;

.field private mEnd:J

.field private mEvent:Lcom/android/calendar/CalendarController$EventInfo;

.field private mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

.field mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

.field mHelper:Lcom/android/calendar/event/EditEventHelper;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsReadOnly:Z

.field private mMenu:Landroid/view/Menu;

.field mModel:Lcom/android/calendar/CalendarEventModel;

.field mModification:I

.field private mModifyDialog:Landroid/app/AlertDialog;

.field private mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

.field mOriginalModel:Lcom/android/calendar/CalendarEventModel;

.field private mOutstandingQueries:I

.field mRestoreModel:Lcom/android/calendar/CalendarEventModel;

.field private mSaveOnDetach:Z

.field public mShowModifyDialogOnLaunch:Z

.field private mUri:Landroid/net/Uri;

.field mView:Lcom/android/calendar/event/EditEventView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 362
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    .line 363
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarController$EventInfo;Z)V
    .locals 3
    .parameter "event"
    .parameter "readOnly"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 96
    iput v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 105
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditEventFragment$Done;-><init>(Lcom/android/calendar/event/EditEventFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    .line 108
    iput-boolean v2, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 366
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    .line 367
    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 368
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EditEventFragment;->setHasOptionsMenu(Z)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/EditEventFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EditEventFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EditEventFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventFragment;->setModelIfDone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EditEventFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->updateActionBar()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/calendar/event/EditEventFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EditEventFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/EditEventFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private isEmpty()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v4

    .line 747
    .end local v2           #title:Ljava/lang/String;
    :goto_0
    return v3

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 734
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    .line 736
    goto :goto_0

    .line 740
    .end local v1           #location:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 741
    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    .line 743
    goto :goto_0

    .line 747
    .end local v0           #description:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private saveReminders()V
    .locals 13

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v2, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v10

    .line 547
    .local v10, changed:Z
    if-nez v10, :cond_0

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 552
    .local v1, service:Lcom/android/calendar/AsyncQueryService;
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 554
    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v3, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 555
    .local v4, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 556
    .local v12, len:I
    if-lez v12, :cond_2

    const/4 v2, 0x1

    move v11, v2

    .line 557
    .local v11, hasAlarm:Z
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v2, v2, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eq v11, v2, :cond_1

    .line 558
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 559
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "hasAlarm"

    if-eqz v11, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 563
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v3, 0x7f0a002a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local v4           #uri:Landroid/net/Uri;
    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 556
    .end local v11           #hasAlarm:Z
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    .line 559
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v11       #hasAlarm:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private setModelIfDone(I)V
    .locals 2
    .parameter "queryType"

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 295
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V

    .line 307
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 309
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->updateActionBar()V

    .line 313
    :cond_2
    monitor-exit p0

    .line 314
    return-void

    .line 303
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startQuery()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iput-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 373
    iput-wide v5, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 374
    iput-wide v5, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 375
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v3, v3, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 378
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v3, v3, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 395
    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultStartTime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 399
    :cond_3
    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iget-wide v5, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 401
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->constructDefaultEndTime(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_7

    move v8, v1

    .line 406
    .local v8, newEvent:Z
    :goto_1
    if-nez v8, :cond_8

    .line 407
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v7, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 408
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 412
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_2
    return-void

    .line 386
    .end local v8           #newEvent:Z
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v3, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v3, v3, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 389
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v3, v3, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mUri:Landroid/net/Uri;

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v3, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    .line 392
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-wide v3, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    iput-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    goto :goto_0

    :cond_7
    move v8, v7

    .line 405
    goto :goto_1

    .line 415
    .restart local v8       #newEvent:Z
    :cond_8
    iput v9, p0, Lcom/android/calendar/event/EditEventFragment;->mOutstandingQueries:I

    .line 419
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mBegin:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 420
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, p0, Lcom/android/calendar/event/EditEventFragment;->mEnd:J

    iput-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 421
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iput v1, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 424
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "access_level>=500 AND selected=1"

    move v1, v9

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 430
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->updateActionBar()V

    .line 431
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    goto :goto_2
.end method

.method private updateActionBar()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 317
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    if-nez v6, :cond_0

    .line 359
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    const v7, 0x7f0e00a0

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 321
    .local v3, cancelItem:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    const v7, 0x7f0e009e

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 322
    .local v4, deleteItem:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    const v7, 0x7f0e009d

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 331
    .local v5, editItem:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->isExceptionEventInPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->isRepeatingEventWithExceptionsInPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v9

    .line 332
    .local v1, canModifyEvent:Z
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->isExceptionEventInPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v9

    .line 333
    .local v0, canModifyCalendar:Z
    :goto_2
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v6, v6, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 334
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :goto_3
    iget-boolean v6, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-eqz v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    const v7, 0x7f0e009f

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :cond_1
    iget v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v6, :cond_6

    .line 342
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    if-eqz v1, :cond_5

    .line 344
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #canModifyCalendar:Z
    .end local v1           #canModifyEvent:Z
    :cond_2
    move v1, v8

    .line 331
    goto :goto_1

    .restart local v1       #canModifyEvent:Z
    :cond_3
    move v0, v8

    .line 332
    goto :goto_2

    .line 336
    .restart local v0       #canModifyCalendar:Z
    :cond_4
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 346
    :cond_5
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 350
    :cond_6
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    .line 354
    .local v2, canRespond:Z
    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    .line 355
    :cond_7
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 357
    :cond_8
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method


# virtual methods
.method protected displayEditWhichDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 567
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v6, v6, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v6, :cond_1

    .line 568
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v6, v6, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v6, :cond_2

    move v5, v7

    .line 569
    .local v5, notSynced:Z
    :goto_0
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, v6, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 570
    .local v0, isFirstEventInSeries:Z
    const/4 v2, 0x0

    .line 577
    .local v2, itemIndex:I
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v6}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v1

    .line 578
    .local v1, isPCSyncAccount:Z
    if-eqz v1, :cond_3

    .line 579
    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 598
    .local v4, items:[Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #itemIndex:I
    .local v3, itemIndex:I
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v7, 0x7f0a0061

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v2

    .line 601
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 602
    add-int/lit8 v2, v3, 0x1

    .end local v3           #itemIndex:I
    .restart local v2       #itemIndex:I
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v7, 0x7f0a0062

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    .line 606
    :goto_2
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 607
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 608
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 610
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/calendar/event/EditEventFragment$1;

    invoke-direct {v7, p0, v1, v5}, Lcom/android/calendar/event/EditEventFragment$1;-><init>(Lcom/android/calendar/event/EditEventFragment;ZZ)V

    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 633
    .end local v0           #isFirstEventInSeries:Z
    .end local v1           #isPCSyncAccount:Z
    .end local v2           #itemIndex:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v5           #notSynced:Z
    :cond_1
    return-void

    .line 568
    :cond_2
    const/4 v6, 0x0

    move v5, v6

    goto :goto_0

    .line 580
    .restart local v0       #isFirstEventInSeries:Z
    .restart local v1       #isPCSyncAccount:Z
    .restart local v2       #itemIndex:I
    .restart local v5       #notSynced:Z
    :cond_3
    if-eqz v5, :cond_5

    .line 583
    if-eqz v0, :cond_4

    .line 586
    new-array v4, v7, [Ljava/lang/CharSequence;

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 588
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_4
    new-array v4, v8, [Ljava/lang/CharSequence;

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 591
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_5
    if-eqz v0, :cond_6

    .line 592
    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 596
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2           #itemIndex:I
    .restart local v3       #itemIndex:I
    iget-object v6, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    const v7, 0x7f0a0060

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v3

    .end local v3           #itemIndex:I
    .restart local v2       #itemIndex:I
    goto :goto_1

    .line 594
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_6
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/CharSequence;

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_3

    .end local v2           #itemIndex:I
    .restart local v3       #itemIndex:I
    :cond_7
    move v2, v3

    .end local v3           #itemIndex:I
    .restart local v2       #itemIndex:I
    goto :goto_2
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 801
    const-wide/16 v0, 0x200

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 809
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 813
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 816
    :cond_0
    return-void
.end method

.method isEmptyNewEvent()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 438
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    .line 440
    new-instance v0, Lcom/android/calendar/event/EditEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/event/EditEventHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHelper:Lcom/android/calendar/event/EditEventHelper;

    .line 441
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;-><init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    .line 442
    new-instance v0, Lcom/android/calendar/CalendarEventModel;

    invoke-direct {v0, p1}, Lcom/android/calendar/CalendarEventModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    .line 443
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 465
    if-eqz p1, :cond_3

    .line 466
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "key_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mRestoreModel:Lcom/android/calendar/CalendarEventModel;

    .line 470
    :cond_0
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "key_edit_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 473
    :cond_1
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    const-string v0, "key_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 476
    :cond_2
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    const-string v0, "key_read_only"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    .line 480
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 486
    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment;->mMenu:Landroid/view/Menu;

    .line 489
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->updateActionBar()V

    .line 490
    monitor-exit p0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-eqz v1, :cond_0

    .line 453
    const v1, 0x7f040018

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, view:Landroid/view/View;
    :goto_0
    new-instance v1, Lcom/android/calendar/event/EditEventView;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/calendar/event/EditEventView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    .line 458
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->startQuery()V

    .line 459
    return-object v0

    .line 455
    .end local v0           #view:Landroid/view/View;
    :cond_0
    const v1, 0x7f040014

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 768
    iput-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModifyDialog:Landroid/app/AlertDialog;

    .line 771
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 772
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 495
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 497
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canRespond(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-nez v0, :cond_1

    .line 500
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 503
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 506
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->saveReminders()V

    .line 511
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 512
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 515
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 519
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 520
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto/16 :goto_0

    .line 523
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 524
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto/16 :goto_0

    .line 527
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-eqz v0, :cond_5

    .line 528
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x8

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v1, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v6, v1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v8, v1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 531
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V

    goto/16 :goto_0

    .line 533
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 534
    invoke-direct {p0}, Lcom/android/calendar/event/EditEventFragment;->updateActionBar()V

    .line 535
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 753
    .local v0, act:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mSaveOnDetach:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 756
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mOnDone:Lcom/android/calendar/event/EditEventFragment$Done;

    invoke-virtual {v1}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    .line 758
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 759
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    .line 781
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditEventView;->prepareForSave()Z

    .line 782
    const-string v0, "key_model"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 783
    const-string v0, "key_edit_state"

    iget v1, p0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_1

    .line 785
    new-instance v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditEventFragment$EventBundle;-><init>(Lcom/android/calendar/event/EditEventFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    .line 786
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-wide v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->id:J

    .line 787
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->start:J

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEvent:Lcom/android/calendar/CalendarController$EventInfo;

    iget-object v1, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/calendar/event/EditEventFragment$EventBundle;->end:J

    .line 795
    :cond_1
    const-string v0, "key_event"

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment;->mEventBundle:Lcom/android/calendar/event/EditEventFragment$EventBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 796
    const-string v0, "key_read_only"

    iget-boolean v1, p0, Lcom/android/calendar/event/EditEventFragment;->mIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    return-void
.end method
