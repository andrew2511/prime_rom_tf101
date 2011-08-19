.class public Lcom/android/calendar/month/SimpleWeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleWeeksAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;
    }
.end annotation


# static fields
.field protected static DEFAULT_DAYS_PER_WEEK:I

.field protected static DEFAULT_MONTH_FOCUS:I

.field protected static DEFAULT_NUM_WEEKS:I

.field protected static DEFAULT_WEEK_HEIGHT:I

.field protected static WEEK_7_OVERHANG_HEIGHT:I

.field protected static mScale:F


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfWeek:I

.field protected mFocusMonth:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mNumWeeks:I

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mSelectedWeek:I

.field protected mShowWeekNumber:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 80
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_NUM_WEEKS:I

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_MONTH_FOCUS:I

    .line 82
    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_DAYS_PER_WEEK:I

    .line 83
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_WEEK_HEIGHT:I

    .line 84
    sput v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
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
    .line 99
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 95
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_NUM_WEEKS:I

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    .line 96
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_DAYS_PER_WEEK:I

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    .line 97
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->DEFAULT_MONTH_FOCUS:I

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 100
    iput-object p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    .line 103
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    .line 105
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 106
    sget v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/month/SimpleWeeksAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0xda9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 197
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    .line 206
    move-object v0, p2

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    move-object v4, v0

    .line 208
    .local v4, v:Lcom/android/calendar/month/SimpleWeekView;
    invoke-virtual {v4}, Lcom/android/calendar/month/SimpleWeekView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 218
    .restart local v1       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    .restart local v1       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 223
    const/4 v3, -0x1

    .line 224
    .local v3, selectedDay:I
    iget v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    if-ne v5, p1, :cond_1

    .line 225
    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v3, v5, Landroid/text/format/Time;->weekDay:I

    .line 229
    :cond_1
    const-string v5, "height"

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sget v7, Lcom/android/calendar/month/SimpleWeeksAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v5, "selected_day"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v5, "show_wk_num"

    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    if-eqz v6, :cond_3

    move v6, v8

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v5, "week_start"

    iget v6, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v5, "num_days"

    iget v6, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v5, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v5, "focus_month"

    iget v6, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v5, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4}, Lcom/android/calendar/month/SimpleWeekView;->invalidate()V

    .line 240
    return-object v4

    .line 210
    .end local v3           #selectedDay:I
    .end local v4           #v:Lcom/android/calendar/month/SimpleWeekView;
    :cond_2
    new-instance v4, Lcom/android/calendar/month/SimpleWeekView;

    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 212
    .restart local v4       #v:Lcom/android/calendar/month/SimpleWeekView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 214
    .local v2, params:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v2}, Lcom/android/calendar/month/SimpleWeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v4, v8}, Lcom/android/calendar/month/SimpleWeekView;->setClickable(Z)V

    .line 216
    invoke-virtual {v4, p0}, Lcom/android/calendar/month/SimpleWeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 232
    .end local v2           #params:Landroid/widget/AbsListView$LayoutParams;
    .restart local v3       #selectedDay:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/month/SimpleWeeksAdapter$CalendarGestureListener;-><init>(Lcom/android/calendar/month/SimpleWeeksAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 118
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    .line 119
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 120
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 1
    .parameter "day"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 276
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 277
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 279
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    move-object v2, v0

    .line 257
    .local v2, view:Lcom/android/calendar/month/SimpleWeekView;
    check-cast p1, Lcom/android/calendar/month/SimpleWeekView;

    .end local p1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/calendar/month/SimpleWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v1

    .line 258
    .local v1, day:Landroid/text/format/Time;
    const-string v3, "MonthByWeek"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "MonthByWeek"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touched day at Row="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " day="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->onDayTapped(Landroid/text/format/Time;)V

    .line 264
    :cond_1
    const/4 v3, 0x1

    .line 266
    .end local v1           #day:Landroid/text/format/Time;
    .end local v2           #view:Lcom/android/calendar/month/SimpleWeekView;
    :goto_0
    return v3

    .restart local p1
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 183
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 4
    .parameter "selectedTime"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 163
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 164
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 166
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method public updateFocusMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 249
    iput p1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 251
    return-void
.end method

.method public updateParams(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 130
    const-string v1, "MonthByWeek"

    const-string v2, "WeekParameters are null! Cannot update adapter."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    .line 136
    :cond_1
    const-string v1, "focus_month"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "num_weeks"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    .line 139
    :cond_2
    const-string v1, "week_numbers"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "week_numbers"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 142
    :cond_3
    const-string v1, "week_start"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    const-string v1, "week_start"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 145
    :cond_4
    const-string v1, "selected_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    const-string v1, "selected_day"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, julianDay:I
    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 148
    iget v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 150
    .end local v0           #julianDay:I
    :cond_5
    const-string v1, "days_per_week"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    const-string v1, "days_per_week"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->refresh()V

    goto/16 :goto_0

    .line 140
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method
