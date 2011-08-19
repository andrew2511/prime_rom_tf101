.class public Lcom/android/vending/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# static fields
.field public static final PREF_DISABLE_SSL_CERT_CHECK:Lcom/android/vending/util/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isInitialized:Z

.field private static sApplication:Lcom/android/vending/VendingApplication;

.field private static sAssetDownloader:Lcom/android/vending/AssetDownloader;

.field private static sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;

.field private static sAsynchTaskRunner:Lcom/android/vending/AsynchRequestRunner;

.field private static sBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field private static sCacheManager:Lcom/android/vending/cache/CacheManager;

.field private static sGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

.field private static sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;

.field private static sNotificationManager:Lcom/android/vending/VendingNotificationManager;

.field private static sRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-boolean v1, Lcom/android/vending/ServiceLocator;->isInitialized:Z

    .line 56
    const-string v0, "vending.disable_ssl_cert_check"

    invoke-static {v0, v1}, Lcom/android/vending/util/GservicesValue;->value(Ljava/lang/String;Z)Lcom/android/vending/util/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/android/vending/ServiceLocator;->PREF_DISABLE_SSL_CERT_CHECK:Lcom/android/vending/util/GservicesValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForInitialization()V
    .locals 2

    .prologue
    .line 298
    sget-boolean v0, Lcom/android/vending/ServiceLocator;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ServiceLocator already initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    return-void
.end method

.method static createGoogleHttpClient(Landroid/app/Application;I)Lcom/android/vending/compat/GoogleHttpClient;
    .locals 5
    .parameter "context"
    .parameter "socketTimeoutMillis"

    .prologue
    .line 305
    sget-object v3, Lcom/android/vending/ServiceLocator;->PREF_DISABLE_SSL_CERT_CHECK:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v3}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 306
    .local v1, disableCertCheck:Z
    if-eqz v1, :cond_0

    .line 307
    const-string v3, "Turning off SSL certification check."

    invoke-static {v3}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 311
    :cond_0
    new-instance v0, Lcom/android/vending/compat/GoogleHttpClient;

    const-string v3, "Android-Market/2"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v3, v4}, Lcom/android/vending/compat/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 315
    .local v0, client:Lcom/android/vending/compat/GoogleHttpClient;
    invoke-virtual {v0}, Lcom/android/vending/compat/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 316
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 317
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 318
    const-wide/16 v3, 0x2710

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 321
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 323
    return-object v0
.end method

.method public static getAssetDownloader()Lcom/android/vending/AssetDownloader;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/android/vending/ServiceLocator;->sAssetDownloader:Lcom/android/vending/AssetDownloader;

    return-object v0
.end method

.method public static declared-synchronized getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;
    .locals 6

    .prologue
    .line 263
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/android/vending/AsynchRequestRunner;

    new-instance v2, Lcom/android/vending/api/RequestManager;

    sget-object v3, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v3

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v4

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    invoke-direct {v1, v2}, Lcom/android/vending/AsynchRequestRunner;-><init>(Lcom/android/vending/api/RequestManager;)V

    sput-object v1, Lcom/android/vending/ServiceLocator;->sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 270
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAsynchTaskRunner()Lcom/android/vending/AsynchRequestRunner;
    .locals 3

    .prologue
    .line 281
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sAsynchTaskRunner:Lcom/android/vending/AsynchRequestRunner;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/android/vending/AsynchRequestRunner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/vending/AsynchRequestRunner;-><init>(Lcom/android/vending/api/RequestManager;)V

    sput-object v1, Lcom/android/vending/ServiceLocator;->sAsynchTaskRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 284
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sAsynchTaskRunner:Lcom/android/vending/AsynchRequestRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getBillingDatabase()Lcom/android/vending/api/BillingDatabase;
    .locals 3

    .prologue
    .line 125
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/android/vending/api/BillingDatabase;

    sget-object v2, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    invoke-direct {v1, v2}, Lcom/android/vending/api/BillingDatabase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/vending/ServiceLocator;->sBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 128
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sBillingDatabase:Lcom/android/vending/api/BillingDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCacheManager()Lcom/android/vending/cache/CacheManager;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/android/vending/ServiceLocator;->sCacheManager:Lcom/android/vending/cache/CacheManager;

    return-object v0
.end method

