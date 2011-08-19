.class public abstract Lcom/google/android/youtube/core/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/google/android/youtube/core/Analytics;


# instance fields
.field private applicationVersion:Ljava/lang/String;

.field private clock:Lcom/google/android/youtube/core/utils/SystemClock;

.field private cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

.field private executor:Ljava/util/concurrent/Executor;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private isUpdate:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static createCpuIntensiveExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/BaseApplication;->createThreadPoolExecutor(II)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private static createExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 249
    const/16 v0, 0x10

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/BaseApplication;->createThreadPoolExecutor(II)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 8
    .parameter "userAgent"

    .prologue
    const/16 v5, 0x4e20

    .line 224
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 227
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 229
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 230
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 231
    const/16 v4, 0x2000

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 232
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gzip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 235
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 236
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 237
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 238
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 239
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 240
    .local v1, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 241
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;

    invoke-direct {v4}, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;-><init>()V

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 242
    return-object v0
.end method

.method private static createThreadPoolExecutor(II)Ljava/util/concurrent/Executor;
    .locals 7
    .parameter "size"
    .parameter "keepAliveTimeInSeconds"

    .prologue
    .line 269
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method


# virtual methods
.method protected abstract getAnalyticsPropertyId()Ljava/lang/String;
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    .line 154
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 149
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "could not retrieve application version name"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const-string v2, "Unknown"

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->applicationVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClock()Lcom/google/android/youtube/core/utils/SystemClock;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->clock:Lcom/google/android/youtube/core/utils/SystemClock;

    return-object v0
.end method

.method public getCpuIntensiveExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "?"

    return-object v0
.end method

.method public getSafeSearch()Lcom/google/android/youtube/core/utils/SafeSearch;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    return-object v0
.end method

.method protected abstract getUserAgent()Ljava/lang/String;
.end method

.method public getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method public getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/youtube/core/BaseApplication;->isUpdate:Z

    return v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->setTag(Ljava/lang/String;)V

    .line 75
    const-string v2, "youtube"

    invoke-virtual {p0, v2, v5}, Lcom/google/android/youtube/core/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    .line 76
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, previousVersion:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, currentVersion:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/youtube/core/BaseApplication;->isUpdate:Z

    .line 79
    iget-boolean v2, p0, Lcom/google/android/youtube/core/BaseApplication;->isUpdate:Z

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "version"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "device_id"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "device_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :cond_0
    new-instance v2, Lcom/google/android/youtube/core/utils/SystemClock;

    invoke-direct {v2}, Lcom/google/android/youtube/core/utils/SystemClock;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->clock:Lcom/google/android/youtube/core/utils/SystemClock;

    .line 88
    invoke-static {}, Lcom/google/android/youtube/core/BaseApplication;->createExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    .line 89
    invoke-static {}, Lcom/google/android/youtube/core/BaseApplication;->createCpuIntensiveExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/BaseApplication;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 91
    invoke-static {}, Lcom/google/android/youtube/core/converter/XmlParser;->createPrefixesOnlyParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 93
    new-instance v2, Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 95
    new-instance v2, Lcom/google/android/youtube/core/utils/SafeSearch;

    iget-object v3, p0, Lcom/google/android/youtube/core/BaseApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/core/utils/SafeSearch;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 96
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->setSafeSearch(Lcom/google/android/youtube/core/utils/SafeSearch;)V

    .line 98
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->setCountryCodeRestrict(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->useAnalytics()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 102
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setProductVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getAnalyticsPropertyId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 104
    const-string v2, "Device"

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v2, v3}, Lcom/google/android/youtube/core/BaseApplication;->setCustomVar(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void

    :cond_2
    move v2, v5

    .line 78
    goto/16 :goto_0
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x2

    .line 212
    .local v0, SCOPE_SESSION:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->useAnalytics()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 215
    :cond_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 180
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/BaseApplication;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "label"

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/BaseApplication;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->useAnalytics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    :cond_0
    return-void
.end method

.method public trackPage(Ljava/lang/String;)V
    .locals 3
    .parameter "page"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/youtube/core/BaseApplication;->useAnalytics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V
    .locals 2
    .parameter "category"
    .parameter "position"

    .prologue
    .line 194
    const-string v0, "PlaySelected"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/Analytics$VideoCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/youtube/core/BaseApplication;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method public trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .locals 1
    .parameter "action"
    .parameter "video"
    .parameter "quality"

    .prologue
    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/BaseApplication;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V

    .line 191
    return-void
.end method

.method public trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;I)V
    .locals 3
    .parameter "action"
    .parameter "video"
    .parameter "quality"
    .parameter "value"

    .prologue
    .line 184
    if-nez p3, :cond_0

    const-string v1, "?"

    move-object v0, v1

    .line 185
    .local v0, label:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0, p1, v0, p4}, Lcom/google/android/youtube/core/BaseApplication;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    return-void

    .line 184
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/youtube/core/model/Stream$Quality;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected useAnalytics()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method
