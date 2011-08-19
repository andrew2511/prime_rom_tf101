.class public Lcom/android/calendar/agenda/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mIsMultipane:Z

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "instanceId"
    .parameter "isMultipane"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$1;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    .line 62
    iput-boolean p4, p0, Lcom/android/calendar/agenda/AgendaListView;->mIsMultipane:Z

    .line 63
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/calendar/agenda/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setChoiceMode(I)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/calendar/agenda/AgendaListView;->setVerticalScrollBarEnabled(Z)V

    .line 67
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {v0, p1, p0, p4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setCacheColorHint(I)V

    .line 71
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v3, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private shiftPosition(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 210
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 215
    .local v1, position:I
    add-int v3, v1, p1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 236
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .line 215
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 230
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/calendar/agenda/AgendaListView;->setSelection(I)V

    goto :goto_1
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 145
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisibleTime()J
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisiblePosition()I

    move-result v1

    .line 178
    .local v1, position:I
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 179
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 180
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, t:Landroid/text/format/Time;
    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 182
    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 183
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 185
    .end local v2           #t:Landroid/text/format/Time;
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    .prologue
    .line 149
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 150
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getChildCount()I

    move-result v0

    .line 151
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/calendar/agenda/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 154
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    move-object v4, v2

    .line 158
    .end local v2           #listItem:Landroid/view/View;
    :goto_1
    return-object v4

    .line 151
    .restart local v2       #listItem:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;Ljava/lang/String;Z)V
    .locals 4
    .parameter "time"
    .parameter "searchQuery"
    .parameter "forced"

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 102
    new-instance p1, Landroid/text/format/Time;

    .end local p1
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local p1
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 104
    .local v0, goToTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 109
    .end local v0           #goToTime:J
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->close()V

    .line 79
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 19
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v16

    .line 87
    .local v16, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v17

    .line 88
    .local v17, oldInstanceId:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mIsMultipane:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedView(Landroid/view/View;)V

    .line 91
    :cond_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mIsMultipane:Z

    move v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v2

    cmp-long v2, v17, v2

    if-eqz v2, :cond_2

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaListView;->mIsMultipane:Z

    move v3, v0

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x2

    move-wide v4, v3

    :goto_0
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    move-wide v8, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    move-wide v10, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 98
    .end local v16           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v17           #oldInstanceId:J
    :cond_2
    return-void

    .line 93
    .restart local v16       #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .restart local v17       #oldInstanceId:J
    :cond_3
    const-wide/16 v3, 0x4

    move-wide v4, v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->notifyDataSetInvalidated()V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 244
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->onResume()V

    .line 245
    return-void
.end method

.method public refresh(Z)V
    .locals 6
    .parameter "forced"

    .prologue
    const/4 v5, 0x0

    .line 113
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 115
    .local v0, goToTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 119
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v2, v5, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1
    .parameter "hideDeclined"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 240
    return-void
.end method

.method public shiftSelection(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaListView;->shiftPosition(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 197
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 200
    :cond_0
    return-void
.end method
