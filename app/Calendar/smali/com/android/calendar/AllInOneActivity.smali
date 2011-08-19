.class public Lcom/android/calendar/AllInOneActivity;
.super Landroid/app/Activity;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static CONTROLS_ANIMATE_WIDTH:I

.field private static mController:Lcom/android/calendar/CalendarController;

.field private static mIsMultipane:Z

.field private static mScale:F


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCalendarsList:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlsMenu:Landroid/view/MenuItem;

.field private mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mCurrentView:I

.field private mDateRange:Landroid/widget/TextView;

.field private mDayTab:Landroid/app/ActionBar$Tab;

.field private mHideControls:Z

.field private mHideString:Ljava/lang/String;

.field private mHomeTime:Landroid/widget/TextView;

.field private mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mIntentAttendeeResponse:I

.field private mIntentEventEndMillis:J

.field private mIntentEventStartMillis:J

.field private mMiniMonth:Landroid/view/View;

.field private mMiniMonthContainer:Landroid/view/View;

.field private mMonthTab:Landroid/app/ActionBar$Tab;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSaveInstanceStateCalled:Z

.field private mPaused:Z

.field private mPreviousView:I

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchOnOverflowMenu:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowSideViews:Z

.field private mShowString:Ljava/lang/String;

.field private mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

.field private mTimeZone:Ljava/lang/String;

.field private mUpdateOnResume:Z

.field private mViewEventId:J

