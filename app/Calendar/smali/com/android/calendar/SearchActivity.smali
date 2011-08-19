.class public Lcom/android/calendar/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsMultipane:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCurrentEventId:J

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

.field private mIsLargePort:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 83
    new-instance v0, Lcom/android/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchActivity$1;-><init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private deleteEvent(JJJ)V
    .locals 10
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 235
    sget-boolean v0, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 238
    .local v8, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 239
    .local v9, ft:Landroid/app/FragmentTransaction;
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v9, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 240
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 242
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f0e0094

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 243
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 245
    .end local v8           #fragmentManager:Landroid/app/FragmentManager;
    .end local v9           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 298
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, query:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 302
    .end local v0           #query:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initFragments(JLjava/lang/String;)V
    .locals 7
    .parameter "timeMillis"
    .parameter "query"

    .prologue
    const v5, 0x7f0e0093

    const v6, 0x7f0e0094

    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 169
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 171
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment;

    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    invoke-direct {v2, p1, p2, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 172
    .local v2, searchResultsFragment:Lcom/android/calendar/agenda/AgendaFragment;
    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 173
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v5, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 174
    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-nez v4, :cond_0

    .line 175
    invoke-virtual {p0, v6}, Lcom/android/calendar/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/event/EditEventFragment;

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 178
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 180
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 181
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 185
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 186
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 187
    .local v3, t:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 188
    invoke-direct {p0, p3, v3}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 189
    return-void
.end method

.method private returnToCalendarHome()V
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v0, launchIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "content://com.android.calendar/time"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 379
    const/high16 v1, 0x420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/calendar/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 5
    .parameter "searchQuery"
    .parameter "goToTime"

    .prologue
    const/4 v4, 0x1

    .line 216
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.android.calendar.CalendarRecentSuggestionsProvider"

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 219
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 223
    .local v0, searchEventInfo:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v2, 0x100

    iput-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 224
    iput-object p1, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 225
    iput v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 226
    if-eqz p2, :cond_0

    .line 227
    iput-object p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2, p0, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 230
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v8, -0x1

    const v6, 0x7f0e0094

    const/4 v7, 0x1

    .line 192
    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 194
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 196
    .local v2, ft:Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {v4, p1, v7}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 197
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v2, v6, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 198
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 199
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    iget-object v5, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v4, v6, v5}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 211
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :goto_0
    iget-wide v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v4, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 212
    return-void

    .line 201
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 203
    .local v0, eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    const-string v4, "beginTime"

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    :goto_1
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    const-string v4, "endTime"

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    :goto_2
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/calendar/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-wide v5, v8

    .line 205
    goto :goto_1

    :cond_2
    move-wide v5, v8

    .line 207
    goto :goto_2
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 339
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 343
    const-wide/16 v0, 0x12

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    move-wide v5, v0

    .line 349
    .local v5, endTime:J
    :goto_0
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 350
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 354
    :cond_0
    :goto_1
    return-void

    .line 348
    .end local v5           #endTime:J
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_0

    .line 351
    .restart local v5       #endTime:J
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 352
    iget-wide v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/SearchActivity;->deleteEvent(JJJ)V

    goto :goto_1
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/calendar/SearchActivity;->returnToCalendarHome()V

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 102
    .local v3, layout:I
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 103
    .local v6, orientation:I
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_4

    move v2, v9

    .line 104
    .local v2, isXlarge:Z
    :goto_0
    and-int/lit8 v8, v3, 0x3

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    move v1, v9

    .line 106
    .local v1, isLargeLand:Z
    :goto_1
    and-int/lit8 v8, v3, 0x3

    if-eqz v8, :cond_6

    if-ne v6, v9, :cond_6

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/calendar/SearchActivity;->mIsLargePort:Z

    .line 109
    if-nez v2, :cond_0

    if-eqz v1, :cond_7

    :cond_0
    move v8, v9

    :goto_3
    sput-boolean v8, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    .line 111
    const v8, 0x7f040023

    invoke-virtual {p0, v8}, Lcom/android/calendar/SearchActivity;->setContentView(I)V

    .line 113
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/calendar/SearchActivity;->setDefaultKeyMode(I)V

    .line 117
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    const-wide/32 v9, 0x400000

    invoke-virtual {v8, v9, v10}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 127
    iget-object v8, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v8, v11, p0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 129
    new-instance v8, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v8, p0, p0, v11}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v8, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 132
    const-wide/16 v4, 0x0

    .line 133
    .local v4, millis:J
    if-eqz p1, :cond_1

    .line 135
    const-string v8, "key_restore_time"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 140
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 148
    if-eqz p1, :cond_8

    const-string v8, "key_restore_search_query"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 149
    const-string v8, "key_restore_search_query"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, query:Ljava/lang/String;
    :goto_4
    invoke-direct {p0, v4, v5, v7}, Lcom/android/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    .line 155
    .end local v7           #query:Ljava/lang/String;
    :cond_3
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isLargeLand:Z
    .end local v2           #isXlarge:Z
    .end local v4           #millis:J
    :cond_4
    move v2, v11

    .line 103
    goto/16 :goto_0

    .restart local v2       #isXlarge:Z
    :cond_5
    move v1, v11

    .line 104
    goto :goto_1

    .restart local v1       #isLargeLand:Z
    :cond_6
    move v8, v11

    .line 106
    goto :goto_2

    :cond_7
    move v8, v11

    .line 109
    goto :goto_3

    .line 151
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v4       #millis:J
    :cond_8
    const-string v8, "query"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #query:Ljava/lang/String;
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    const v1, 0x7f0e0097

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 252
    .local v0, searchView:Landroid/widget/SearchView;
    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 253
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 254
    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 256
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 258
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/calendar/SearchActivity;->mIsLargePort:Z

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 259
    return v4

    :cond_0
    move v2, v3

    .line 258
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 162
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f0e0093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 164
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/calendar/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, t:Landroid/text/format/Time;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 281
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 267
    :sswitch_0
    new-instance v4, Landroid/text/format/Time;

    .end local v4           #t:Landroid/text/format/Time;
    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 268
    .restart local v4       #t:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 269
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->onSearchRequested()Z

    .line 273
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :sswitch_2
    iget-object v5, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :sswitch_3
    invoke-direct {p0}, Lcom/android/calendar/SearchActivity;->returnToCalendarHome()V

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0e0097 -> :sswitch_1
        0x7f0e0098 -> :sswitch_0
        0x7f0e009b -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 322
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .parameter "query"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 363
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-wide v9, v6

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 366
    return v8
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 317
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 308
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method
