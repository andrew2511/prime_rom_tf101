.class public Lcom/google/android/youtube/videos/VideosApplication;
.super Lcom/google/android/youtube/core/BaseApplication;
.source "VideosApplication.java"


# static fields
.field private static final HTTP_USER_AGENT:Ljava/lang/String; = "Android-Videos"


# instance fields
.field private drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private platform:Lcom/google/android/youtube/videos/Platform;

.field private requesters:Lcom/google/android/youtube/videos/DefaultRequesters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;-><init>()V

    return-void
.end method

.method private createPlatform()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 59
    const-string v2, "com.google.android.youtube.videos.froyo.PlatformImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/Platform;

    iput-object v2, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    .line 67
    return-void

    .line 61
    .end local v1           #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v2, "com.google.android.youtube.videos.honeycomb.PlatformImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 64
    .end local v1           #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t create platform util"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z
    .locals 2
    .parameter "item"
    .parameter "activity"
    .parameter "navigation"

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/youtube/videos/Navigation;->toSettings()V

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const v0, 0x7f0c00a2

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    const v0, 0x7f0c00a3

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v1

    .line 107
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7f080052
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getAnalyticsPropertyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/Platform;->getAnalyticsPropertyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmManager()Lcom/google/android/youtube/videos/DrmManager;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "Videos"

    return-object v0
.end method

.method public getRequesters()Lcom/google/android/youtube/videos/Requesters;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Android-Videos"

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/youtube/videos/VideosApplication;->createPlatform()V

    .line 34
    invoke-super {p0}, Lcom/google/android/youtube/core/BaseApplication;->onCreate()V

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    invoke-interface {v2}, Lcom/google/android/youtube/videos/Platform;->getDeveloperKey()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    invoke-interface {v3}, Lcom/google/android/youtube/videos/Platform;->getDeveloperSecret()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;-><init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;)V

    .line 44
    .local v0, deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 45
    .local v8, singleThreadExecutor:Ljava/util/concurrent/Executor;
    iget-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    invoke-interface {v1, p0, v8, v0, v2}, Lcom/google/android/youtube/videos/Platform;->newDrmManager(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 48
    new-instance v1, Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getClock()Lcom/google/android/youtube/core/utils/SystemClock;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/videos/VideosApplication;->platform:Lcom/google/android/youtube/videos/Platform;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/videos/DefaultRequesters;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/videos/Platform;)V

    iput-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    .line 50
    iget-object v1, p0, Lcom/google/android/youtube/videos/VideosApplication;->requesters:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 52
    invoke-static {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/VideosApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    return-void
.end method

.method protected useAnalytics()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method
