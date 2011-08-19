.class public Lcom/android/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$RefreshInBackground;,
        Lcom/android/calendar/CalendarController$EventHandler;,
        Lcom/android/calendar/CalendarController$EventInfo;
    }
.end annotation


# static fields
.field private static final REFRESH_ARGS:[Ljava/lang/String;

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/calendar/CalendarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDetailViewType:I

.field private mDispatchInProgress:Z

.field private mEventId:J

.field private mPreviousViewType:I

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mTime:Landroid/text/format/Time;

.field private mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeRemovedEventHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 83
    iput v2, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 84
    iput v2, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 85
    iput v2, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 87
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 207
    iput-object p1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    .line 208
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 209
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v1, "preferred_detailedView"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 212
    new-instance v0, Lcom/android/calendar/CalendarController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/CalendarController$1;-><init>(Lcom/android/calendar/CalendarController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 218
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;
    .locals 3
    .parameter "context"

    .prologue
    .line 186
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController;

    .line 188
    .local v0, controller:Lcom/android/calendar/CalendarController;
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/calendar/CalendarController;

    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v0       #controller:Lcom/android/calendar/CalendarController;
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    monitor-exit v1

    return-object v0

    .line 193
    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private launchCreateEvent(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 535
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 536
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 537
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method private launchDeleteEvent(JJJ)V
    .locals 9
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 569
    const/4 v1, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V

    .line 570
    return-void
.end method

.method private launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V
    .locals 8
    .parameter "parentActivity"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "deleteWhich"

    .prologue
    .line 574
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .local v0, deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    move-wide v1, p4

    move-wide v3, p6

    move-wide v5, p2

    move/from16 v7, p8

    .line 576
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 577
    return-void

    .line 574
    .end local v0           #deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchEditEvent(JJJZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 552
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    const-string v0, "beginTime"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 554
    const-string v0, "endTime"

    invoke-virtual {v1, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 555
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 556
    const-string v0, "editMode"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 558
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method private launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "eventId"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 580
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 582
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1, p4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 583
    .local v2, searchableInfo:Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 586
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 528
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method

.method private launchViewEvent(JJJ)V
    .locals 3
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 541
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 543
    .local v0, eventUri:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 545
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 546
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 547
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method


# virtual methods
.method public deregisterEventHandler(Ljava/lang/Integer;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgress:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 485
    :goto_0
    monitor-exit p0

    .line 486
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    return-wide v0
.end method

.method public getPreviousViewType()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public refreshCalendars()V
    .locals 8

    .prologue
    .line 590
    const-string v0, "CalendarController"

    const-string v1, "RefreshCalendars starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_sync_account"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "_sync_account_type"

    aput-object v6, v4, v5

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    const-string v7, "_sync_account,_sync_account_type"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .locals 2
    .parameter "key"
    .parameter "eventHandler"

    .prologue
    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgress:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_0
    monitor-exit p0

    .line 475
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V
    .locals 14
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"

    .prologue
    .line 276
    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 278
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 14
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 287
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "selected"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 291
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 292
    .local v0, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 293
    iput-object p4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 294
    iput-object p6, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 295
    iput-object p5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 296
    iput-wide p7, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 297
    iput p9, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 298
    iput-object p12, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 299
    iput-object p13, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    .line 300
    iput-wide p10, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 302
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 26
    .parameter "sender"
    .parameter "event"

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 312
    .local v15, filteredTypes:Ljava/lang/Long;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v7, v0

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 458
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 323
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 345
    :cond_2
    :goto_1
    const-wide/16 v23, 0x0

    .line 346
    .local v23, startMillis:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 347
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v23

    .line 351
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 367
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v5, v23, v5

    if-nez v5, :cond_4

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 379
    :cond_4
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0xd

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 382
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    .line 383
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 389
    :cond_5
    :goto_3
    const/16 v17, 0x0

    .line 390
    .local v17, handled:Z
    monitor-enter p0

    .line 391
    const/4 v5, 0x1

    :try_start_0
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarController;->mDispatchInProgress:Z

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 398
    .end local p1
    .local v18, handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_6
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 399
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 400
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 401
    .local v20, key:I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/CalendarController$EventHandler;

    .line 402
    .local v14, eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v14, :cond_6

    invoke-interface {v14}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v7, v0

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object v5, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 407
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    const/16 v17, 0x1

    goto :goto_4

    .line 326
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v14           #eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    .end local v17           #handled:Z
    .end local v18           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v20           #key:I
    .end local v23           #startMillis:J
    .restart local p1
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    if-nez v5, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    goto/16 :goto_1

    .line 328
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    .line 329
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 331
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    invoke-static {}, Lcom/android/calendar/Utils;->getAllowWeekForDetailView()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 333
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    goto/16 :goto_1

    .line 354
    .restart local v23       #startMillis:J
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, v23, v5

    if-eqz v5, :cond_c

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v21

    .line 358
    .local v21, mtimeMillis:J
    cmp-long v5, v21, v23

    if-ltz v5, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object v5, v0

    if-eqz v5, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v5, v21, v5

    if-lez v5, :cond_c

    .line 360
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 363
    .end local v21           #mtimeMillis:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 385
    :cond_d
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarController;->mEventId:J

    goto/16 :goto_3

    .line 412
    .end local p1
    .restart local v17       #handled:Z
    .restart local v18       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_e
    const/4 v5, 0x0

    :try_start_1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarController;->mDispatchInProgress:Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 417
    .local v25, zombie:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 427
    .end local v18           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #zombie:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 419
    .restart local v18       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 422
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 424
    .local v16, food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object v5, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 427
    .end local v16           #food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_11
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    if-nez v17, :cond_0

    .line 431
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x40

    cmp-long v5, v5, v7

    if-nez v5, :cond_12

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSettings()V

    goto/16 :goto_0

    .line 437
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object v5, v0

    if-nez v5, :cond_13

    const-wide/16 v5, -0x1

    move-wide v10, v5

    .line 438
    .local v10, endTime:J
    :goto_7
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_14

    .line 439
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarController;->launchCreateEvent(JJ)V

    goto/16 :goto_0

    .line 437
    .end local v10           #endTime:J
    :cond_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_7

    .line 441
    .restart local v10       #endTime:J
    :cond_14
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_15

    .line 442
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJ)V

    goto/16 :goto_0

    .line 444
    :cond_15
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x8

    cmp-long v5, v5, v7

    if-nez v5, :cond_16

    .line 445
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/4 v12, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 447
    :cond_16
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x4

    cmp-long v5, v5, v7

    if-nez v5, :cond_17

    .line 448
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 450
    :cond_17
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x10

    cmp-long v5, v5, v7

    if-nez v5, :cond_18

    .line 451
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    move-object v5, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/calendar/CalendarController;->launchDeleteEvent(JJJ)V

    goto/16 :goto_0

    .line 453
    :cond_18
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    move-wide v5, v0

    const-wide/16 v7, 0x100

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 454
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-wide v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    move-object v8, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarController;->launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0
.end method

.method public sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V
    .locals 16
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "selectedMillis"

    .prologue
    .line 222
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithResponse(Ljava/lang/Object;JJJJIIJJ)V

    .line 224
    return-void
.end method

.method public sendEventRelatedEventWithResponse(Ljava/lang/Object;JJJJIIJJ)V
    .locals 6
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "extraLong"
    .parameter "selectedMillis"

    .prologue
    .line 242
    new-instance v3, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v3}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 243
    .local v3, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v3, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 244
    const-wide/16 v4, 0x8

    cmp-long v4, p2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x4

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 245
    :cond_0
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 247
    :cond_1
    iput-wide p4, v3, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 248
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 249
    iget-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v4, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 250
    const-wide/16 v4, -0x1

    cmp-long v4, p14, v4

    if-eqz v4, :cond_2

    .line 251
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 252
    iget-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-object v0, v4

    move-wide/from16 v1, p14

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 256
    :goto_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 257
    iget-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v4, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 258
    move/from16 v0, p10

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    .line 259
    move/from16 v0, p11

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    .line 260
    move-wide/from16 v0, p12

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 261
    invoke-virtual {p0, p1, v3}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 262
    return-void

    .line 254
    :cond_2
    iget-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v4, v3, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setEventId(J)V
    .locals 0
    .parameter "eventId"

    .prologue
    .line 607
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 608
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .parameter "millisTime"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 507
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 602
    iput p1, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 603
    return-void
.end method
