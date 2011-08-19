.class public Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.super Ljava/lang/Object;


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

.field public static final VERSION:Ljava/lang/String; = "1.1"

.field public static final WIRE_VERSION:Ljava/lang/String; = "4.5ma"


# instance fields
.field private accountId:Ljava/lang/String;

.field private connetivityManager:Landroid/net/ConnectivityManager;

.field private customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

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

    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->INSTANCE:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    const-string v0, "1.1"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Lcom/google/android/apps/analytics/EventStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    return-object v0
.end method

.method private cancelPendingDispatches()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

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

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/Event;->setCustomVariableBuffer(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/EventStore;->putEvent(Lcom/google/android/apps/analytics/Event;)V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->resetPowerSaveMode()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->INSTANCE:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method

.method private maybeScheduleNextDispatch()V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/EventStore;->getNumStoredEvents()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/EventStore;->peekEvents()[Lcom/google/android/apps/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/Dispatcher;->dispatchEvents([Lcom/google/android/apps/analytics/Event;)V

    iput-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    move v0, v2

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    move v0, v1

    goto :goto_0
.end method

.method dispatchFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    return-void
.end method

.method getDispatcher()Lcom/google/android/apps/analytics/Dispatcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    return-object v0
.end method

.method getEventStore()Lcom/google/android/apps/analytics/EventStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    return-object v0
.end method

.method public getVisitorCustomVar(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v0, p1}, Lcom/google/android/apps/analytics/EventStore;->getVisitorCustomVar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/apps/analytics/CustomVariable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/apps/analytics/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDispatchPeriod(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    iput p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    goto :goto_0
.end method

.method public setProductVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    return-void
.end method

.method public start(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/analytics/PersistentEventStore;

    new-instance v1, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-direct {v1, p3}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;)V

    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/analytics/NetworkDispatcher;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    move-object v4, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    move-object v5, v0

    goto :goto_1
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;)V
    .locals 7

    new-instance v6, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    invoke-direct {v6, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V

    return-void
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/EventStore;Lcom/google/android/apps/analytics/Dispatcher;Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/EventStore;->startNewVisit()V

    iput-object p5, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventStore:Lcom/google/android/apps/analytics/EventStore;

    invoke-interface {v1}, Lcom/google/android/apps/analytics/EventStore;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p6, v1}, Lcom/google/android/apps/analytics/Dispatcher;->init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connetivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setDispatchPeriod(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/Dispatcher;->stop()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    const-string v2, "__##GOOGLEPAGEVIEW##__"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
