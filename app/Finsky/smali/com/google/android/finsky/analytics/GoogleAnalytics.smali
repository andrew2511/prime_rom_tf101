.class public Lcom/google/android/finsky/analytics/GoogleAnalytics;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# static fields
.field private static final URL_BASE:Landroid/net/Uri;


# instance fields
.field private mRequestQueue:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "http://android.clients.google.com/fdfe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/analytics/GoogleAnalytics;->URL_BASE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics;->mRequestQueue:Ljava/util/concurrent/Executor;

    .line 45
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/config/G;->analyticsAccountId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 75
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "%s, URL %s, cookie %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics;->mRequestQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/finsky/analytics/GoogleAnalytics$2;-><init>(Lcom/google/android/finsky/analytics/GoogleAnalytics;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reportPageView(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 51
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "URL %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/GoogleAnalytics;->mRequestQueue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/finsky/analytics/GoogleAnalytics$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/analytics/GoogleAnalytics$1;-><init>(Lcom/google/android/finsky/analytics/GoogleAnalytics;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "cookie"

    .prologue
    .line 65
    sget-object v1, Lcom/google/android/finsky/analytics/GoogleAnalytics;->URL_BASE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {p1}, Lcom/google/android/finsky/analytics/Analytics$Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p2, :cond_0

    .line 68
    const-string v1, "c"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/analytics/GoogleAnalytics;->reportPageView(Ljava/lang/String;)V

    .line 71
    return-void
.end method
