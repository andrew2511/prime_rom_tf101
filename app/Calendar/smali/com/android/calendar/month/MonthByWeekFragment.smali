.class public Lcom/android/calendar/month/MonthByWeekFragment;
.super Lcom/android/calendar/month/SimpleDayPickerFragment;
.source "MonthByWeekFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/month/SimpleDayPickerFragment;",
        "Lcom/android/calendar/CalendarController$EventHandler;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static SPACING_WEEK_NUMBER:I

.field private static final WHERE_CALENDARS_SELECTED_ARGS:[Ljava/lang/String;

.field private static mScale:F


# instance fields
.field private mDesiredDay:Landroid/text/format/Time;

.field private mEventUri:Landroid/net/Uri;

.field protected mFirstLoadedJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHideDeclined:Z

.field protected mIsMiniMonth:Z

.field protected mLastLoadedJulianDay:I

.field private mLoader:Landroid/content/CursorLoader;

.field protected mMinimumTwoMonthFlingVelocity:F

.field private volatile mShouldLoad:Z

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mUpdateLoader:Ljava/lang/Runnable;

.field private mUserScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/month/MonthByWeekFragment;->WHERE_CALENDARS_SELECTED_ARGS:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    .line 93
    const/16 v0, 0x13

    sput v0, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 288
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .parameter "initialTime"
    .parameter "isMiniMonth"

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;-><init>(J)V

    .line 87
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 95
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$1;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$2;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 292
    iput-boolean p3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private stopLoader()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    .line 177
    const-string v1, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "MonthFragment"

    const-string v2, "Stopped loader from loading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateUri()Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 142
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/month/SimpleWeekView;

    .line 143
    .local v1, child:Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    .line 145
    .local v4, julianDay:I
    iput v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 148
    .end local v4           #julianDay:I
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 149
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 150
    .local v5, start:J
    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    .line 152
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 153
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 156
    .local v2, end:J
    sget-object v7, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 158
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public doResumeUpdates()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    .line 336
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    .line 337
    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 338
    .local v6, prevHideDeclined:Z
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 339
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDaysPerWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    .line 343
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateHeader()V

    .line 344
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 345
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 346
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 347
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/MonthByWeekFragment;->goTo(JZZZ)V

    .line 348
    return-void
.end method

.method public eventsChanged()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 387
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 391
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 396
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v5, 0x20

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    .line 397
    const/4 v3, 0x1

    .line 398
    .local v3, animate:Z
    iget v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    iget v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iget-wide v7, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 402
    const/4 v3, 0x0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 405
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 406
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/MonthByWeekFragment;->goTo(JZZZ)V

    .line 410
    .end local v3           #animate:Z
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->eventsChanged()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 284
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 224
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 225
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 229
    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 230
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 231
    .local v0, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mMinimumTwoMonthFlingVelocity:F

    .line 233
    sget v1, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    .line 235
    sget v1, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 236
    sget v1, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    .line 239
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 330
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v7

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 319
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 320
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, where:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay,startMinute,title"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    .line 325
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 326
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const-string v0, "MonthFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    const-string v0, "MonthFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning new loader with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    goto :goto_0

    .line 326
    .end local v4           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_0

    .line 271
    const v1, 0x7f040022

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, v:Landroid/view/View;
    :goto_0
    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 276
    return-object v0

    .line 273
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const v1, 0x7f04001d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter "data"
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
    .line 360
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v4

    .line 361
    :try_start_0
    const-string v3, "MonthFragment"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const-string v3, "MonthFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cursor entries for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/CursorLoader;

    move-object v1, v0

    .line 365
    .local v1, cLoader:Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    monitor-exit v4

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    invoke-static {v2, p2, v3, v5, v6}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 373
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v3, Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/calendar/month/MonthByWeekAdapter;->setEvents(IILjava/util/ArrayList;)V

    .line 375
    monitor-exit v4

    goto :goto_0

    .end local v1           #cLoader:Landroid/content/CursorLoader;
    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/month/MonthByWeekFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v5, 0x1

    .line 445
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v0

    .line 446
    if-eqz p2, :cond_1

    .line 447
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 448
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    .line 449
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 455
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-ne p2, v5, :cond_0

    .line 457
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 461
    return-void

    .line 451
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 453
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 466
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;)V
    .locals 21
    .parameter "time"

    .prologue
    .line 414
    invoke-super/range {p0 .. p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;)V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    move v3, v0

    if-nez v3, :cond_1

    .line 416
    const/16 v20, 0x0

    .line 417
    .local v20, useSelected:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->month:I

    if-ne v3, v4, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 420
    const/16 v20, 0x1

    .line 425
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    .line 426
    .local v2, controller:Lcom/android/calendar/CalendarController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->minute:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_3

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    const/16 v4, 0x1e

    iput v4, v3, Landroid/text/format/Time;->minute:I

    .line 431
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    .line 432
    .local v16, newTime:J
    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    cmp-long v3, v16, v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 433
    if-eqz v20, :cond_4

    const-wide/16 v3, 0x0

    move-wide/from16 v18, v3

    .line 434
    .local v18, offset:J
    :goto_2
    add-long v3, v16, v18

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 436
    .end local v18           #offset:J
    :cond_0
    const-wide/16 v4, 0x400

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x34

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 440
    .end local v2           #controller:Lcom/android/calendar/CalendarController;
    .end local v16           #newTime:J
    .end local v20           #useSelected:Z
    :cond_1
    return-void

    .line 422
    .restart local v20       #useSelected:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    goto :goto_0

    .line 429
    .restart local v2       #controller:Lcom/android/calendar/CalendarController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/text/format/Time;->minute:I

    goto :goto_1

    .line 433
    .restart local v16       #newTime:J
    :cond_4
    const-wide/32 v3, 0x240c8400

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    move v5, v0

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3

    div-long/2addr v3, v5

    move-wide/from16 v18, v3

    goto :goto_2
.end method

.method protected setUpAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 243
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    .line 244
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    .line 245
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v7

    .line 248
    .local v0, singleLine:Z
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v1, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "num_weeks"

    iget v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "week_numbers"

    iget-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    if-eqz v3, :cond_1

    move v3, v7

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "week_start"

    iget v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "mini_month"

    iget-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v3, :cond_2

    move v3, v7

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "selected_day"

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "days_per_week"

    iget v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "single_line"

    if-eqz v0, :cond_3

    move v3, v7

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v2, :cond_4

    .line 258
    new-instance v2, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/calendar/month/MonthByWeekAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 259
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    :goto_4
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 264
    return-void

    .end local v0           #singleLine:Z
    .end local v1           #weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    move v0, v8

    .line 245
    goto/16 :goto_0

    .restart local v0       #singleLine:Z
    .restart local v1       #weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    move v3, v8

    .line 250
    goto :goto_1

    :cond_2
    move v3, v8

    .line 252
    goto :goto_2

    :cond_3
    move v3, v8

    .line 256
    goto :goto_3

    .line 261
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_4
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 297
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_1

    .line 298
    invoke-super {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 307
    :cond_0
    return-void

    .line 302
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayLabels:[Ljava/lang/String;

    .line 303
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayLabels:[Ljava/lang/String;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateHeader()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 353
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_0
    return-void
.end method

.method protected updateWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    const-string v0, "selected=1"

    .line 165
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method
