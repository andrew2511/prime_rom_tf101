.class public Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final INSTANCE:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker; = null

.field public static final PRODUCT:Ljava/lang/String; = "GoogleAnalytics"

.field public static final TRACKER_TAG:Ljava/lang/String; = "googleanalytics"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private accountId:Ljava/lang/String;

.field private connetivityManager:Landroid/net/ConnectivityManager;

.field private dispatchPeriod:I

.field private dispatchRunner:Ljava/lang/Runnable;

.field private dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

.field private dispatcherIsBusy:Z

.field private eventStore:Lcom/google/android/apps/analytics/EventStore;

.field private handler:Landroid/os/Handler;

.field private parent:Landroid/content/Context;

.field private powerSaveMode:Z

.field private userAgentProduct:Ljava/lang/String;

.field private userAgentVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->INSTANCE:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    .line 31
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Lcom/google/android/apps/analytics/EventStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    return-object v0
.end method

.method private cancelPendingDispathes()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "accountId"
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/apps/analytics/Event;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v1}, Lcom/google/android/apps/analytics/EventStore;->getStoreId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/analytics/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 189
    .local v0, event:Lcom/google/android/apps/analytics/Event;
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/EventStore;->putEvent(Lcom/google/android/apps/analytics/Event;)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->resetPowerSaveMode()V

    .line 191
    return-void
.end method

.method public static getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->INSTANCE:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method

.method private maybeScheduleNextDispatch()V
    .locals 4

    .prologue
    .line 216
    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    if-gez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private resetPowerSaveMode()V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    .line 237
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    iget-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    if-eqz v2, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v2, v3

    .line 284
    :goto_0
    return v2

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 260
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v2, v3

    .line 265
    goto :goto_0

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v2}, Lcom/google/android/apps/analytics/EventStore;->getNumStoredEvents()I

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v2}, Lcom/google/android/apps/analytics/EventStore;->peekEvents()[Lcom/google/android/apps/analytics/Event;

    move-result-object v0

    .line 271
    .local v0, events:[Lcom/google/android/apps/analytics/Event;
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v2, v0}, Lcom/google/android/apps/analytics/Dispatcher;->dispatchEvents([Lcom/google/android/apps/analytics/Event;)V

    .line 272
    iput-boolean v4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    .line 273
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v2, v4

    .line 277
    goto :goto_0

    .line 280
    .end local v0           #events:[Lcom/google/android/apps/analytics/Event;
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    move v2, v3

    .line 284
    goto :goto_0
.end method

.method dispatchFinished()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    .line 290
    return-void
.end method

.method getDispatcher()Lcom/google/android/apps/analytics/Dispatcher;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    return-object v0
.end method

.method getEventStore()Lcom/google/android/apps/analytics/EventStore;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    return-object v0
.end method

.method public setDispatchPeriod(I)V
    .locals 1
    .parameter "newDispatchPeriod"

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    .line 201
    .local v0, oldDispatchPeriod:I
    iput p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    .line 203
    if-gtz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-lez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispathes()V

    .line 207
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    goto :goto_0
.end method

.method public setProductVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "product"
    .parameter "version"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public start(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6
    .parameter "accountId"
    .parameter "dispatchPeriod"
    .parameter "ctx"

    .prologue
    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, store:Lcom/google/android/apps/analytics/EventStore;
    const/4 v5, 0x0

    .line 72
    .local v5, dispatcher:Lcom/google/android/apps/analytics/Dispatcher;
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    if-nez v0, :cond_0

    .line 73
    new-instance v4, Lcom/google/android/apps/analytics/PersistentEventStore;

    .end local v4           #store:Lcom/google/android/apps/analytics/EventStore;
    invoke-direct {v4, p3}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Landroid/content/Context;)V

    .line 77
    .restart local v4       #store:Lcom/google/android/apps/analytics/EventStore;
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-nez v0, :cond_1

    .line 78
    new-instance v5, Lcom/google/android/apps/analytics/NetworkDispatcher;

    .end local v5           #dispatcher:Lcom/google/android/apps/analytics/Dispatcher;
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #dispatcher:Lcom/google/android/apps/analytics/Dispatcher;
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;)V

    .line 84
    return-void

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    goto :goto_1
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;)V
    .locals 7
    .parameter "accountId"
    .parameter "dispatchPeriod"
    .parameter "ctx"
    .parameter "eventStore"
    .parameter "dispatcher"

    .prologue
    .line 99
    new-instance v6, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    invoke-direct {v6, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V

    .line 100
    return-void
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V
    .locals 2
    .parameter "accountId"
    .parameter "dispatchPeriod"
    .parameter "ctx"
    .parameter "eventStore"
    .parameter "dispatcher"
    .parameter "callbacks"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    .line 107
    iput-object p4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/EventStore;->startNewVisit()V

    .line 110
    iput-object p5, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v1}, Lcom/google/android/apps/analytics/EventStore;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p6, v1}, Lcom/google/android/apps/analytics/Dispatcher;->init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    .line 124
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setDispatchPeriod(I)V

    .line 125
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispathes()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "accountId"
    .parameter "ctx"

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/Dispatcher;->stop()V

    .line 297
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispathes()V

    .line 298
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 6
    .parameter "pageUrl"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    const-string v2, "__##GOOGLEPAGEVIEW##__"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    return-void
.end method
