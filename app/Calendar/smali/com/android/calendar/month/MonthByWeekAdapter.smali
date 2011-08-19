.class public Lcom/android/calendar/month/MonthByWeekAdapter;
.super Lcom/android/calendar/month/SimpleWeeksAdapter;
.source "MonthByWeekAdapter.java"


# static fields
.field protected static DEFAULT_QUERY_DAYS:I


# instance fields
.field protected mController:Lcom/android/calendar/CalendarController;

.field protected mEventDayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field protected mIsMiniMonth:Z

.field protected mIsSingleLine:Z

.field protected mOrientation:I

.field protected mQueryDays:I

.field protected mTempTime:Landroid/text/format/Time;

.field protected mToday:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x38

    sput v0, Lcom/android/calendar/month/MonthByWeekAdapter;->DEFAULT_QUERY_DAYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 50
    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsSingleLine:Z

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 58
    const-string v0, "mini_month"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "mini_month"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 61
    :cond_0
    const-string v0, "single_line"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "single_line"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsSingleLine:Z

    .line 64
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0

    :cond_3
    move v0, v1

    .line 62
    goto :goto_1
.end method

.method private sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x3

    .line 199
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 200
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    const-string v3, "MonthByWeek"

    const-string v4, "No events loaded, did not pass any events to view."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getFirstJulianDay()I

    move-result v2

    .line 207
    .local v2, viewJulianDay:I
    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 208
    .local v1, start:I
    iget v3, p1, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int v0, v1, v3

    .line 209
    .local v0, end:I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 210
    :cond_2
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    const-string v3, "MonthByWeek"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Week is outside range of loaded events. viewStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " eventsStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    invoke-virtual {p1, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateTimeZones()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 80
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    .line 152
    iget-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v5, :cond_0

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 195
    :goto_0
    return-object v5

    .line 156
    :cond_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 158
    .local v2, params:Landroid/widget/AbsListView$LayoutParams;
    const/4 v1, 0x0

    .line 159
    .local v1, drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_3

    .line 160
    move-object v0, p2

    check-cast v0, Lcom/android/calendar/month/MonthWeekEventsView;

    move-object v4, v0

    .line 163
    .local v4, v:Lcom/android/calendar/month/MonthWeekEventsView;
    invoke-virtual {v4}, Lcom/android/calendar/month/MonthWeekEventsView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 167
    .restart local v1       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    if-nez v1, :cond_1

    .line 168
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    .restart local v1       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 172
    invoke-virtual {v4, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {v4, v8}, Lcom/android/calendar/month/MonthWeekEventsView;->setClickable(Z)V

    .line 174
    invoke-virtual {v4, p0}, Lcom/android/calendar/month/MonthWeekEventsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    const/4 v3, -0x1

    .line 177
    .local v3, selectedDay:I
    iget v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedWeek:I

    if-ne v5, p1, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v3, v5, Landroid/text/format/Time;->weekDay:I

    .line 181
    :cond_2
    const-string v5, "height"

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sget v7, Lcom/android/calendar/month/MonthByWeekAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mNumWeeks:I

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v5, "selected_day"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v5, "show_wk_num"

    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowWeekNumber:Z

    if-eqz v6, :cond_4

    move v6, v8

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v5, "week_start"

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v5, "num_days"

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDaysPerWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v5, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v5, "focus_month"

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFocusMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v5, "orientation"

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v5, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/android/calendar/month/MonthWeekEventsView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v4}, Lcom/android/calendar/month/MonthByWeekAdapter;->sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    .line 194
    invoke-virtual {v4}, Lcom/android/calendar/month/MonthWeekEventsView;->invalidate()V

    move-object v5, v4

    .line 195
    goto/16 :goto_0

    .line 165
    .end local v3           #selectedDay:I
    .end local v4           #v:Lcom/android/calendar/month/MonthWeekEventsView;
    :cond_3
    new-instance v4, Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsSingleLine:Z

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;Z)V

    .restart local v4       #v:Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_1

    .line 184
    .restart local v3       #selectedDay:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 69
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    .line 70
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    .line 73
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 74
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    .line 75
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 14
    .parameter "day"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 233
    new-instance v13, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 234
    .local v13, currTime:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 235
    iget v0, v13, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 236
    iget v0, v13, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 237
    iput-boolean v5, p1, Landroid/text/format/Time;->allDay:Z

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 239
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v4, :cond_0

    move v8, v5

    :goto_0
    const-wide/16 v9, 0x1

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 242
    return-void

    .line 239
    :cond_0
    const/4 v4, -0x1

    move v8, v4

    goto :goto_0
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 223
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowWeekNumber:Z

    .line 224
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 226
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->updateTimeZones()V

    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->notifyDataSetChanged()V

    .line 228
    return-void
.end method

.method public setEvents(IILjava/util/ArrayList;)V
    .locals 10
    .parameter "firstJulianDay"
    .parameter "numDays"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v9, 0x3

    .line 95
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_1

    .line 96
    const-string v7, "MonthByWeek"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    const-string v7, "MonthByWeek"

    const-string v8, "Attempted to set events for mini view. Events only supported in full view."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    .line 103
    iput p2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mQueryDays:I

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, eventDayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 108
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 112
    :cond_3
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    const-string v7, "MonthByWeek"

    const-string v8, "No events. Returning early--go schedule something fun."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 122
    .local v1, event:Lcom/android/calendar/Event;
    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v6, v7, v8

    .line 123
    .local v6, startDay:I
    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 124
    .local v0, endDay:I
    if-lt v6, p2, :cond_7

    if-ltz v0, :cond_6

    .line 125
    :cond_7
    if-gez v6, :cond_8

    .line 126
    const/4 v6, 0x0

    .line 128
    :cond_8
    if-gt v6, p2, :cond_6

    .line 131
    if-ltz v0, :cond_6

    .line 134
    if-le v0, p2, :cond_9

    .line 135
    move v0, p2

    .line 137
    :cond_9
    move v5, v6

    .local v5, j:I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 138
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 142
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v5           #j:I
    .end local v6           #startDay:I
    :cond_a
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 143
    const-string v7, "MonthByWeek"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Processed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_b
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto/16 :goto_0
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 4
    .parameter "selectedTime"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 88
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 89
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedWeek:I

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
