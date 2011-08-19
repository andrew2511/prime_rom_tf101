.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetUpdateService.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$1;,
        Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RemoteViewsService;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/app/widget/Teaser;",
        ">;>;",
        "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;"
    }
.end annotation


# instance fields
.field private teasers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z

.field private viewsFactory:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;

.field private widgetRequester:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;-><init>(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->viewsFactory:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->initUpdate()V

    return-void
.end method

.method private declared-synchronized initUpdate()V
    .locals 8

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->updating:Z

    if-nez v5, :cond_1

    .line 53
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->updating:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 58
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->onUpdateFinished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 63
    :cond_0
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 64
    .local v0, app:Lcom/google/android/youtube/app/YouTubeApplication;
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v4

    .line 65
    .local v4, userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v2

    .line 66
    .local v2, requesters:Lcom/google/android/youtube/app/Requesters;
    new-instance v3, Lcom/google/android/youtube/app/TheFeed;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lcom/google/android/youtube/app/TheFeed;-><init>(Lcom/google/android/youtube/app/Requesters;Ljava/lang/String;)V

    .line 67
    .local v3, theFeed:Lcom/google/android/youtube/app/TheFeed;
    new-instance v5, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-interface {v2}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/youtube/app/TheFeed;->getVideoSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v5, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->widgetRequester:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    .line 71
    invoke-virtual {v4, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    .end local v0           #app:Lcom/google/android/youtube/app/YouTubeApplication;
    .end local v2           #requesters:Lcom/google/android/youtube/app/Requesters;
    .end local v3           #theFeed:Lcom/google/android/youtube/app/TheFeed;
    .end local v4           #userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    :cond_1
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 151
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSignedInRequest(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 2
    .parameter "userAuth"

    .prologue
    .line 129
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->widgetRequester:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyFeedRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 131
    return-void
.end method

.method private makeSignedOutRequest()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->widgetRequester:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequests;->getTheFeedRequest()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 136
    return-void
.end method

.method private declared-synchronized onUpdateFinished()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->widgetRequester:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->updating:Z

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-static {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetViewsHelper;->newRetryRemoteViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 112
    const v0, 0x36ee80

    invoke-direct {p0, p0, v0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->scheduleRetry(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleRetry(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "delayMillis"

    .prologue
    .line 142
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 143
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetIntentHelper;->getUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0
    .parameter "userAuth"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->makeSignedInRequest(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 118
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->makeSignedOutRequest()V

    .line 126
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 93
    const-string v0, "Error response"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->onUpdateFinished()V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1
    .parameter "intent"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->viewsFactory:Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService$WidgetRemoteViewsFactory;

    return-object v0
.end method

.method public onNotAuthenticated()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->makeSignedOutRequest()V

    .line 122
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/app/widget/Teaser;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->teasers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->onUpdateFinished()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetUpdateService;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    return-void
.end method
