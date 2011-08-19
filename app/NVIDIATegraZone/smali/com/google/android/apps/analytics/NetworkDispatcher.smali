.class Lcom/google/android/apps/analytics/NetworkDispatcher;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Lcom/google/android/apps/analytics/Dispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/NetworkDispatcher$1;,
        Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;
    }
.end annotation


# static fields
.field private static final GOOGLE_ANALYTICS_HOST:Lorg/apache/http/HttpHost; = null

.field private static final MAX_EVENTS_PER_PIPELINE:I = 0x1e

.field private static final MAX_SEQUENTIAL_REQUESTS:I = 0x5

.field private static final MIN_RETRY_INTERVAL:J = 0x2L

.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s-%s; %s; Build/%s)"


# instance fields
.field private dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "www.google-analytics.com"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/NetworkDispatcher;->GOOGLE_ANALYTICS_HOST:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "GoogleAnalytics"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "userAgentProduct"
    .parameter "userAgentVersion"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 49
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "%s/%s (Linux; U; Android %s; %s-%s; %s; Build/%s)"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->userAgent:Ljava/lang/String;

    .line 58
    return-void

    .line 49
    :cond_0
    const-string v4, "en"

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method static synthetic access$200()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/analytics/NetworkDispatcher;->GOOGLE_ANALYTICS_HOST:Lorg/apache/http/HttpHost;

    return-object v0
.end method


# virtual methods
.method public dispatchEvents([Lcom/google/android/apps/analytics/Event;)V
    .locals 1
    .parameter "events"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->dispatchEvents([Lcom/google/android/apps/analytics/Event;)V

    .line 80
    :cond_0
    return-void
.end method

.method public init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;)V
    .locals 6
    .parameter "callbacks"
    .parameter "requester"
    .parameter "referrer"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/NetworkDispatcher;->stop()V

    .line 71
    new-instance v0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    iget-object v4, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->userAgent:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;-><init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->start()V

    .line 73
    return-void
.end method

.method public init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;)V
    .locals 3
    .parameter "callbacks"
    .parameter "referrer"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/NetworkDispatcher;->stop()V

    .line 64
    new-instance v0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->userAgent:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;-><init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->start()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    .line 95
    :cond_0
    return-void
.end method

.method public waitForThreadLooper()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher;->dispatcherThread:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    .line 85
    return-void
.end method
