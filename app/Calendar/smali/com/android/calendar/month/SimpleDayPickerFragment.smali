.class public Lcom/android/calendar/month/SimpleDayPickerFragment;
.super Landroid/app/ListFragment;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;
    }
.end annotation


# static fields
.field protected static LIST_TOP_OFFSET:I

.field private static mScale:F


# instance fields
.field protected BOTTOM_BUFFER:I

.field protected WEEK_MIN_VISIBLE_HEIGHT:I

.field protected mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDayLabels:[Ljava/lang/String;

.field protected mDayNameColor:I

.field protected mDayNamesHeader:Landroid/view/ViewGroup;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfMonth:Landroid/text/format/Time;

.field protected mFirstDayOfWeek:I

.field protected mFirstVisibleDay:Landroid/text/format/Time;

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mIsScrollingUp:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mMinimumFlingVelocity:F

.field protected mMonthName:Landroid/widget/TextView;

.field protected mNumWeeks:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mSaturdayColor:I

.field protected mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mShowWeekNumber:Z

.field protected mSundayColor:I

.field protected mTempTime:Landroid/text/format/Time;

.field protected mTodayUpdater:Ljava/lang/Runnable;

.field protected mVelocityScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6
    .parameter "initialTime"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 75
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 77
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 78
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 79
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 82
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    .line 83
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 84
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    .line 87
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    .line 88
    const v0, 0x3eaa7efa

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mVelocityScale:F

    .line 96
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 103
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    .line 108
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    .line 110
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    .line 120
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 122
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 124
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    .line 127
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$1;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$2;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    .line 571
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    move-object v0, p0

    move-wide v1, p1

    move v5, v4

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method


# virtual methods
.method protected doResumeUpdates()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 313
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 315
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 316
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)V

    .line 317
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void
.end method

