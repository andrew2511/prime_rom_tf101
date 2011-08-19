.class public Lcom/android/calendar/DayFragment;
.super Landroid/app/Fragment;
.source "DayFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mNumDays:I

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field mSelectedDay:Landroid/text/format/Time;

.field private mTZUpdater:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 59
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 75
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2
    .parameter "timeMillis"
    .parameter "numOfDays"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 59
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 78
    iput p3, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/DayFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private goTo(Landroid/text/format/Time;Z)V
    .locals 5
    .parameter "goToTime"
    .parameter "ignoreTime"

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 216
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 190
    .local v0, currentView:Lcom/android/calendar/DayView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->compareToVisibleTimeRange(Landroid/text/format/Time;)I

    move-result v1

    .line 192
    .local v1, diff:I
    if-nez v1, :cond_1

    .line 194
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;Z)V

    goto :goto_0

    .line 197
    :cond_1
    if-lez v1, :cond_3

    .line 198
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 205
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 206
    .local v2, next:Lcom/android/calendar/DayView;
    if-eqz p2, :cond_2

    .line 207
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getFirstVisibleHour()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayView;->setFirstVisibleHour(I)V

    .line 210
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;Z)V

    .line 211
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 212
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 213
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->requestFocus()Z

    .line 214
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->updateTitle()V

    goto :goto_0

    .line 201
    .end local v2           #next:Lcom/android/calendar/DayView;
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 235
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    .line 236
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 238
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 239
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    goto :goto_0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 227
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 262
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 266
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayFragment;->goTo(Landroid/text/format/Time;Z)V

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 270
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    goto :goto_1
.end method

.method public makeView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 114
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 115
    new-instance v0, Lcom/android/calendar/DayView;

    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v5, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V

    .line 117
    .local v0, view:Lcom/android/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setId(I)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;Z)V

    .line 121
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    const/high16 v1, 0x7f05

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 93
    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 94
    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 95
    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 97
    new-instance v1, Lcom/android/calendar/EventLoader;

    invoke-direct {v1, v0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 106
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 107
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 108
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/DayView;

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 110
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 163
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 164
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 165
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 166
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 128
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    .line 130
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 131
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 132
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 134
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 135
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 136
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    return-void
.end method
