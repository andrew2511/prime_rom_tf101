.class public Lcom/google/android/finsky/FinskyApp;
.super Landroid/app/Application;
.source "FinskyApp.java"


# static fields
.field private static sInstance:Lcom/google/android/finsky/FinskyApp;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCache:Lcom/android/volley/Cache;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

.field private mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mVendingApi:Lcom/google/android/vending/remoting/api/VendingApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/android/finsky/FinskyApp;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    return-object v0
.end method


# virtual methods
.method public clearCacheAsync(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/ClearCacheRequest;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-direct {v1, v2, p1}, Lcom/android/volley/toolbox/ClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 126
    return-void
.end method

.method public drainAllRequests()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->drain()V

    .line 57
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader;->drain()V

    .line 58
    return-void
.end method

.method public getAnalytics()Lcom/google/android/finsky/analytics/Analytics;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    return-object v0
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method public getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    return-object v0
.end method

.method public getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 62
    sput-object p0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    .line 64
    invoke-static {p0}, Lcom/google/android/finsky/config/GservicesValue;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/google/android/finsky/config/PreferenceFile;->init(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    .line 69
    new-instance v0, Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 73
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;-><init>(Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 75
    sget-object v0, Lcom/google/android/finsky/config/G;->analyticsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/finsky/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/analytics/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 82
    :goto_0
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    .line 84
    new-instance v0, Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/PackageInfoCache;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 85
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/google/android/finsky/analytics/StubAnalytics;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/StubAnalytics;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    goto :goto_0
.end method

.method public setApiContexts(Lcom/google/android/finsky/api/DfeApiContext;Lcom/google/android/vending/remoting/api/VendingApiContext;)V
    .locals 3
    .parameter "dfeContext"
    .parameter "vendingContext"

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 153
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingApi;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1, p2}, Lcom/google/android/vending/remoting/api/VendingApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mVendingApi:Lcom/google/android/vending/remoting/api/VendingApi;

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.action.DFE_API_CONTEXT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "Created new APIs with contexts (dfe=%s, vending=%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter "toc"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 167
    return-void
.end method