.field private mWeekTab:Landroid/app/ActionBar$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x10b

    sput v0, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/AllInOneActivity;->mScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 101
    iput-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 102
    iput-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 103
    iput-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 116
    const-string v0, "Hide controls"

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    .line 117
    const-string v0, "Show controls"

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    new-instance v0, Lcom/android/calendar/AllInOneActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$1;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    .line 145
    new-instance v0, Lcom/android/calendar/AllInOneActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$2;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/android/calendar/AllInOneActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneActivity$3;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AllInOneActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AllInOneActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->updateHomeClock()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 290
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 291
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 292
    const-string v0, "AllInOneActivity"

    const-string v1, "ActionBar is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    .line 295
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0a000f

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 296
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 297
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 298
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    .line 299
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 300
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 301
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 302
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    .line 303
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 304
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 305
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 306
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private initFragments(JILandroid/os/Bundle;)V
    .locals 26
    .parameter "timeMillis"
    .parameter "viewType"
    .parameter "icicle"

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 389
    .local v5, ft:Landroid/app/FragmentTransaction;
    sget-boolean v4, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v4, :cond_0

    .line 390
    new-instance v24, Lcom/android/calendar/month/MonthByWeekFragment;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 391
    .local v24, miniMonthFrag:Landroid/app/Fragment;
    const v4, 0x7f0e0014

    move-object v0, v5

    move v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 392
    sget-object v4, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v6, 0x7f0e0014

    check-cast v24, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v24           #miniMonthFrag:Landroid/app/Fragment;
    move-object v0, v4

    move v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 394
    new-instance v25, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;

    invoke-direct/range {v25 .. v25}, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;-><init>()V

    .line 395
    .local v25, selectCalendarsFrag:Landroid/app/Fragment;
    const v4, 0x7f0e0003

    move-object v0, v5

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 396
    sget-object v4, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v6, 0x7f0e0003

    check-cast v25, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v25           #selectCalendarsFrag:Landroid/app/Fragment;
    move-object v0, v4

    move v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 399
    :cond_0
    sget-boolean v4, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 400
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_2
    const/16 v22, 0x0

    .line 406
    .local v22, info:Lcom/android/calendar/CalendarController$EventInfo;
    const/4 v4, 0x5

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 407
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "preferred_startView"

    const/4 v7, 0x3

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 410
    const-wide/16 v20, -0x1

    .line 411
    .local v20, eventId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 412
    .local v23, intent:Landroid/content/Intent;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 413
    .local v17, data:Landroid/net/Uri;
    if-eqz v17, :cond_7

    .line 415
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 425
    :cond_3
    :goto_0
    const-string v4, "beginTime"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v23

    move-object v1, v4

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 426
    .local v15, begin:J
    const-string v4, "endTime"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v23

    move-object v1, v4

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 427
    .local v18, end:J
    new-instance v22, Lcom/android/calendar/CalendarController$EventInfo;

    .end local v22           #info:Lcom/android/calendar/CalendarController$EventInfo;
    invoke-direct/range {v22 .. v22}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 428
    .restart local v22       #info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v6, -0x1

    cmp-long v4, v18, v6

    if-eqz v4, :cond_4

    .line 429
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 430
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 432
    :cond_4
    const-wide/16 v6, -0x1

    cmp-long v4, v15, v6

    if-eqz v4, :cond_5

    .line 433
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 434
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 436
    :cond_5
    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 440
    sget-object v4, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->setViewType(I)V

    .line 441
    sget-object v4, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->setEventId(J)V

    .line 445
    .end local v15           #begin:J
    .end local v17           #data:Landroid/net/Uri;
    .end local v18           #end:J
    .end local v20           #eventId:J
    .end local v23           #intent:Landroid/content/Intent;
    :goto_1
    const v6, 0x7f0e0016

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 447
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 449
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v10, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 450
    .local v10, t:Landroid/text/format/Time;
    move-object v0, v10

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 451
    const/4 v4, 0x5

    move/from16 v0, p3

    move v1, v4

    if-eq v0, v1, :cond_6

    .line 452
    sget-object v6, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v8, 0x20

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    move-object/from16 v7, p0

    move/from16 v14, p3

    invoke-virtual/range {v6 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 454
    :cond_6
    return-void

    .line 421
    .end local v10           #t:Landroid/text/format/Time;
    .restart local v17       #data:Landroid/net/Uri;
    .restart local v20       #eventId:J
    .restart local v23       #intent:Landroid/content/Intent;
    :cond_7
    if-eqz p4, :cond_3

    const-string v4, "key_event_id"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 422
    const-string v4, "key_event_id"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    goto/16 :goto_0

    .line 443
    .end local v17           #data:Landroid/net/Uri;
    .end local v20           #eventId:J
    .end local v23           #intent:Landroid/content/Intent;
    :cond_8
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    goto :goto_1

    .line 416
    .restart local v17       #data:Landroid/net/Uri;
    .restart local v20       #eventId:J
    .restart local v23       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private moveSearchToOverflowMenu()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 552
    :cond_1
    return-void
.end method

.method private parseViewAction(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    .line 266
    const-wide/16 v2, -0x1

    .line 267
    .local v2, timeMillis:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 268
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 270
    .local v1, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "events"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 273
    iget-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 274
    const-string v4, "beginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 275
    const-string v4, "endTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 276
    const-string v4, "attendeeStatus"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 278
    iget-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-wide v2

    .line 280
    .restart local v1       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setMainPane(Landroid/app/FragmentTransaction;IIJZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-nez p6, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, p3, :cond_0

    .line 589
    :cond_2
    if-eq p3, v1, :cond_5

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v1, :cond_5

    move v1, v4

    .line 591
    :goto_1
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq p3, v0, :cond_4

    .line 594
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-lez v0, :cond_3

    .line 595
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 597
    :cond_3
    iput p3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    .line 601
    :cond_4
    packed-switch p3, :pswitch_data_0

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be Agenda, Day, Week, or Month ViewType, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v3

    .line 589
    goto :goto_1

    .line 603
    :pswitch_0
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {v0, p4, p5}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(J)V

    .line 629
    :goto_2
    if-nez p1, :cond_b

    .line 631
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    move-object v3, v2

    move v2, v4

    .line 634
    :goto_3
    if-eqz v1, :cond_6

    .line 635
    const/16 v1, 0x1003

    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 638
    :cond_6
    invoke-virtual {v3, p2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 644
    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v1, p2, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 646
    if-eqz v2, :cond_0

    .line 647
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainPane AllInOne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finishing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 651
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 606
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v2, :cond_7

    .line 607
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 609
    :cond_7
    new-instance v0, Lcom/android/calendar/DayFragment;

    invoke-direct {v0, p4, p5, v4}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto :goto_2

    .line 612
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v2, :cond_8

    .line 613
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 615
    :cond_8
    new-instance v0, Lcom/android/calendar/DayFragment;

    const/4 v2, 0x7

    invoke-direct {v0, p4, p5, v2}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto/16 :goto_2

    .line 618
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v2, :cond_9

    .line 619
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 621
    :cond_9
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {v0, p4, p5, v3}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    goto/16 :goto_2

    .line 653
    :cond_a
    const-string v0, "AllInOneActivity"

    const-string v1, "Should not commit ft transaction when activity is finising!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v2, v3

    move-object v3, p1

    goto/16 :goto_3

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 659
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 665
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 670
    :goto_1
    iget-wide v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v0, v5

    .line 671
    iget-boolean v5, p0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    if-eqz v5, :cond_3

    .line 672
    const/high16 v5, 0x1

    or-int/2addr v0, v5

    move v5, v0

    :goto_2
    move-object v0, p0

    .line 675
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 677
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    move-wide v3, v1

    .line 668
    goto :goto_1

    :cond_3
    move v5, v0

    goto :goto_2
.end method

.method private updateHomeClock()V
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 684
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 685
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 689
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 690
    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_1

    move v6, v3

    .line 692
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    or-int/lit16 v0, v3, 0x80

    move v5, v0

    .line 696
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v6, v8, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    rem-long/2addr v1, v9

    sub-long v1, v9, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    :goto_2
    return-void

    :cond_1
    move v6, v8

    .line 690
    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 795
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 796
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 713
    const-wide/16 v0, 0x422

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 720
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent AllInOne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finishing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 723
    const/4 v1, 0x0

    const v2, 0x7f0e0016

    iget v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 725
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 728
    :cond_0
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-nez v0, :cond_1

    .line 791
    :goto_0
    return-void

    .line 731
    :cond_1
    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    if-ne v0, v10, :cond_4

    .line 733
    iput-boolean v6, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 734
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 736
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 738
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_2

    .line 739
    const-string v0, "controlsOffset"

    new-array v1, v9, [I

    aput v6, v1, v6

    sget v2, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 742
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 743
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 744
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 790
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->updateHomeClock()V

    goto :goto_0

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 753
    :cond_4
    iput-boolean v7, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 754
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 760
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 761
    const-string v0, "controlsOffset"

    new-array v1, v9, [I

    sget v2, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    aput v2, v1, v6

    aput v6, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 763
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 764
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 765
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 769
    :cond_5
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 770
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v8, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJI)V

    .line 773
    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v1, :cond_6

    .line 774
    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v3, 0x20

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-object v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 777
    :cond_6
    iget v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventInfoFragment;->setDialogParams(II)V

    .line 778
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 781
    const-string v3, "EventInfoFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 783
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 785
    :cond_7
    const-string v1, "EventInfoFragment"

    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 786
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 787
    :cond_8
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 788
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 458
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    :cond_0
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    iget v8, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->moveSearchToOverflowMenu()V

    .line 822
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 176
    const-string v10, "preferences_tardis_1"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 177
    const v10, 0x7f0c0014

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->setTheme(I)V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v10

    sput-object v10, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 184
    const-wide/16 v7, -0x1

    .line 185
    .local v7, timeMillis:J
    const/4 v9, -0x1

    .line 186
    .local v9, viewType:I
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 187
    .local v2, intent:Landroid/content/Intent;
    if-eqz p1, :cond_4

    .line 188
    const-string v10, "key_restore_time"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 189
    const-string v10, "key_restore_view"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 202
    :cond_1
    :goto_0
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 203
    invoke-static {p0}, Lcom/android/calendar/Utils;->getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I

    move-result v9

    .line 205
    :cond_2
    iget-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 206
    new-instance v6, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v6, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, t:Landroid/text/format/Time;
    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 209
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 210
    const-string v10, "AllInOneActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "both, icicle:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  intent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, res:Landroid/content/res/Resources;
    sget v10, Lcom/android/calendar/AllInOneActivity;->mScale:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 217
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    sput v10, Lcom/android/calendar/AllInOneActivity;->mScale:F

    .line 218
    sget v10, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    int-to-float v10, v10

    sget v11, Lcom/android/calendar/AllInOneActivity;->mScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sput v10, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    .line 220
    :cond_3
    const v10, 0x7f0a001a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    .line 221
    const v10, 0x7f0a001b

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    .line 222
    iget-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 225
    .local v1, configuration:Landroid/content/res/Configuration;
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    move v3, v10

    .line 226
    .local v3, isPortrait:Z
    :goto_2
    if-eqz v3, :cond_8

    iget v10, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    .line 229
    iget v10, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0x7

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    sput-boolean v10, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    .line 233
    sget-boolean v10, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    invoke-static {v10}, Lcom/android/calendar/Utils;->setAllowWeekForDetailView(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040012

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    .line 238
    const v10, 0x7f040007

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->setContentView(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->configureActionBar()V

    .line 247
    sget-object v10, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 249
    const v10, 0x7f0e0015

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    .line 250
    const v10, 0x7f0e0014

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    .line 251
    const v10, 0x7f0e0003

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    .line 252
    const v10, 0x7f0e0013

    invoke-virtual {p0, v10}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    .line 254
    invoke-direct {p0, v7, v8, v9, p1}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 258
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 259
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 262
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 263
    return-void

    .line 191
    .end local v1           #configuration:Landroid/content/res/Configuration;
    .end local v3           #isPortrait:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #t:Landroid/text/format/Time;
    :cond_4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 194
    invoke-direct {p0, v2}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v7

    .line 197
    :cond_5
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-nez v10, :cond_1

    .line 198
    invoke-static {v2}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v7

    goto/16 :goto_0

    .line 212
    .end local v0           #action:Ljava/lang/String;
    .restart local v6       #t:Landroid/text/format/Time;
    :cond_6
    const-string v10, "AllInOneActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not both, icicle:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " intent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 225
    .restart local v1       #configuration:Landroid/content/res/Configuration;
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_7
    const/4 v10, 0x0

    move v3, v10

    goto/16 :goto_2

    .line 226
    .restart local v3       #isPortrait:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 229
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 469
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 471
    const v0, 0x7f0e0097

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 472
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    .line 473
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 476
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 479
    :cond_0
    const v0, 0x7f0e009c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    .line 480
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 486
    :cond_1
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 381
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 383
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    .line 172
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 20
    .parameter "item"

    .prologue
    .line 491
    const/16 v18, 0x0

    .line 492
    .local v18, t:Landroid/text/format/Time;
    const/16 v19, 0x0

    .line 493
    .local v19, viewType:I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 539
    const/4 v3, 0x0

    move/from16 v11, v19

    .end local v19           #viewType:I
    .local v11, viewType:I
    move-object/from16 v7, v18

    .line 542
    .end local v18           #t:Landroid/text/format/Time;
    .local v7, t:Landroid/text/format/Time;
    :goto_0
    return v3

    .line 495
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :pswitch_0
    sget-object v3, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->refreshCalendars()V

    .line 496
    const/4 v3, 0x1

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto :goto_0

    .line 498
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->moveSearchToOverflowMenu()V

    .line 501
    :cond_0
    const/4 v11, 0x0

    .line 502
    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 503
    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 541
    sget-object v3, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 542
    const/4 v3, 0x1

    goto :goto_0

    .line 506
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :pswitch_2
    new-instance v18, Landroid/text/format/Time;

    .end local v18           #t:Landroid/text/format/Time;
    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 507
    .restart local v18       #t:Landroid/text/format/Time;
    sget-object v3, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    move-object/from16 v0, v18

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 508
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v3, v0

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    .line 509
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 510
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 514
    :goto_1
    sget-object v3, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x1

    const-wide/16 v7, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 516
    const/4 v3, 0x1

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto :goto_0

    .line 512
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :cond_1
    const/16 v3, 0x1e

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_1

    .line 518
    :pswitch_3
    sget-object v3, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 519
    const/4 v3, 0x1

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto/16 :goto_0

    .line 521
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    move v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    move v3, v0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    move-object v3, v0

    :goto_3
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 523
    const-string v3, "controlsOffset"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    move v6, v0

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_4
    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    move v6, v0

    if-eqz v6, :cond_5

    sget v6, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    :goto_5
    aput v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 526
    .local v17, slideAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x190

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 527
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 528
    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->start()V

    .line 529
    const/4 v3, 0x1

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto/16 :goto_0

    .line 521
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .end local v17           #slideAnimation:Landroid/animation/ObjectAnimator;
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 522
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    move-object v3, v0

    goto :goto_3

    .line 523
    :cond_4
    sget v6, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 531
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    move v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 534
    const/4 v3, 0x1

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto/16 :goto_0

    .line 536
    .end local v7           #t:Landroid/text/format/Time;
    .end local v11           #viewType:I
    .restart local v18       #t:Landroid/text/format/Time;
    .restart local v19       #viewType:I
    :cond_6
    const/4 v3, 0x0

    move/from16 v11, v19

    .end local v19           #viewType:I
    .restart local v11       #viewType:I
    move-object/from16 v7, v18

    .end local v18           #t:Landroid/text/format/Time;
    .restart local v7       #t:Landroid/text/format/Time;
    goto/16 :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0097
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 346
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 347
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 354
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 355
    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 357
    :cond_1
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 805
    const-string v0, "TARDIS"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-static {}, Lcom/android/calendar/Utils;->tardis()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 809
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchOnOverflowMenu:Z

    if-eqz v0, :cond_1

    .line 810
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->moveSearchToOverflowMenu()V

    .line 812
    :cond_1
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-wide v9, v6

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 814
    return v8
.end method

.method protected onResume()V
    .locals 23

    .prologue
    .line 314
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    move-object v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 317
    sget-object v5, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v5}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v5

    sget-object v7, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v7}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 318
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 320
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->updateHomeClock()V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    move v6, v0

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 324
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 325
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 327
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 329
    .local v21, currentMillis:J
    const-wide/16 v19, -0x1

    .line 330
    .local v19, selectedTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-wide v5, v0

    cmp-long v5, v21, v5

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    move-wide v5, v0

    cmp-long v5, v21, v5

    if-gez v5, :cond_2

    .line 331
    move-wide/from16 v19, v21

    .line 333
    :cond_2
    sget-object v5, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    move-wide v13, v0

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    move v6, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v20}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithResponse(Ljava/lang/Object;JJJJIIJJ)V

    .line 336
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 337
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 338
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 340
    .end local v19           #selectedTime:J
    .end local v21           #currentMillis:J
    :cond_3
    return-void

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    move-object v6, v0

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 368
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 370
    const-string v0, "key_restore_time"

    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 371
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 372
    const-string v0, "key_restore_view"

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    const-string v0, "key_event_id"

    sget-object v1, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getEventId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 375
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 570
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 851
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 827
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TabSelected AllInOne="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " finishing:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "AllInOneActivity"

    const-string v1, "Should not handle TabSelected when activity is finishing!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_1

    .line 836
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_2

    .line 838
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 840
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 842
    :cond_3
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabSelected event from unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    const-string v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 842
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 855
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 361
    sget-object v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x200

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 363
    return-void
.end method

.method public setControlsOffset(I)V
    .locals 3
    .parameter "controlsOffset"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 562
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 563
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 564
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    sget v2, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 565
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    return-void
.end method
