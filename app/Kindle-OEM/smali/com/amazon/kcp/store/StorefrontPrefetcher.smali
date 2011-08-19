.class public Lcom/amazon/kcp/store/StorefrontPrefetcher;
.super Ljava/lang/Object;
.source "StorefrontPrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StorefrontPrefetcher$1;,
        Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;,
        Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = null

.field public static final PREFETCHED_STORE_PREFERENCES:Ljava/lang/String; = "StorePrefetch"

.field private static final STORE_FRONT_BASE_URL_KEY:Ljava/lang/String; = "store-front-base-url"

.field private static final STORE_FRONT_HTML_KEY:Ljava/lang/String; = "store-front-html"

.field private static final STORE_FRONT_LAST_ACCESSED_KEY:Ljava/lang/String; = "store-front-last-accessed"

.field private static final STORE_FRONT_URL_KEY:Ljava/lang/String; = "store-front-url"

.field private static final TIME_TO_LIVE:J = 0x5265c00L


# instance fields
.field private final context:Landroid/content/Context;

.field private final cookieJar:Lcom/amazon/kcp/store/CookieJar;

.field private final localeManager:Lcom/amazon/kcp/application/ILocaleManager;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Kindle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/store/CookieJar;Lcom/amazon/kcp/application/ILocaleManager;)V
    .locals 2
    .parameter "context"
    .parameter "cookieJar"
    .parameter "localeManager"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/store/StorefrontPrefetcher;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kcp/store/StorefrontPrefetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/store/CookieJar;Lcom/amazon/kcp/application/ILocaleManager;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/store/CookieJar;Lcom/amazon/kcp/application/ILocaleManager;)V
    .locals 0
    .parameter "context"
    .parameter "userAgent"
    .parameter "cookieJar"
    .parameter "localeManager"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->userAgent:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    .line 195
    iput-object p4, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/StorefrontPrefetcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/StorefrontPrefetcher;)Lcom/amazon/kcp/store/CookieJar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    return-object v0
.end method

.method public static clearPrefretchedStorefront(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 373
    const-string v0, "StorePrefetch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method private isCachedPageValid()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 346
    iget-object v5, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    const-string v6, "StorePrefetch"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 350
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "store-front-last-accessed"

    const-wide/32 v6, -0x5265c00

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 351
    .local v0, lastAccessed:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 353
    .local v2, now:J
    sub-long v5, v2, v0

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    move v5, v9

    goto :goto_0
.end method

.method private saveStoreFrontData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    const-string v1, "StorePrefetch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    const-string v1, "store-front-html"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    const-string v1, "store-front-last-accessed"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 362
    const-string v1, "store-front-url"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v1, "store-front-base-url"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    return-void
.end method


# virtual methods
.method public getStoreFrontBaseUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 325
    iget-object v2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    const-string v3, "StorePrefetch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "store-front-base-url"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, url:Ljava/lang/String;
    invoke-direct {p0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->isCachedPageValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 335
    :cond_0
    return-object v1
.end method

.method public getStoreFrontHtml()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-object v2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    const-string v3, "StorePrefetch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "store-front-html"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, html:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->isCachedPageValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->prefetch()V

    move-object v2, v5

    .line 295
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public getStoreFrontUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 305
    iget-object v2, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    const-string v3, "StorePrefetch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "store-front-url"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, url:Ljava/lang/String;
    invoke-direct {p0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->isCachedPageValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 315
    :cond_0
    return-object v1
.end method

.method public prefetch()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    .local v0, prefetcherThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;-><init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;Lcom/amazon/kcp/store/StorefrontPrefetcher$1;)V

    .line 213
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 214
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v3, "http.useragent"

    iget-object v4, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    const-string v3, "store_cookies"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->cookieJar:Lcom/amazon/kcp/store/CookieJar;

    const-string v3, "store_cookies"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/CookieJar;->getParsedCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 231
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 270
    :goto_1
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "Accept-Language"

    iget-object v4, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    invoke-interface {v4}, Lcom/amazon/kcp/application/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    invoke-interface {v4}, Lcom/amazon/kcp/application/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    new-instance v0, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreResponseHandler;-><init>(Lcom/amazon/kcp/store/StorefrontPrefetcher;Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;)V

    .line 252
    invoke-virtual {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v2, v1, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/kcp/store/StorefrontPrefetcher$StoreRedirectHandler;->lastBaseUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->saveStoreFrontData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontPrefetcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