.method public static declared-synchronized getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;
    .locals 3

    .prologue
    .line 156
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lcom/android/vending/ServiceLocator;->createGoogleHttpClient(Landroid/app/Application;I)Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v1

    sput-object v1, Lcom/android/vending/ServiceLocator;->sGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    .line 159
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;
    .locals 3

    .prologue
    .line 102
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/android/vending/api/LocalAssetDatabase;

    sget-object v2, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    invoke-direct {v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/vending/ServiceLocator;->sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;

    .line 105
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getRadioHttpClient()Lcom/android/vending/api/RadioHttpClient;
    .locals 4

    .prologue
    .line 179
    const-class v0, Lcom/android/vending/ServiceLocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Lcom/android/vending/api/RadioHttpClient;

    sget-object v2, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/RadioHttpClient;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V

    sput-object v1, Lcom/android/vending/ServiceLocator;->sRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    .line 182
    :cond_0
    sget-object v1, Lcom/android/vending/ServiceLocator;->sRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getVendingApplication()Lcom/android/vending/VendingApplication;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    return-object v0
.end method

.method public static getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/android/vending/ServiceLocator;->sNotificationManager:Lcom/android/vending/VendingNotificationManager;

    return-object v0
.end method

.method public static init(Lcom/android/vending/VendingApplication;)V
    .locals 2
    .parameter "applicationContext"

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/vending/ServiceLocator;->isInitialized:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/ServiceLocator;->isInitialized:Z

    .line 78
    new-instance v0, Lcom/android/vending/AssetDownloader;

    invoke-direct {v0}, Lcom/android/vending/AssetDownloader;-><init>()V

    sput-object v0, Lcom/android/vending/ServiceLocator;->sAssetDownloader:Lcom/android/vending/AssetDownloader;

    .line 79
    new-instance v0, Lcom/android/vending/VendingNotificationManager;

    invoke-direct {v0}, Lcom/android/vending/VendingNotificationManager;-><init>()V

    sput-object v0, Lcom/android/vending/ServiceLocator;->sNotificationManager:Lcom/android/vending/VendingNotificationManager;

    .line 80
    sput-object p0, Lcom/android/vending/ServiceLocator;->sApplication:Lcom/android/vending/VendingApplication;

    .line 81
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/vending/cache/CacheManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/vending/ServiceLocator;->sCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 82
    invoke-static {p0}, Lcom/android/vending/model/LocalAssetCache;->init(Landroid/content/Context;)V

    .line 86
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ServiceLocator already initialized."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initLocalAssetCache(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 146
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 147
    invoke-static {p0}, Lcom/android/vending/model/LocalAssetCache;->init(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public static reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/ServiceLocator;->isInitialized:Z

    .line 331
    sput-object v1, Lcom/android/vending/ServiceLocator;->sAssetDownloader:Lcom/android/vending/AssetDownloader;

    .line 332
    sput-object v1, Lcom/android/vending/ServiceLocator;->sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;

    .line 333
    sput-object v1, Lcom/android/vending/ServiceLocator;->sBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 334
    sput-object v1, Lcom/android/vending/ServiceLocator;->sNotificationManager:Lcom/android/vending/VendingNotificationManager;

    .line 335
    sput-object v1, Lcom/android/vending/ServiceLocator;->sCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 336
    sput-object v1, Lcom/android/vending/ServiceLocator;->sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 337
    sput-object v1, Lcom/android/vending/ServiceLocator;->sGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    .line 338
    sput-object v1, Lcom/android/vending/ServiceLocator;->sRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    .line 339
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->deactivateForTests()V

    .line 340
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->uninit()V

    .line 341
    return-void
.end method

.method public static setAssetDownloader(Lcom/android/vending/AssetDownloader;)V
    .locals 0
    .parameter "assetDownloader"

    .prologue
    .line 211
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 213
    sput-object p0, Lcom/android/vending/ServiceLocator;->sAssetDownloader:Lcom/android/vending/AssetDownloader;

    .line 214
    return-void
.end method

.method public static setAsynchRequestRunner(Lcom/android/vending/AsynchRequestRunner;)V
    .locals 0
    .parameter "asynchRequestRunner"

    .prologue
    .line 293
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 294
    sput-object p0, Lcom/android/vending/ServiceLocator;->sAsynchRequestRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 295
    return-void
.end method

.method public static setCacheManager(Lcom/android/vending/cache/CacheManager;)V
    .locals 0
    .parameter "cacheManager"

    .prologue
    .line 251
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 252
    sput-object p0, Lcom/android/vending/ServiceLocator;->sCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 253
    return-void
.end method

.method public static setLocalAssetDatabase(Lcom/android/vending/api/LocalAssetDatabase;)V
    .locals 0
    .parameter "localAssetDatabase"

    .prologue
    .line 114
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 116
    sput-object p0, Lcom/android/vending/ServiceLocator;->sLocalAssetDatabase:Lcom/android/vending/api/LocalAssetDatabase;

    .line 117
    return-void
.end method

.method public static setVendingNotificationManager(Lcom/android/vending/VendingNotificationManager;)V
    .locals 0
    .parameter "notificationMgr"

    .prologue
    .line 222
    invoke-static {}, Lcom/android/vending/ServiceLocator;->checkForInitialization()V

    .line 224
    sput-object p0, Lcom/android/vending/ServiceLocator;->sNotificationManager:Lcom/android/vending/VendingNotificationManager;

    .line 225
    return-void
.end method