.method public goTo(JZZZ)V
    .locals 12
    .parameter "time"
    .parameter "animate"
    .parameter "setSelected"
    .parameter "forceScroll"

    .prologue
    .line 386
    const-wide/16 v9, -0x1

    cmp-long v9, p1, v9

    if-nez v9, :cond_1

    .line 387
    const-string v9, "MonthFragment"

    const-string v10, "time is invalid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    if-eqz p4, :cond_2

    .line 393
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 394
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->isResumed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 400
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 401
    const-string v9, "MonthFragment"

    const-string v10, "We\'re not visible yet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_3
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 407
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 410
    .local v5, millis:J
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 414
    .local v7, position:I
    const/4 v2, 0x0

    .line 415
    .local v2, i:I
    const/4 v8, 0x0

    .line 418
    .local v8, top:I
    :goto_1
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v9, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_9

    .line 430
    :cond_4
    if-eqz v0, :cond_b

    .line 431
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 435
    .local v1, firstPosition:I
    :goto_2
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    add-int/2addr v9, v1

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .line 436
    .local v4, lastPosition:I
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    if-le v8, v9, :cond_5

    .line 437
    add-int/lit8 v4, v4, -0x1

    .line 440
    :cond_5
    if-eqz p4, :cond_6

    .line 441
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 444
    :cond_6
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 445
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GoTo position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_7
    if-lt v7, v1, :cond_8

    if-gt v7, v4, :cond_8

    if-eqz p5, :cond_d

    .line 450
    :cond_8
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 451
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    iput v10, v9, Landroid/text/format/Time;->monthDay:I

    .line 452
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 453
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {p0, v9}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;)V

    .line 454
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 457
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 458
    if-eqz p3, :cond_c

    .line 459
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    const/16 v11, 0x3e8

    invoke-virtual {v9, v7, v10, v11}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto/16 :goto_0

    .line 422
    .end local v1           #firstPosition:I
    .end local v4           #lastPosition:I
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 423
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 424
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "child at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    sub-int v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has top "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_a
    if-gez v8, :cond_4

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto/16 :goto_1

    .line 433
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #firstPosition:I
    goto/16 :goto_2

    .line 462
    .restart local v4       #lastPosition:I
    :cond_c
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    invoke-virtual {v9, v7, v10}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 464
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto/16 :goto_0

    .line 466
    :cond_d
    if-eqz p4, :cond_0

    .line 468
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {p0, v9}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpListView()V

    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 242
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    .line 243
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 244
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    .line 248
    .local v1, julianDay:I
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 250
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    add-int/lit8 v3, v1, 0x7

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 251
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p0, v2}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, tz:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 169
    .local v2, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMinimumFlingVelocity:F

    .line 172
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 174
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 176
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 178
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f080026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 182
    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 183
    const v3, 0x7f080020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 186
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    .line 188
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 189
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 190
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 191
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 195
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 229
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    if-eqz p1, :cond_0

    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)V

    .line 233
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 355
    const v1, 0x7f040022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 358
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 205
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 292
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->doResumeUpdates()V

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 294
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 304
    const-string v0, "current_time"

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 479
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 480
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    if-ge v7, v8, :cond_6

    const/4 v7, 0x1

    move v6, v7

    .line 486
    .local v6, offset:I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    .line 487
    .local v1, currScroll:J
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 490
    iget-wide v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_7

    .line 491
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 502
    :goto_2
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 503
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Lcom/android/calendar/month/SimpleWeekView;
    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 508
    .restart local v0       #child:Lcom/android/calendar/month/SimpleWeekView;
    :cond_2
    :goto_3
    if-eqz v0, :cond_0

    .line 514
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 515
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstMonth()I

    move-result v4

    .line 522
    .local v4, month:I
    :goto_4
    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 523
    const/4 v5, 0x1

    .line 532
    .local v5, monthDiff:I
    :goto_5
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 534
    :cond_4
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v3

    .line 535
    .local v3, julianDay:I
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 536
    add-int/lit8 v3, v3, -0x7

    .line 540
    :goto_6
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 541
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p0, v7}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;)V

    .line 543
    .end local v3           #julianDay:I
    :cond_5
    iput-wide v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    .line 544
    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    iput v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    goto :goto_0

    .line 485
    .end local v1           #currScroll:J
    .end local v4           #month:I
    .end local v5           #monthDiff:I
    .end local v6           #offset:I
    :cond_6
    const/4 v7, 0x0

    move v6, v7

    goto :goto_1

    .line 492
    .restart local v1       #currScroll:J
    .restart local v6       #offset:I
    :cond_7
    iget-wide v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 493
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    goto :goto_2

    .line 504
    :cond_8
    if-eqz v6, :cond_2

    .line 505
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Lcom/android/calendar/month/SimpleWeekView;
    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .restart local v0       #child:Lcom/android/calendar/month/SimpleWeekView;
    goto :goto_3

    .line 517
    :cond_9
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getLastMonth()I

    move-result v4

    .restart local v4       #month:I
    goto :goto_4

    .line 524
    :cond_a
    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 525
    const/4 v5, -0x1

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 527
    .end local v5           #monthDiff:I
    :cond_b
    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5       #monthDiff:I
    goto :goto_5

    .line 538
    .restart local v3       #julianDay:I
    :cond_c
    add-int/lit8 v3, v3, 0x7

    goto :goto_6
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 569
    return-void
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 555
    .local v0, oldMonth:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 557
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 560
    :cond_0
    iget v1, p1, Landroid/text/format/Time;->month:I

    iput v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    .line 561
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateFocusMonth(I)V

    .line 562
    return-void
.end method

.method protected setUpAdapter()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "week_numbers"

    iget-boolean v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "week_start"

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "selected_day"

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_1

    .line 218
    new-instance v1, Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 219
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 225
    return-void

    :cond_0
    move v2, v3

    .line 213
    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 259
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    const/16 v3, 0x32

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method protected setUpListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    .line 274
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 276
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 285
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 287
    return-void
.end method

.method protected updateHeader()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 326
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0e0084

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    .local v1, label:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v4, :cond_0

    .line 328
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_0
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .line 333
    .local v2, offset:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_4

    .line 334
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #label:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 335
    .restart local v1       #label:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_3

    .line 336
    add-int v4, v2, v0

    rem-int/lit8 v3, v4, 0x7

    .line 337
    .local v3, position:I
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 340
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    .end local v3           #position:I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0           #i:I
    .end local v2           #offset:I
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 341
    .restart local v0       #i:I
    .restart local v2       #offset:I
    .restart local v3       #position:I
    :cond_1
    if-nez v3, :cond_2

    .line 342
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 344
    :cond_2
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 347
    .end local v3           #position:I
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 350
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 351
    return-void
.end method
